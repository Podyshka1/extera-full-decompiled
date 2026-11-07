package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public class BulletList extends ListBlock {
    private char bulletMarker;

    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public char getBulletMarker() {
        return this.bulletMarker;
    }

    public void setBulletMarker(char c2) {
        this.bulletMarker = c2;
    }
}
