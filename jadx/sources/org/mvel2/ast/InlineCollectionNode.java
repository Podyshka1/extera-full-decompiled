package org.mvel2.ast;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizerFactory;
import org.mvel2.util.CollectionParser;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class InlineCollectionNode extends ASTNode {
    private Object collectionGraph;
    int trailingOffset;
    int trailingStart;

    public InlineCollectionNode(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(cArr, i, i2, i3 | 1024, parserContext);
        if ((i3 & 16) != 0) {
            parseGraph(true, null, parserContext);
            try {
                AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
                this.accessor = threadAccessorOptimizer.optimizeCollection(parserContext, this.collectionGraph, this.egressType, cArr, this.trailingStart, this.trailingOffset, null, null, null);
                this.egressType = threadAccessorOptimizer.getEgressType();
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
        }
    }

    public InlineCollectionNode(char[] cArr, int i, int i2, int i3, Class cls, ParserContext parserContext) {
        super(cArr, i, i2, i3 | 1024, parserContext);
        this.egressType = cls;
        if ((i3 & 16) != 0) {
            try {
                parseGraph(true, cls, parserContext);
                AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
                this.accessor = threadAccessorOptimizer.optimizeCollection(parserContext, this.collectionGraph, this.egressType, cArr, this.trailingStart, this.trailingOffset, null, null, null);
                this.egressType = threadAccessorOptimizer.getEgressType();
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.accessor != null) {
            return this.accessor.getValue(obj, obj2, variableResolverFactory);
        }
        try {
            AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
            if (this.collectionGraph == null) {
                parseGraph(true, null, null);
            }
            this.accessor = threadAccessorOptimizer.optimizeCollection(this.pCtx, this.collectionGraph, this.egressType, this.expr, this.trailingStart, this.trailingOffset, obj, obj2, variableResolverFactory);
            this.egressType = threadAccessorOptimizer.getEgressType();
            Object value = this.accessor.getValue(obj, obj2, variableResolverFactory);
            OptimizerFactory.clearThreadAccessorOptimizer();
            return value;
        } catch (Throwable th) {
            OptimizerFactory.clearThreadAccessorOptimizer();
            throw th;
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        parseGraph(false, this.egressType, this.pCtx);
        return execGraph(this.collectionGraph, this.egressType, obj, variableResolverFactory);
    }

    private void parseGraph(boolean z, Class cls, ParserContext parserContext) {
        CollectionParser collectionParser = new CollectionParser();
        if (cls == null) {
            this.collectionGraph = ((List) collectionParser.parseCollection(this.expr, this.start, this.offset, z, parserContext)).get(0);
        } else {
            this.collectionGraph = ((List) collectionParser.parseCollection(this.expr, this.start, this.offset, z, cls, parserContext)).get(0);
        }
        int cursor = collectionParser.getCursor() + 2;
        this.trailingStart = cursor;
        this.trailingOffset = this.offset - (cursor - this.start);
        if (this.egressType == null) {
            this.egressType = this.collectionGraph.getClass();
        }
    }

    private Object execGraph(Object obj, Class cls, Object obj2, VariableResolverFactory variableResolverFactory) {
        int i;
        Class clsFindClass;
        if (obj instanceof List) {
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(execGraph(it.next(), cls, obj2, variableResolverFactory));
            }
            return arrayList;
        }
        if (obj instanceof Map) {
            HashMap map = new HashMap();
            Map map2 = (Map) obj;
            for (Object obj3 : map2.keySet()) {
                map.put(execGraph(obj3, cls, obj2, variableResolverFactory), execGraph(map2.get(obj3), cls, obj2, variableResolverFactory));
            }
            return map;
        }
        if (obj instanceof Object[]) {
            int i2 = 0;
            if (cls != null) {
                i = 0;
                while (cls.getName().charAt(i) == '[') {
                    i++;
                }
            } else {
                cls = Object[].class;
                i = 1;
            }
            Object objNewInstance = Array.newInstance((Class<?>) ParseTools.getSubComponentType(cls), ((Object[]) obj).length);
            if (i > 1) {
                try {
                    clsFindClass = ParseTools.findClass(null, ParseTools.repeatChar('[', i - 1) + "L" + ParseTools.getBaseComponentType(cls).getName() + ";", this.pCtx);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException("this error should never throw:" + ParseTools.getBaseComponentType(cls).getName(), e);
                } catch (IllegalArgumentException e2) {
                    throw new CompileException("type mismatch in array", this.expr, this.start, e2);
                }
            } else {
                clsFindClass = cls;
            }
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            int i3 = 0;
            while (i2 < length) {
                int i4 = i3 + 1;
                Array.set(objNewInstance, i3, execGraph(objArr[i2], clsFindClass, obj2, variableResolverFactory));
                i2++;
                i3 = i4;
            }
            return objNewInstance;
        }
        if (cls.isArray()) {
            return MVEL.eval((String) obj, obj2, variableResolverFactory, ParseTools.getBaseComponentType(cls));
        }
        return MVEL.eval((String) obj, obj2, variableResolverFactory);
    }
}
