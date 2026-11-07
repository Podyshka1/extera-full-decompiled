package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class CommentNode extends Node {
    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public CommentNode() {
    }

    public CommentNode(int i, String str, char[] cArr, int i2, int i3) {
        this.name = str;
        this.cEnd = i3;
        this.end = i3;
    }

    public CommentNode(int i, String str, char[] cArr, int i2, int i3, Node node) {
        this.begin = i;
        this.cEnd = i3;
        this.end = i3;
        this.next = node;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        return null;
    }
}
