package io.noties.markwon.html;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface HtmlTag {

    public interface Block extends HtmlTag {
        List<Block> children();

        Block parent();
    }

    public interface Inline extends HtmlTag {
    }

    Map<String, String> attributes();

    int end();

    Block getAsBlock();

    boolean isBlock();

    boolean isClosed();

    String name();

    int start();
}
