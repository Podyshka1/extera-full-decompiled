package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.CompilerTools;

/* JADX INFO: loaded from: classes.dex */
public class Or extends BooleanNode {
    public Or(ASTNode aSTNode, ASTNode aSTNode2, boolean z, ParserContext parserContext) {
        super(parserContext);
        this.left = aSTNode;
        CompilerTools.expectType(parserContext, aSTNode, Boolean.class, z);
        this.right = aSTNode2;
        CompilerTools.expectType(parserContext, aSTNode2, Boolean.class, z);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(((Boolean) this.left.getReducedValueAccelerated(obj, obj2, variableResolverFactory)).booleanValue() || ((Boolean) this.right.getReducedValueAccelerated(obj, obj2, variableResolverFactory)).booleanValue());
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("improper use of AST element");
    }

    @Override // org.mvel2.ast.BooleanNode
    public void setRightMost(ASTNode aSTNode) {
        Or or = this;
        while (true) {
            ASTNode aSTNode2 = or.right;
            if (aSTNode2 == null || !(aSTNode2 instanceof Or)) {
                break;
            } else {
                or = (Or) aSTNode2;
            }
        }
        or.right = aSTNode;
    }

    @Override // org.mvel2.ast.BooleanNode
    public ASTNode getRightMost() {
        ASTNode aSTNode;
        Or or = this;
        while (true) {
            aSTNode = or.right;
            if (aSTNode == null || !(aSTNode instanceof Or)) {
                break;
            }
            or = (Or) aSTNode;
        }
        return aSTNode;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return "(" + this.left.toString() + " || " + this.right.toString() + ")";
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }
}
