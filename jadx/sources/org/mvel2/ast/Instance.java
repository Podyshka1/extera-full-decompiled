package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.CompilerTools;

/* JADX INFO: loaded from: classes5.dex */
public class Instance extends ASTNode {
    private ASTNode clsStmt;
    private ASTNode stmt;

    public Instance(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.stmt = aSTNode;
        this.clsStmt = aSTNode2;
        CompilerTools.expectType(parserContext, aSTNode2, Class.class, true);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(((Class) this.clsStmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory)).isInstance(this.stmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory)));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            Class cls = (Class) this.clsStmt.getReducedValue(obj, obj2, variableResolverFactory);
            if (cls == null) {
                throw new ClassCastException();
            }
            return Boolean.valueOf(cls.isInstance(this.stmt.getReducedValue(obj, obj2, variableResolverFactory)));
        } catch (ClassCastException unused) {
            throw new RuntimeException("not a class reference: " + this.clsStmt.getName());
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    public ASTNode getStatement() {
        return this.stmt;
    }

    public ASTNode getClassStatement() {
        return this.clsStmt;
    }
}
