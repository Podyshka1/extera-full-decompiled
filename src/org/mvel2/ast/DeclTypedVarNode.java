package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class DeclTypedVarNode extends ASTNode implements Assignment {
    private String name;

    @Override // org.mvel2.ast.ASTNode
    public boolean isAssignment() {
        return true;
    }

    @Override // org.mvel2.ast.Assignment
    public boolean isNewDeclaration() {
        return true;
    }

    public DeclTypedVarNode(String str, char[] cArr, int i, int i2, Class cls, int i3, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.name = str;
        ParseTools.checkNameSafety(str);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        if ((i3 & 16) != 0) {
            parserContext.addVariable(str, this.egressType, true);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        boolean zIsResolveable = variableResolverFactory.isResolveable(this.name);
        String str = this.name;
        if (!zIsResolveable) {
            variableResolverFactory.createVariable(str, null, this.egressType);
            return null;
        }
        Sign$$ExternalSyntheticBUOutline0.m868m("variable defined within scope: " + str, this.expr, this.start);
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        boolean zIsResolveable = variableResolverFactory.isResolveable(this.name);
        String str = this.name;
        if (!zIsResolveable) {
            variableResolverFactory.createVariable(str, null, this.egressType);
            return null;
        }
        Sign$$ExternalSyntheticBUOutline0.m868m("variable defined within scope: " + str, this.expr, this.start);
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public String getName() {
        return this.name;
    }

    @Override // org.mvel2.ast.Assignment
    public String getAssignmentVar() {
        return this.name;
    }

    @Override // org.mvel2.ast.Assignment
    public char[] getExpression() {
        return new char[0];
    }

    @Override // org.mvel2.ast.Assignment
    public void setValueStatement(ExecutableStatement executableStatement) {
        throw new RuntimeException("illegal operation");
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return "var:" + this.name;
    }
}
