package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class IntDiv extends BinaryOperation implements IntOptimized {
    public IntDiv(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(2, parserContext);
        this.left = aSTNode;
        this.right = aSTNode2;
    }

    @Override // org.mvel2.ast.BinaryOperation, org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Integer.valueOf(((Integer) this.left.getReducedValueAccelerated(obj, obj2, variableResolverFactory)).intValue() / ((Integer) this.right.getReducedValueAccelerated(obj, obj2, variableResolverFactory)).intValue());
    }

    @Override // org.mvel2.ast.BinaryOperation, org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Integer.valueOf(((Integer) this.left.getReducedValue(obj, obj2, variableResolverFactory)).intValue() / ((Integer) this.right.getReducedValue(obj, obj2, variableResolverFactory)).intValue());
    }

    @Override // org.mvel2.ast.BooleanNode
    public void setRight(ASTNode aSTNode) {
        super.setRight(aSTNode);
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Integer.class;
    }
}
