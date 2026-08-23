package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.CompilerTools;
import org.mvel2.util.Soundex;

/* JADX INFO: loaded from: classes5.dex */
public class Soundslike extends ASTNode {
    private ASTNode soundslike;
    private ASTNode stmt;

    public Soundslike(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.stmt = aSTNode;
        this.soundslike = aSTNode2;
        CompilerTools.expectType(parserContext, aSTNode2, String.class, true);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String strValueOf = String.valueOf(this.soundslike.getReducedValueAccelerated(obj, obj2, variableResolverFactory));
        String str = (String) this.stmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
        return Boolean.valueOf(str == null ? false : Soundex.soundex(strValueOf).equals(Soundex.soundex(str)));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            String strValueOf = String.valueOf(this.soundslike.getReducedValue(obj, obj2, variableResolverFactory));
            String str = (String) this.stmt.getReducedValue(obj, obj2, variableResolverFactory);
            if (str == null) {
                throw new CompileException("not a string: " + this.stmt.getName(), this.stmt.getExpr(), this.stmt.getStart());
            }
            return Boolean.valueOf(Soundex.soundex(strValueOf).equals(Soundex.soundex(str)));
        } catch (ClassCastException unused) {
            throw new CompileException("not a string: " + this.soundslike.getName(), this.soundslike.getExpr(), this.soundslike.getStart());
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    public ASTNode getStatement() {
        return this.stmt;
    }

    public ASTNode getSoundslike() {
        return this.soundslike;
    }
}
