package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessor;
import org.mvel2.asm.signature.SignatureVisitor;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class DeepAssignmentNode extends ASTNode implements Assignment {
    protected CompiledAccExpression acc;
    protected String property;
    protected ExecutableStatement statement;

    @Override // org.mvel2.ast.ASTNode
    public boolean isAssignment() {
        return true;
    }

    @Override // org.mvel2.ast.Assignment
    public boolean isNewDeclaration() {
        return false;
    }

    public DeepAssignmentNode(char[] cArr, int i, int i2, int i3, int i4, String str, ParserContext parserContext) {
        super(parserContext);
        this.fields |= i3 | 2;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        if (i4 != -1) {
            this.property = str;
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(ParseTools.createShortFormOperativeAssignment(str, cArr, i, i2, i4), parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        } else {
            int iFind = ParseTools.find(cArr, i, i2, SignatureVisitor.INSTANCEOF);
            if (iFind != -1) {
                this.property = ParseTools.createStringTrimmed(cArr, i, iFind - i);
                int i5 = iFind + 1;
                int iSkipWhitespace = ParseTools.skipWhitespace(cArr, i5);
                this.start = iSkipWhitespace;
                if (iSkipWhitespace >= i + i2) {
                    throw new CompileException("unexpected end of statement", cArr, i5);
                }
                int i6 = i2 - (iSkipWhitespace - i);
                this.offset = i6;
                if ((i3 & 16) != 0) {
                    this.statement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, iSkipWhitespace, i6, parserContext);
                }
            } else {
                this.property = new String(cArr);
            }
        }
        if ((i3 & 16) != 0) {
            this.acc = (CompiledAccExpression) MVEL.compileSetExpression(this.property.toCharArray(), i, i2, parserContext);
        }
    }

    public DeepAssignmentNode(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        this(cArr, i, i2, i3, -1, null, parserContext);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.statement == null) {
            this.statement = (ExecutableStatement) ParseTools.subCompileExpression(this.expr, this.start, this.offset, this.pCtx);
            this.acc = (CompiledAccExpression) MVEL.compileSetExpression(this.property.toCharArray(), this.statement.getKnownEgressType(), this.pCtx);
        }
        CompiledAccExpression compiledAccExpression = this.acc;
        Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
        compiledAccExpression.setValue(obj, obj2, variableResolverFactory, value);
        return value;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.property;
        Object objEval = MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory);
        PropertyAccessor.set(obj, variableResolverFactory, str, objEval, this.pCtx);
        return objEval;
    }

    @Override // org.mvel2.ast.ASTNode
    public String getAbsoluteName() {
        String str = this.property;
        return str.substring(0, str.indexOf(46));
    }

    @Override // org.mvel2.ast.Assignment
    public String getAssignmentVar() {
        return this.property;
    }

    @Override // org.mvel2.ast.Assignment
    public char[] getExpression() {
        return ParseTools.subArray(this.expr, this.start, this.offset);
    }

    @Override // org.mvel2.ast.Assignment
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }
}
