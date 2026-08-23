package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.math.MathProcessor;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedPreFixIncNode extends ASTNode {
    private int register;

    public IndexedPreFixIncNode(int i, ParserContext parserContext) {
        super(parserContext);
        this.register = i;
        this.egressType = parserContext.getVarOrInputType(parserContext.getIndexedVarNames()[i]);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object objDoOperations = MathProcessor.doOperations(indexedVariableResolver.getValue(), 0, 101, 1);
        indexedVariableResolver.setValue(objDoOperations);
        return objDoOperations;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }
}
