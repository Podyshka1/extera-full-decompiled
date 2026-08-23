package io.noties.markwon.core.factory;

import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.RenderProps;
import io.noties.markwon.SpanFactory;
import io.noties.markwon.core.CoreProps;
import io.noties.markwon.core.spans.LinkSpan;

/* JADX INFO: loaded from: classes5.dex */
public class LinkSpanFactory implements SpanFactory {
    @Override // io.noties.markwon.SpanFactory
    public Object getSpans(MarkwonConfiguration markwonConfiguration, RenderProps renderProps) {
        return new LinkSpan(markwonConfiguration.theme(), CoreProps.LINK_DESTINATION.require(renderProps), markwonConfiguration.linkResolver());
    }
}
