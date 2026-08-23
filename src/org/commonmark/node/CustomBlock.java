package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CustomBlock extends Block {
    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
