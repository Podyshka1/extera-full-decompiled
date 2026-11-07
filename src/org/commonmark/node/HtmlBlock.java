package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public class HtmlBlock extends Block {
    private String literal;

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
}
