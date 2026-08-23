package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class LiteralDeepPropertyNode extends ASTNode {
    private Object literal;

    public LiteralDeepPropertyNode(char[] cArr, int i, int i2, int i3, Object obj, ParserContext parserContext) {
        super(parserContext);
        this.fields = i3;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.literal = obj;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.accessor != null) {
            return this.accessor.getValue(this.literal, obj2, variableResolverFactory);
        }
        try {
            AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
            this.accessor = threadAccessorOptimizer.optimizeAccessor(this.pCtx, this.expr, this.start, this.offset, this.literal, obj2, variableResolverFactory, false, null);
            return threadAccessorOptimizer.getResultOptPass();
        } finally {
            OptimizerFactory.clearThreadAccessorOptimizer();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return PropertyAccessor.get(this.expr, this.start, this.offset, this.literal, variableResolverFactory, obj2, this.pCtx);
    }
}
