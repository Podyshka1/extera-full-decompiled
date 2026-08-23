package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.asm.signature.SignatureVisitor;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ArrayTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class IndexedAssignmentNode extends ASTNode implements Assignment {
    private transient CompiledAccExpression accExpr;
    private String assignmentVar;
    private boolean col;
    private char[] index;
    private char[] indexTarget;
    private String name;
    private int register;
    private ExecutableStatement statement;
    private char[] stmt;

    @Override // org.mvel2.ast.ASTNode
    public boolean isAssignment() {
        return true;
    }

    @Override // org.mvel2.ast.Assignment
    public boolean isNewDeclaration() {
        return false;
    }

    public IndexedAssignmentNode(char[] cArr, int i, int i2, int i3, int i4, String str, int i5, ParserContext parserContext) {
        super(parserContext);
        this.col = false;
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.register = i5;
        if (i4 != -1) {
            this.name = str;
            ParseTools.checkNameSafety(str);
            char[] cArrCreateShortFormOperativeAssignment = ParseTools.createShortFormOperativeAssignment(str, cArr, i, i2, i4);
            this.stmt = cArrCreateShortFormOperativeAssignment;
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArrCreateShortFormOperativeAssignment, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        } else {
            int iFind = ParseTools.find(cArr, i, i2, SignatureVisitor.INSTANCEOF);
            if (iFind != -1) {
                this.name = ParseTools.createStringTrimmed(cArr, i, iFind - i);
                this.assignmentVar = str;
                int i6 = iFind + 1;
                int iSkipWhitespace = ParseTools.skipWhitespace(cArr, i6);
                this.start = iSkipWhitespace;
                if (iSkipWhitespace >= i + i2) {
                    throw new CompileException("unexpected end of statement", cArr, i6);
                }
                int i7 = i2 - (iSkipWhitespace - i);
                this.offset = i7;
                this.stmt = ParseTools.subset(cArr, iSkipWhitespace, i7);
                ExecutableStatement executableStatement2 = (ExecutableStatement) ParseTools.subCompileExpression(cArr, this.start, this.offset, parserContext);
                this.statement = executableStatement2;
                this.egressType = executableStatement2.getKnownEgressType();
                int length = this.name.length();
                char[] charArray = this.name.toCharArray();
                this.indexTarget = charArray;
                short sFindFirst = (short) ArrayTools.findFirst('[', 0, length, charArray);
                this.endOfName = sFindFirst;
                boolean z = sFindFirst > 0;
                this.col = z;
                if (z) {
                    int i8 = this.fields | 256;
                    this.fields = i8;
                    if ((i8 & 16) != 0) {
                        this.accExpr = (CompiledAccExpression) MVEL.compileSetExpression(this.indexTarget, parserContext);
                    }
                    this.name = this.name.substring(0, this.endOfName);
                    char[] cArr2 = this.indexTarget;
                    int i9 = this.endOfName;
                    this.index = ParseTools.subset(cArr2, i9, cArr2.length - i9);
                }
                ParseTools.checkNameSafety(this.name);
            } else {
                String str2 = new String(cArr);
                this.name = str2;
                ParseTools.checkNameSafety(str2);
                this.assignmentVar = str;
            }
        }
        if ((i3 & 16) != 0) {
            parserContext.addVariable(str, this.egressType);
        }
    }

    public IndexedAssignmentNode(char[] cArr, int i, int i2, int i3, int i4, ParserContext parserContext) {
        this(cArr, i, i2, i3, -1, null, i4, parserContext);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        char[] cArr;
        if (this.accExpr == null && (cArr = this.indexTarget) != null) {
            this.accExpr = (CompiledAccExpression) MVEL.compileSetExpression(cArr);
        }
        if (this.col) {
            CompiledAccExpression compiledAccExpression = this.accExpr;
            Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
            compiledAccExpression.setValue(obj, obj2, variableResolverFactory, value);
            return value;
        }
        if (this.statement != null) {
            if (variableResolverFactory.isIndexedFactory()) {
                int i = this.register;
                String str = this.name;
                Object value2 = this.statement.getValue(obj, obj2, variableResolverFactory);
                variableResolverFactory.createIndexedVariable(i, str, value2);
                return value2;
            }
            String str2 = this.name;
            Object value3 = this.statement.getValue(obj, obj2, variableResolverFactory);
            variableResolverFactory.createVariable(str2, value3);
            return value3;
        }
        if (variableResolverFactory.isIndexedFactory()) {
            variableResolverFactory.createIndexedVariable(this.register, this.name, null);
            return Void.class;
        }
        variableResolverFactory.createVariable(this.name, this.statement.getValue(obj, obj2, variableResolverFactory));
        return Void.class;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ParseTools.checkNameSafety(this.name);
        if (this.col) {
            Object value = variableResolverFactory.getIndexedVariableResolver(this.register).getValue();
            String str = new String(this.index);
            Object objEval = MVEL.eval(this.stmt, obj, variableResolverFactory);
            MVEL.setProperty(value, str, objEval);
            return objEval;
        }
        int i = this.register;
        String str2 = this.name;
        Object objEval2 = MVEL.eval(this.stmt, obj, variableResolverFactory);
        variableResolverFactory.createIndexedVariable(i, str2, objEval2);
        return objEval2;
    }

    @Override // org.mvel2.ast.Assignment
    public String getAssignmentVar() {
        return this.assignmentVar;
    }

    public String getVarName() {
        return this.name;
    }

    @Override // org.mvel2.ast.Assignment
    public char[] getExpression() {
        return this.stmt;
    }

    public int getRegister() {
        return this.register;
    }

    public void setRegister(int i) {
        this.register = i;
    }

    @Override // org.mvel2.ast.ASTNode
    public String getAbsoluteName() {
        return this.name;
    }

    @Override // org.mvel2.ast.Assignment
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }
}
