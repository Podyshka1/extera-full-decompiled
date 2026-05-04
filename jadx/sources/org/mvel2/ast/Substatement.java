package org.mvel2.ast;

import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes.dex */
public class Substatement extends ASTNode {
    private ExecutableStatement statement;

    public Substatement(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.fields = i3;
        if ((i3 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.statement.getValue(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory);
    }

    public ExecutableStatement getStatement() {
        return this.statement;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        ExecutableStatement executableStatement = this.statement;
        if (executableStatement != null) {
            return executableStatement.toString();
        }
        return "(" + new String(this.expr, this.start, this.offset) + ")";
    }
}
