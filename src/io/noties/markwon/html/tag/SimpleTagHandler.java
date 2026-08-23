package io.noties.markwon.html.tag;

import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.RenderProps;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.html.HtmlTag;
import io.noties.markwon.html.MarkwonHtmlRenderer;
import io.noties.markwon.html.TagHandler;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SimpleTagHandler extends TagHandler {
    public abstract Object getSpans(MarkwonConfiguration markwonConfiguration, RenderProps renderProps, HtmlTag htmlTag);

    @Override // io.noties.markwon.html.TagHandler
    public void handle(MarkwonVisitor markwonVisitor, MarkwonHtmlRenderer markwonHtmlRenderer, HtmlTag htmlTag) {
        if (htmlTag.isBlock()) {
            TagHandler.visitChildren(markwonVisitor, markwonHtmlRenderer, htmlTag.getAsBlock());
        }
        Object spans = getSpans(markwonVisitor.configuration(), markwonVisitor.renderProps(), htmlTag);
        if (spans != null) {
            SpannableBuilder.setSpans(markwonVisitor.builder(), spans, htmlTag.start(), htmlTag.end());
        }
    }
}
