package org.mvel2.ast;

import okhttp3.internal.url._UrlKt;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessor;
import org.mvel2.compiler.Accessor;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AccessorOptimizer;
import org.mvel2.optimizers.OptimizerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class Union extends ASTNode {
    private transient Accessor accessor;
    private ASTNode main;

    public Union(char[] cArr, int i, int i2, int i3, ASTNode aSTNode, ParserContext parserContext) {
        super(cArr, i, i2, i3, parserContext);
        this.main = aSTNode;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Accessor accessor = this.accessor;
        if (accessor != null) {
            return accessor.getValue(this.main.getReducedValueAccelerated(obj, obj2, variableResolverFactory), obj2, variableResolverFactory);
        }
        try {
            AccessorOptimizer threadAccessorOptimizer = OptimizerFactory.getThreadAccessorOptimizer();
            this.accessor = threadAccessorOptimizer.optimizeAccessor(this.pCtx, this.expr, this.start, this.offset, this.main.getReducedValueAccelerated(obj, obj2, variableResolverFactory), obj2, variableResolverFactory, false, this.main.getEgressType());
            return threadAccessorOptimizer.getResultOptPass();
        } finally {
            OptimizerFactory.clearThreadAccessorOptimizer();
        }
    }

    public ASTNode getMain() {
        return this.main;
    }

    @Override // org.mvel2.ast.ASTNode
    public Accessor getAccessor() {
        return this.accessor;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return PropertyAccessor.get(this.expr, this.start, this.offset, this.main.getReducedValue(obj, obj2, variableResolverFactory), variableResolverFactory, obj2, this.pCtx);
    }

    public Class getLeftEgressType() {
        return this.main.getEgressType();
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        StringBuilder sb = new StringBuilder();
        ASTNode aSTNode = this.main;
        String string = _UrlKt.FRAGMENT_ENCODE_SET;
        sb.append(aSTNode != null ? aSTNode.toString() : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append("-[union]->");
        Accessor accessor = this.accessor;
        if (accessor != null) {
            string = accessor.toString();
        }
        sb.append(string);
        return sb.toString();
    }
}
