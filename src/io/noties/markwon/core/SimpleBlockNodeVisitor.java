package io.noties.markwon.core;

import io.noties.markwon.MarkwonVisitor;
import org.commonmark.node.Node;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleBlockNodeVisitor implements MarkwonVisitor.NodeVisitor<Node> {
    @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
    public void visit(MarkwonVisitor markwonVisitor, Node node) {
        markwonVisitor.blockStart(node);
        int length = markwonVisitor.length();
        markwonVisitor.visitChildren(node);
        markwonVisitor.setSpansForNodeOptional(node, length);
        markwonVisitor.blockEnd(node);
    }
}
