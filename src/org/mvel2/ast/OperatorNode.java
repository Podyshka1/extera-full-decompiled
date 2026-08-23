package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.debug.DebugTools;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes.dex */
public class OperatorNode extends ASTNode {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Integer operator;

    @Override // org.mvel2.ast.ASTNode
    public boolean isOperator() {
        return true;
    }

    public OperatorNode(Integer num, char[] cArr, int i, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.operator = num;
        this.literal = num;
        this.start = i;
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isOperator(Integer num) {
        return num.equals(this.operator);
    }

    @Override // org.mvel2.ast.ASTNode
    public Integer getOperator() {
        return this.operator;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new CompileException("illegal use of operator: " + DebugTools.getOperatorSymbol(this.operator.intValue()), this.expr, this.start);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new CompileException("illegal use of operator: " + DebugTools.getOperatorSymbol(this.operator.intValue()), this.expr, this.start);
    }
}
