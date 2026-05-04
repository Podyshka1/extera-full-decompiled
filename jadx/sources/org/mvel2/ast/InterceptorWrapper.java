package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.Interceptor;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class InterceptorWrapper extends ASTNode {
    private Interceptor interceptor;
    private ASTNode node;

    public InterceptorWrapper(Interceptor interceptor, ASTNode aSTNode, ParserContext parserContext) {
        super(parserContext);
        this.interceptor = interceptor;
        this.node = aSTNode;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        this.interceptor.doBefore(this.node, variableResolverFactory);
        Interceptor interceptor = this.interceptor;
        Object reducedValueAccelerated = this.node.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
        interceptor.doAfter(reducedValueAccelerated, this.node, variableResolverFactory);
        return reducedValueAccelerated;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        this.interceptor.doBefore(this.node, variableResolverFactory);
        Interceptor interceptor = this.interceptor;
        Object reducedValue = this.node.getReducedValue(obj, obj2, variableResolverFactory);
        interceptor.doAfter(reducedValue, this.node, variableResolverFactory);
        return reducedValue;
    }
}
