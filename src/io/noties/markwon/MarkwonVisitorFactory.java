package io.noties.markwon;

import io.noties.markwon.MarkwonVisitor;

/* JADX INFO: loaded from: classes5.dex */
abstract class MarkwonVisitorFactory {
    public abstract MarkwonVisitor create();

    public static MarkwonVisitorFactory create(final MarkwonVisitor.Builder builder, final MarkwonConfiguration markwonConfiguration) {
        return new MarkwonVisitorFactory() { // from class: io.noties.markwon.MarkwonVisitorFactory.1
            @Override // io.noties.markwon.MarkwonVisitorFactory
            public MarkwonVisitor create() {
                return builder.build(markwonConfiguration, new RenderPropsImpl());
            }
        };
    }
}
