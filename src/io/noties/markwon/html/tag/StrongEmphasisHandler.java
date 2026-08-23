package io.noties.markwon.html.tag;

import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.RenderProps;
import io.noties.markwon.SpanFactory;
import io.noties.markwon.html.HtmlTag;
import java.util.Arrays;
import java.util.Collection;
import org.commonmark.node.StrongEmphasis;

/* JADX INFO: loaded from: classes5.dex */
public class StrongEmphasisHandler extends SimpleTagHandler {
    @Override // io.noties.markwon.html.tag.SimpleTagHandler
    public Object getSpans(MarkwonConfiguration markwonConfiguration, RenderProps renderProps, HtmlTag htmlTag) {
        SpanFactory spanFactory = markwonConfiguration.spansFactory().get(StrongEmphasis.class);
        if (spanFactory == null) {
            return null;
        }
        return spanFactory.getSpans(markwonConfiguration, renderProps);
    }

    @Override // io.noties.markwon.html.TagHandler
    public Collection<String> supportedTags() {
        return Arrays.asList("b", "strong");
    }
}
