package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public class StrongEmphasis extends Node {
    private String delimiter;

    public StrongEmphasis(String str) {
        this.delimiter = str;
    }

    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
