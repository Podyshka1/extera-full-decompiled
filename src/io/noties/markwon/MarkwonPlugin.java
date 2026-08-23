package io.noties.markwon;

import android.text.Spanned;
import android.widget.TextView;
import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonSpansFactory;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.core.MarkwonTheme;
import org.commonmark.node.Node;
import org.commonmark.parser.Parser;

/* JADX INFO: loaded from: classes5.dex */
public interface MarkwonPlugin {

    public interface Registry {
        <P extends MarkwonPlugin> P require(Class<P> cls);
    }

    void afterRender(Node node, MarkwonVisitor markwonVisitor);

    void afterSetText(TextView textView);

    void beforeRender(Node node);

    void beforeSetText(TextView textView, Spanned spanned);

    void configure(Registry registry);

    void configureConfiguration(MarkwonConfiguration.Builder builder);

    void configureParser(Parser.Builder builder);

    void configureSpansFactory(MarkwonSpansFactory.Builder builder);

    void configureTheme(MarkwonTheme.Builder builder);

    void configureVisitor(MarkwonVisitor.Builder builder);

    String processMarkdown(String str);
}
