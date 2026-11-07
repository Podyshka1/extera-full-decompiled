package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.Accessor;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class Invert extends ASTNode {
    private ExecutableStatement stmt;

    public Invert(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        if ((i3 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.stmt = executableStatement;
            CompilerTools.expectType(parserContext, (Accessor) executableStatement, Integer.class, true);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Integer.valueOf(~((Integer) this.stmt.getValue(obj, obj2, variableResolverFactory)).intValue());
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object objEval = MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory);
        if (objEval instanceof Integer) {
            return Integer.valueOf(~((Integer) objEval).intValue());
        }
        throw new CompileException("was expecting type: Integer; but found type: ".concat(objEval == null ? "null" : objEval.getClass().getName()), this.expr, this.start);
    }
}
