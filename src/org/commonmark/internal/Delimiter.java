package org.commonmark.internal;

import org.commonmark.node.Text;
import org.commonmark.parser.delimiter.DelimiterRun;

/* JADX INFO: loaded from: classes5.dex */
public class Delimiter implements DelimiterRun {
    public final boolean canClose;
    public final boolean canOpen;
    public final char delimiterChar;
    public Delimiter next;
    public final Text node;
    public Delimiter previous;
    public int length = 1;
    public int originalLength = 1;

    public Delimiter(Text text, char c2, boolean z, boolean z2, Delimiter delimiter) {
        this.node = text;
        this.delimiterChar = c2;
        this.canOpen = z;
        this.canClose = z2;
        this.previous = delimiter;
    }

    @Override // org.commonmark.parser.delimiter.DelimiterRun
    public boolean canOpen() {
        return this.canOpen;
    }

    @Override // org.commonmark.parser.delimiter.DelimiterRun
    public boolean canClose() {
        return this.canClose;
    }

    @Override // org.commonmark.parser.delimiter.DelimiterRun
    public int length() {
        return this.length;
    }

    @Override // org.commonmark.parser.delimiter.DelimiterRun
    public int originalLength() {
        return this.originalLength;
    }
}
