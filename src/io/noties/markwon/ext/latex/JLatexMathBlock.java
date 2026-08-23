package io.noties.markwon.ext.latex;

import org.commonmark.node.CustomBlock;

/* JADX INFO: loaded from: classes5.dex */
public class JLatexMathBlock extends CustomBlock {
    private String latex;

    public String latex() {
        return this.latex;
    }

    public void latex(String str) {
        this.latex = str;
    }
}
