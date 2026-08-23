package io.noties.markwon.ext.strikethrough;

import android.text.style.StrikethroughSpan;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonSpansFactory;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.RenderProps;
import io.noties.markwon.SpanFactory;
import java.util.Collections;
import org.commonmark.ext.gfm.strikethrough.Strikethrough;
import org.commonmark.ext.gfm.strikethrough.StrikethroughExtension;
import org.commonmark.parser.Parser;

/* JADX INFO: loaded from: classes5.dex */
public class StrikethroughPlugin extends AbstractMarkwonPlugin {
    public static StrikethroughPlugin create() {
        return new StrikethroughPlugin();
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureParser(Parser.Builder builder) {
        builder.extensions(Collections.singleton(StrikethroughExtension.create()));
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureSpansFactory(MarkwonSpansFactory.Builder builder) {
        builder.setFactory(Strikethrough.class, new SpanFactory() { // from class: io.noties.markwon.ext.strikethrough.StrikethroughPlugin.1
            @Override // io.noties.markwon.SpanFactory
            public Object getSpans(MarkwonConfiguration markwonConfiguration, RenderProps renderProps) {
                return new StrikethroughSpan();
            }
        });
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureVisitor(MarkwonVisitor.Builder builder) {
        builder.on(Strikethrough.class, new MarkwonVisitor.NodeVisitor<Strikethrough>() { // from class: io.noties.markwon.ext.strikethrough.StrikethroughPlugin.2
            @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
            public void visit(MarkwonVisitor markwonVisitor, Strikethrough strikethrough) {
                int length = markwonVisitor.length();
                markwonVisitor.visitChildren(strikethrough);
                markwonVisitor.setSpansForNodeOptional(strikethrough, length);
            }
        });
    }
}
