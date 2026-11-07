package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public class Text extends Node {
    private String literal;

    public Text(String str) {
        this.literal = str;
    }

    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public String getLiteral() {
        return this.literal;
    }

    public void setLiteral(String str) {
        this.literal = str;
    }

    @Override // org.commonmark.node.Node
    public String toStringAttributes() {
        return "literal=" + this.literal;
    }
}
