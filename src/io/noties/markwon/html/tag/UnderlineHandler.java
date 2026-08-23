package io.noties.markwon.html.tag;

import android.text.style.UnderlineSpan;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.html.HtmlTag;
import io.noties.markwon.html.MarkwonHtmlRenderer;
import io.noties.markwon.html.TagHandler;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public class UnderlineHandler extends TagHandler {
    @Override // io.noties.markwon.html.TagHandler
    public void handle(MarkwonVisitor markwonVisitor, MarkwonHtmlRenderer markwonHtmlRenderer, HtmlTag htmlTag) {
        if (htmlTag.isBlock()) {
            TagHandler.visitChildren(markwonVisitor, markwonHtmlRenderer, htmlTag.getAsBlock());
        }
        SpannableBuilder.setSpans(markwonVisitor.builder(), new UnderlineSpan(), htmlTag.start(), htmlTag.end());
    }

    @Override // io.noties.markwon.html.TagHandler
    public Collection<String> supportedTags() {
        return Arrays.asList("u", "ins");
    }
}
