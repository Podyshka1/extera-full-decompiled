package org.commonmark.node;

/* JADX INFO: loaded from: classes5.dex */
public class OrderedList extends ListBlock {
    private char delimiter;
    private int startNumber;

    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public int getStartNumber() {
        return this.startNumber;
    }

    public void setStartNumber(int i) {
        this.startNumber = i;
    }

    public char getDelimiter() {
        return this.delimiter;
    }

    public void setDelimiter(char c2) {
        this.delimiter = c2;
    }
}
