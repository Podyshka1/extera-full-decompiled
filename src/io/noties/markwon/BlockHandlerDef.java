package io.noties.markwon;

import io.noties.markwon.MarkwonVisitor;
import org.commonmark.node.Node;

/* JADX INFO: loaded from: classes5.dex */
public class BlockHandlerDef implements MarkwonVisitor.BlockHandler {
    @Override // io.noties.markwon.MarkwonVisitor.BlockHandler
    public void blockStart(MarkwonVisitor markwonVisitor, Node node) {
        markwonVisitor.ensureNewLine();
    }

    @Override // io.noties.markwon.MarkwonVisitor.BlockHandler
    public void blockEnd(MarkwonVisitor markwonVisitor, Node node) {
        if (markwonVisitor.hasNext(node)) {
            markwonVisitor.ensureNewLine();
            markwonVisitor.forceNewLine();
        }
    }
}
