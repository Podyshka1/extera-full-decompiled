package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.math.MathProcessor;

/* JADX INFO: loaded from: classes5.dex */
public class PreFixIncNode extends ASTNode {
    private String name;

    public PreFixIncNode(String str, ParserContext parserContext) {
        super(parserContext);
        this.name = str;
        if (parserContext != null) {
            this.egressType = parserContext.getVarOrInputType(str);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.name);
        Object objDoOperations = MathProcessor.doOperations(variableResolver.getValue(), 0, 101, 1);
        variableResolver.setValue(objDoOperations);
        return objDoOperations;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }
}
