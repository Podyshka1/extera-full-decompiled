package io.noties.markwon.ext.latex;

import org.commonmark.node.CustomNode;

/* JADX INFO: loaded from: classes5.dex */
public class JLatexMathNode extends CustomNode {
    private String latex;

    public String latex() {
        return this.latex;
    }

    public void latex(String str) {
        this.latex = str;
    }
}
