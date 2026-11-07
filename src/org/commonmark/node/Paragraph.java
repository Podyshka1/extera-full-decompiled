package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public class Paragraph extends Block {
    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
