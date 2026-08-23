package org.mvel2.ast;

import org.mvel2.ParserContext;

/* JADX INFO: loaded from: classes.dex */
public abstract class BooleanNode extends ASTNode {
    protected ASTNode left;
    protected ASTNode right;

    public abstract ASTNode getRightMost();

    public abstract void setRightMost(ASTNode aSTNode);

    protected BooleanNode(ParserContext parserContext) {
        super(parserContext);
    }

    public ASTNode getLeft() {
        return this.left;
    }

    public ASTNode getRight() {
        return this.right;
    }

    public void setLeft(ASTNode aSTNode) {
        this.left = aSTNode;
    }

    public void setRight(ASTNode aSTNode) {
        this.right = aSTNode;
    }
}
