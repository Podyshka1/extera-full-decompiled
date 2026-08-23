package org.mvel2.ast;

import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.asm.signature.SignatureVisitor;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class TypedVarNode extends ASTNode implements Assignment {
    private String name;
    private ExecutableStatement statement;

    @Override // org.mvel2.ast.Assignment
    public boolean isNewDeclaration() {
        return true;
    }

    public TypedVarNode(char[] cArr, int i, int i2, int i3, Class cls, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.fields = i3;
        this.start = i;
        this.offset = i2;
        this.expr = cArr;
        int iFind = ParseTools.find(cArr, i, i2, SignatureVisitor.INSTANCEOF);
        if (iFind != -1) {
            int i4 = iFind - i;
            String strCreateStringTrimmed = ParseTools.createStringTrimmed(cArr, i, i4);
            this.name = strCreateStringTrimmed;
            ParseTools.checkNameSafety(strCreateStringTrimmed);
            int i5 = this.offset - i4;
            this.offset = i5;
            int i6 = iFind + 1;
            this.start = i6;
            i3 |= 128;
            if ((i3 & 16) != 0) {
                this.statement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i6, i5, parserContext);
            }
        } else {
            String str = new String(cArr, i, i2);
            this.name = str;
            ParseTools.checkNameSafety(str);
        }
        if ((i3 & 16) != 0) {
            Class varOrInputType = parserContext.getVarOrInputType(this.name);
            if (varOrInputType != null && varOrInputType != Object.class && !varOrInputType.isAssignableFrom(this.egressType)) {
                throw new RuntimeException("statically-typed variable already defined in scope: " + this.name);
            }
            parserContext.addVariable(this.name, this.egressType, false);
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
