package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public class Image extends Node {
    private String destination;
    private String title;

    public Image(String str, String str2) {
        this.destination = str;
        this.title = str2;
    }

    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    @Override // org.commonmark.node.Node
    public String toStringAttributes() {
        return "destination=" + this.destination + ", title=" + this.title;
    }
}
