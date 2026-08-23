package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.MVELInterpretedRuntime;
import org.mvel2.ParserContext;
import org.mvel2.PropertyAccessor;
import org.mvel2.asm.signature.SignatureVisitor;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ArrayTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class AssignmentNode extends ASTNode implements Assignment {
    private transient CompiledAccExpression accExpr;
    private String assignmentVar;
    private boolean col;
    private String index;
    private char[] indexTarget;
    private ExecutableStatement statement;
    private String varName;

    @Override // org.mvel2.ast.Assignment
    public boolean isNewDeclaration() {
        return false;
    }

    public AssignmentNode(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.col = false;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        int iFind = ParseTools.find(cArr, i, i2, SignatureVisitor.INSTANCEOF);
        if (iFind != -1) {
            String strCreateStringTrimmed = ParseTools.createStringTrimmed(cArr, i, iFind - i);
            this.varName = strCreateStringTrimmed;
            this.assignmentVar = strCreateStringTrimmed;
            int i4 = iFind + 1;
            int iSkipWhitespace = ParseTools.skipWhitespace(cArr, i4);
            this.start = iSkipWhitespace;
            if (iSkipWhitespace >= i + i2) {
                throw new CompileException("unexpected end of statement", cArr, i4);
            }
            int i5 = i2 - (iSkipWhitespace - i);
            this.offset = i5;
            if ((i3 & 16) != 0) {
                ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, iSkipWhitespace, i5, parserContext);
                this.statement = executableStatement;
                this.egressType = executableStatement.getKnownEgressType();
            }
            int length = this.varName.length();
            char[] charArray = this.varName.toCharArray();
            this.indexTarget = charArray;
            int iFindFirst = ArrayTools.findFirst('[', 0, length, charArray);
            this.endOfName = iFindFirst;
            boolean z = iFindFirst > 0;
            this.col = z;
            if (z) {
                int i6 = this.fields | 256;
                this.fields = i6;
                if ((i6 & 16) != 0) {
                    this.accExpr = (CompiledAccExpression) MVEL.compileSetExpression(this.indexTarget, parserContext);
                }
                this.varName = new String(cArr, i, this.endOfName);
                char[] cArr2 = this.indexTarget;
                int i7 = this.endOfName;
                this.index = new String(cArr2, i7, cArr2.length - i7);
            }
            try {
                ParseTools.checkNameSafety(this.varName);
            } catch (RuntimeException e) {
                throw new CompileException(e.getMessage(), cArr, i);
            }
        } else {
            try {
                String str = new String(cArr, i, i2);
                this.varName = str;
                ParseTools.checkNameSafety(str);
                this.assignmentVar = this.varName;
            } catch (RuntimeException e2) {
                throw new CompileException(e2.getMessage(), cArr, i);
            }
        }
        if ((i3 & 16) != 0) {
            parserContext.addVariable(this.varName, this.egressType);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        char[] cArr;
        if (this.accExpr == null && (cArr = this.indexTarget) != null) {
            this.accExpr = (CompiledAccExpression) MVEL.compileSetExpression(cArr);
        }
        if (this.col) {
            return this.accExpr.setValue(obj, obj2, variableResolverFactory, this.statement.getValue(obj, obj2, variableResolverFactory));
        }
        ExecutableStatement executableStatement = this.statement;
        if (executableStatement != null) {
            if (variableResolverFactory == null) {
                throw new CompileException("cannot assign variables; no variable resolver factory available", this.expr, this.start);
            }
            return variableResolverFactory.createVariable(this.varName, executableStatement.getValue(obj, obj2, variableResolverFactory)).getValue();
        }
        if (variableResolverFactory == null) {
            throw new CompileException("cannot assign variables; no variable resolver factory available", this.expr, this.start);
        }
        variableResolverFactory.createVariable(this.varName, null);
        return null;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ParseTools.checkNameSafety(this.varName);
        MVELInterpretedRuntime mVELInterpretedRuntime = new MVELInterpretedRuntime(this.expr, this.start, this.offset, obj, variableResolverFactory, this.pCtx);
        if (this.col) {
            Object value = variableResolverFactory.getVariableResolver(this.varName).getValue();
            String str = this.index;
            Object obj3 = mVELInterpretedRuntime.parse();
            PropertyAccessor.set(value, variableResolverFactory, str, obj3, this.pCtx);
            return obj3;
        }
        return variableResolverFactory.createVariable(this.varName, mVELInterpretedRuntime.parse()).getValue();
    }

    @Override // org.mvel2.ast.Assignment
    public String getAssignmentVar() {
        return this.assignmentVar;
    }

    @Override // org.mvel2.ast.Assignment
    public char[] getExpression() {
        return ParseTools.subset(this.expr, this.start, this.offset);
    }

    @Override // org.mvel2.ast.Assignment
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return this.assignmentVar + " = " + new String(this.expr, this.start, this.offset);
    }
}
