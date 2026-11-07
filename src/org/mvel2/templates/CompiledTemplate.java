package org.mvel2.templates;

import java.io.Serializable;
import org.mvel2.templates.res.Node;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledTemplate implements Serializable {
    private Node root;
    private char[] template;

    public CompiledTemplate(char[] cArr, Node node) {
        this.template = cArr;
        this.root = node;
    }

    public char[] getTemplate() {
        return this.template;
    }

    public void setTemplate(char[] cArr) {
        this.template = cArr;
    }

    public Node getRoot() {
        return this.root;
    }

    public void setRoot(Node node) {
        this.root = node;
    }
}
