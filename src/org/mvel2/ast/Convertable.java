package org.mvel2.ast;

import org.mvel2.DataConversion;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.CompilerTools;

/* JADX INFO: loaded from: classes5.dex */
public class Convertable extends ASTNode {
    private ASTNode clsStmt;
    private ASTNode stmt;

    public Convertable(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.stmt = aSTNode;
        this.clsStmt = aSTNode2;
        CompilerTools.expectType(parserContext, aSTNode2, Class.class, true);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object reducedValueAccelerated = this.stmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
        return Boolean.valueOf(reducedValueAccelerated != null && DataConversion.canConvert((Class) this.clsStmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory), reducedValueAccelerated.getClass()));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            Object reducedValue = this.stmt.getReducedValue(obj, obj2, variableResolverFactory);
            if (reducedValue == null) {
                return Boolean.FALSE;
            }
            Class cls = (Class) this.clsStmt.getReducedValue(obj, obj2, variableResolverFactory);
            if (cls == null) {
                throw new ClassCastException();
            }
            return Boolean.valueOf(DataConversion.canConvert(cls, reducedValue.getClass()));
        } catch (ClassCastException unused) {
            throw new RuntimeException("not a class reference: " + this.clsStmt.getName());
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }
}
