package io.noties.markwon.html.tag;

import android.text.TextUtils;
import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.RenderProps;
import io.noties.markwon.SpanFactory;
import io.noties.markwon.core.CoreProps;
import io.noties.markwon.html.HtmlTag;
import java.util.Collection;
import java.util.Collections;
import org.commonmark.node.Link;

/* JADX INFO: loaded from: classes5.dex */
public class LinkHandler extends SimpleTagHandler {
    @Override // io.noties.markwon.html.tag.SimpleTagHandler
    public Object getSpans(MarkwonConfiguration markwonConfiguration, RenderProps renderProps, HtmlTag htmlTag) {
        SpanFactory spanFactory;
        String str = htmlTag.attributes().get("href");
        if (TextUtils.isEmpty(str) || (spanFactory = markwonConfiguration.spansFactory().get(Link.class)) == null) {
            return null;
        }
        CoreProps.LINK_DESTINATION.set(renderProps, str);
        return spanFactory.getSpans(markwonConfiguration, renderProps);
    }

    @Override // io.noties.markwon.html.TagHandler
    public Collection<String> supportedTags() {
        return Collections.singleton("a");
    }
}
