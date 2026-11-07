package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledAccExpression implements ExecutableStatement, Serializable {
    private transient Accessor accessor;
    private ParserContext context;
    private char[] expression;
    private Class ingressType;
    private int offset;
    private int start;

    @Override // org.mvel2.compiler.ExecutableStatement
    public void computeTypeConversionRule() {
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.Accessor
    public Class getKnownEgressType() {
        return null;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean intOptimized() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isConvertableIngressEgress() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isExplicitCast() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isLiteralOnly() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownEgressType(Class cls) {
    }

    public CompiledAccExpression(char[] cArr, Class cls, ParserContext parserContext) {
        this(cArr, 0, cArr.length, cls, parserContext);
    }

    public CompiledAccExpression(char[] cArr, int i, int i2, Class cls, ParserContext parserContext) {
        this.expression = cArr;
        this.start = i;
        this.offset = i2;
        this.context = parserContext;
        this.ingressType = cls == null ? Object.class : cls;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        Accessor accessor = this.accessor;
        if (accessor == null) {
            if (this.ingressType == Object.class && obj3 != null) {
                this.ingressType = obj3.getClass();
            }
            AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
            ParserContext parserContext = this.context;
            char[] cArr = this.expression;
            this.accessor = threadAccessorOptimizer.optimizeSetAccessor(parserContext, cArr, 0, cArr.length, obj, obj, variableResolverFactory, false, obj3, this.ingressType);
            return obj3;
        }
        accessor.setValue(obj, obj2, variableResolverFactory, obj3);
        return obj3;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        Accessor accessor = this.accessor;
        if (accessor == null) {
            try {
                AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
                ParserContext parserContext = this.context;
                char[] cArr = this.expression;
                this.accessor = threadAccessorOptimizer.optimizeAccessor(parserContext, cArr, 0, cArr.length, obj, obj, variableResolverFactory, false, this.ingressType);
                return getValue(obj, variableResolverFactory);
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
        }
        return accessor.getValue(obj, obj, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownIngressType(Class cls) {
        this.ingressType = cls;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Class getKnownIngressType() {
        return this.ingressType;
    }

    @Override // org.mvel2.compiler.Accessor
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Accessor accessor = this.accessor;
        if (accessor == null) {
            try {
                this.accessor = OptimizerFactory.getThreadAccessorOptimizer().optimizeAccessor(this.context, this.expression, this.start, this.offset, obj, obj2, variableResolverFactory, false, this.ingressType);
                return getValue(obj, obj2, variableResolverFactory);
            } finally {
                OptimizerFactory.clearThreadAccessorOptimizer();
            }
        }
        return accessor.getValue(obj, obj2, variableResolverFactory);
    }

    public Accessor getAccessor() {
        return this.accessor;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isEmptyStatement() {
        return this.accessor == null;
    }
}
