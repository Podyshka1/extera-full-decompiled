package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class EndOfStatement extends ASTNode {
    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isOperator() {
        return true;
    }

    public EndOfStatement(ParserContext parserContext) {
        super(parserContext);
        this.literal = getOperator();
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isOperator(Integer num) {
        return num.intValue() == 37;
    }

    @Override // org.mvel2.ast.ASTNode
    public Integer getOperator() {
        return 37;
    }
}
