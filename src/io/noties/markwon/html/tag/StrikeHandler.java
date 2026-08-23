package io.noties.markwon.html.tag;

import android.text.style.StrikethroughSpan;
import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.SpanFactory;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.html.HtmlTag;
import io.noties.markwon.html.MarkwonHtmlRenderer;
import io.noties.markwon.html.TagHandler;
import java.util.Arrays;
import java.util.Collection;
import org.commonmark.ext.gfm.strikethrough.Strikethrough;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes5.dex */
public class StrikeHandler extends TagHandler {
    private static final boolean HAS_MARKDOWN_IMPLEMENTATION = true;

    @Override // io.noties.markwon.html.TagHandler
    public void handle(MarkwonVisitor markwonVisitor, MarkwonHtmlRenderer markwonHtmlRenderer, HtmlTag htmlTag) {
        if (htmlTag.isBlock()) {
            TagHandler.visitChildren(markwonVisitor, markwonHtmlRenderer, htmlTag.getAsBlock());
        }
        SpannableBuilder.setSpans(markwonVisitor.builder(), HAS_MARKDOWN_IMPLEMENTATION ? getMarkdownSpans(markwonVisitor) : new StrikethroughSpan(), htmlTag.start(), htmlTag.end());
    }

    @Override // io.noties.markwon.html.TagHandler
    public Collection<String> supportedTags() {
        return Arrays.asList("s", TeXSymbolParser.DELIMITER_ATTR);
    }

    private static Object getMarkdownSpans(MarkwonVisitor markwonVisitor) {
        MarkwonConfiguration markwonConfigurationConfiguration = markwonVisitor.configuration();
        SpanFactory spanFactory = markwonConfigurationConfiguration.spansFactory().get(Strikethrough.class);
        if (spanFactory == null) {
            return null;
        }
        return spanFactory.getSpans(markwonConfigurationConfiguration, markwonVisitor.renderProps());
    }
}
