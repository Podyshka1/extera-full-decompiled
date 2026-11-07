package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedDeclTypedVarNode extends ASTNode implements Assignment {
    private int register;

    @Override // org.mvel2.ast.Assignment
    public String getAssignmentVar() {
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isAssignment() {
        return true;
    }

    @Override // org.mvel2.ast.Assignment
    public boolean isNewDeclaration() {
        return true;
    }

    public IndexedDeclTypedVarNode(int i, int i2, int i3, Class cls, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.start = i2;
        this.offset = i3;
        this.register = i;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createIndexedVariable(this.register, null, this.egressType);
        return obj;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createIndexedVariable(this.register, null, this.egressType);
        return null;
    }

    @Override // org.mvel2.ast.Assignment
    public char[] getExpression() {
        return new char[0];
    }

    @Override // org.mvel2.ast.Assignment
    public void setValueStatement(ExecutableStatement executableStatement) {
        throw new RuntimeException("illegal operation");
    }
}
