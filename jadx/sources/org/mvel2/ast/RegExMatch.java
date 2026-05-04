package org.mvel2.ast;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableLiteral;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class RegExMatch extends ASTNode {

    /* JADX INFO: renamed from: p */
    private Pattern f1567p;
    private int patternOffset;
    private int patternStart;
    private ExecutableStatement patternStmt;
    private ExecutableStatement stmt;

    public RegExMatch(char[] cArr, int i, int i2, int i3, int i4, int i5, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        this.patternStart = i4;
        this.patternOffset = i5;
        if ((i3 & 16) != 0) {
            this.stmt = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i4, i5, parserContext);
            this.patternStmt = executableStatement;
            if (executableStatement instanceof ExecutableLiteral) {
                try {
                    this.f1567p = Pattern.compile(String.valueOf(executableStatement.getValue(null, null)));
                } catch (PatternSyntaxException e) {
                    throw new CompileException("bad regular expression", cArr, i4, e);
                }
            }
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Pattern pattern = this.f1567p;
        if (pattern == null) {
            return Boolean.valueOf(Pattern.compile(String.valueOf(this.patternStmt.getValue(obj, obj2, variableResolverFactory))).matcher(String.valueOf(this.stmt.getValue(obj, obj2, variableResolverFactory))).matches());
        }
        return Boolean.valueOf(pattern.matcher(String.valueOf(this.stmt.getValue(obj, obj2, variableResolverFactory))).matches());
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            return Boolean.valueOf(Pattern.compile(String.valueOf(MVEL.eval(this.expr, this.patternStart, this.patternOffset, obj, variableResolverFactory))).matcher(String.valueOf(MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory))).matches());
        } catch (PatternSyntaxException e) {
            throw new CompileException("bad regular expression", this.expr, this.patternStart, e);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    public Pattern getPattern() {
        return this.f1567p;
    }

    public ExecutableStatement getStatement() {
        return this.stmt;
    }

    public ExecutableStatement getPatternStatement() {
        return this.patternStmt;
    }
}
