package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class Union implements Accessor {
    private Accessor accessor;
    private Accessor nextAccessor;
    private char[] nextExpr;
    private int offset;
    private ParserContext pCtx;
    private int start;

    public Union(ParserContext parserContext, Accessor accessor, char[] cArr, int i, int i2) {
        this.accessor = accessor;
        this.start = i;
        this.offset = i2;
        this.nextExpr = cArr;
        this.pCtx = parserContext;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Accessor accessor = this.nextAccessor;
        if (accessor == null) {
            return get(obj, obj2, variableResolverFactory);
        }
        return accessor.getValue(get(obj, obj2, variableResolverFactory), obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextAccessor.setValue(get(obj, obj2, variableResolverFactory), obj2, variableResolverFactory, obj3);
    }

    private Object get(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Accessor accessor = this.nextAccessor;
        Accessor accessor2 = this.accessor;
        if (accessor == null) {
            Object value = accessor2.getValue(obj, obj2, variableResolverFactory);
            AccessorOptimizer defaultAccessorCompiler = OptimizerFactory.getDefaultAccessorCompiler();
            this.nextAccessor = defaultAccessorCompiler.optimizeAccessor(this.pCtx, this.nextExpr, this.start, this.offset, value, obj2, variableResolverFactory, false, this.accessor.getKnownEgressType());
            return defaultAccessorCompiler.getResultOptPass();
        }
        return accessor2.getValue(obj, obj2, variableResolverFactory);
    }

    public Class getLeftIngressType() {
        return this.accessor.getKnownEgressType();
    }

    @Override // org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return this.nextAccessor.getKnownEgressType();
    }
}
