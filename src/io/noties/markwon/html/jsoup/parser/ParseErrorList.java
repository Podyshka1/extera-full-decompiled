package io.noties.markwon.html.jsoup.parser;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class ParseErrorList extends ArrayList<ParseError> {
    private final int maxSize;

    public ParseErrorList(int i, int i2) {
        super(i);
        this.maxSize = i2;
    }

    public boolean canAddError() {
        return size() < this.maxSize;
    }

    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }
}
