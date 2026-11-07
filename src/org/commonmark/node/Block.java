package org.commonmark.node;

import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Block extends Node {
    @Override // org.commonmark.node.Node
    public Block getParent() {
        return (Block) super.getParent();
    }

    @Override // org.commonmark.node.Node
    public void setParent(Node node) {
        if (!(node instanceof Block)) {
            f$$ExternalSyntheticBUOutline1.m212m("Parent of block must also be block (can not be inline)");
        } else {
            super.setParent(node);
        }
    }
}
