package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.math.MathProcessor;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedPostFixIncNode extends ASTNode {
    private int register;

    public IndexedPostFixIncNode(int i, ParserContext parserContext) {
        super(parserContext);
        this.register = i;
        this.egressType = parserContext.getVarOrInputType(parserContext.getIndexedVarNames()[i]);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object value = indexedVariableResolver.getValue();
        indexedVariableResolver.setValue(MathProcessor.doOperations(value, 0, 101, 1));
        return value;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }
}
