package io.noties.markwon;

import org.commonmark.node.Node;
import org.commonmark.node.Visitor;

/* JADX INFO: loaded from: classes5.dex */
public interface MarkwonVisitor extends Visitor {

    public interface BlockHandler {
        void blockEnd(MarkwonVisitor markwonVisitor, Node node);

        void blockStart(MarkwonVisitor markwonVisitor, Node node);
    }

    public interface Builder {
        MarkwonVisitor build(MarkwonConfiguration markwonConfiguration, RenderProps renderProps);

        <N extends Node> Builder on(Class<N> cls, NodeVisitor<? super N> nodeVisitor);
    }

    public interface NodeVisitor<N extends Node> {
        void visit(MarkwonVisitor markwonVisitor, N n);
    }

    void blockEnd(Node node);

    void blockStart(Node node);

    SpannableBuilder builder();

    MarkwonConfiguration configuration();

    void ensureNewLine();

    void forceNewLine();

    boolean hasNext(Node node);

    int length();

    RenderProps renderProps();

    void setSpans(int i, Object obj);

    <N extends Node> void setSpansForNodeOptional(N n, int i);

    void visitChildren(Node node);
}
