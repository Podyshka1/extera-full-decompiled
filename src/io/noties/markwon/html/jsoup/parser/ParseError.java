package io.noties.markwon.html.jsoup.parser;

/* JADX INFO: loaded from: classes5.dex */
public class ParseError {
    private String errorMsg;
    private int pos;

    public ParseError(int i, String str) {
        this.pos = i;
        this.errorMsg = str;
    }

    public ParseError(int i, String str, Object... objArr) {
        this.errorMsg = String.format(str, objArr);
        this.pos = i;
    }

    public String toString() {
        return this.pos + ": " + this.errorMsg;
    }
}
