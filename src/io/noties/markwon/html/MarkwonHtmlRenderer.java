package io.noties.markwon.html;

import io.noties.markwon.MarkwonVisitor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MarkwonHtmlRenderer {
    public abstract void render(MarkwonVisitor markwonVisitor, MarkwonHtmlParser markwonHtmlParser);

    public abstract TagHandler tagHandler(String str);
}
