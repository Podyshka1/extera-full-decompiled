package org.mvel2.ast;

import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class Negation extends ASTNode {
    private ExecutableStatement stmt;

    public Negation(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        if ((i3 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i, i2, parserContext);
            this.stmt = executableStatement;
            if (executableStatement.getKnownEgressType() == null || ParseTools.boxPrimitive(this.stmt.getKnownEgressType()).isAssignableFrom(Boolean.class)) {
                return;
            }
            Sign$$ExternalSyntheticBUOutline0.m964m("negation operator cannot be applied to non-boolean type", cArr, i);
            throw null;
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(!((Boolean) this.stmt.getValue(obj, obj2, variableResolverFactory)).booleanValue());
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            return Boolean.valueOf(!((Boolean) MVEL.eval(this.expr, this.start, this.offset, obj, variableResolverFactory)).booleanValue());
        } catch (ClassCastException e) {
            Negation$$ExternalSyntheticBUOutline0.m962m("negation operator applied to non-boolean expression", this.expr, this.start, e);
            return null;
        } catch (NullPointerException e2) {
            Negation$$ExternalSyntheticBUOutline0.m962m("negation operator applied to a null value", this.expr, this.start, e2);
            return null;
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    public ExecutableStatement getStatement() {
        return this.stmt;
    }
}
