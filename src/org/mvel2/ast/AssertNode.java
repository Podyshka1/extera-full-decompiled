package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class AssertNode extends ASTNode {
    public ExecutableStatement assertion;
    public ExecutableStatement fail;

    public AssertNode(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        if ((i3 & 16) != 0) {
            this.assertion = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            if (!((Boolean) this.assertion.getValue(obj, obj2, variableResolverFactory)).booleanValue()) {
                throw new AssertionError("assertion failed in expression: " + new String(this.expr, this.start, this.offset));
            }
            return Boolean.TRUE;
        } catch (ClassCastException unused) {
            throw new CompileException("assertion does not contain a boolean statement", this.expr, this.start);
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            if (!((Boolean) MVEL.eval(this.expr, obj, variableResolverFactory)).booleanValue()) {
                throw new AssertionError("assertion failed in expression: " + new String(this.expr, this.start, this.offset));
            }
            return Boolean.TRUE;
        } catch (ClassCastException unused) {
            throw new CompileException("assertion does not contain a boolean statement", this.expr, this.start);
        }
    }
}
