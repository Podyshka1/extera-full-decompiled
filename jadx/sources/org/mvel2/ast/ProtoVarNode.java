package org.mvel2.ast;

import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.asm.signature.SignatureVisitor;
import org.mvel2.ast.Proto;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class ProtoVarNode extends ASTNode implements Assignment {
    private String name;
    private ExecutableStatement statement;

    @Override // org.mvel2.ast.Assignment
    public boolean isNewDeclaration() {
        return true;
    }

    public ProtoVarNode(char[] cArr, int i, int i2, int i3, Proto proto, ParserContext parserContext) {
        super(parserContext);
        this.egressType = Proto.ProtoInstance.class;
        this.start = i;
        this.offset = i2;
        this.fields = i3;
        this.expr = cArr;
        int iFind = ParseTools.find(cArr, i, i2, SignatureVisitor.INSTANCEOF);
        if (iFind != -1) {
            String strCreateStringTrimmed = ParseTools.createStringTrimmed(cArr, 0, iFind);
            this.name = strCreateStringTrimmed;
            ParseTools.checkNameSafety(strCreateStringTrimmed);
            i3 |= 128;
            if ((i3 & 16) != 0) {
                this.statement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, iFind + 1, i2, parserContext);
            }
        } else {
            String str = new String(cArr, i, i2);
            this.name = str;
            ParseTools.checkNameSafety(str);
        }
        if ((i3 & 16) != 0) {
            parserContext.addVariable(this.name, this.egressType, true);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.statement == null) {
            this.statement = (ExecutableStatement) ParseTools.subCompileExpression(this.expr, this.start, this.offset, this.pCtx);
        }
        String str = this.name;
        Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
        variableResolverFactory.createVariable(str, value, this.egressType);
        return value;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.name;
        Object objEval = MVEL.eval(this.expr, this.start, this.offset, obj2, variableResolverFactory);
        variableResolverFactory.createVariable(str, objEval, this.egressType);
        return objEval;
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
        return this.expr;
    }

    @Override // org.mvel2.ast.Assignment
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }
}
