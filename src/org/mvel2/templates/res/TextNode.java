package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class TextNode extends Node {
    @Override // org.mvel2.templates.res.Node
    public void calculateContents(char[] cArr) {
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public TextNode(int i, int i2) {
        this.begin = i;
        this.end = i2;
    }

    public TextNode(int i, int i2, ExpressionNode expressionNode) {
        this.begin = i;
        this.end = i2;
        this.next = expressionNode;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        int i = this.end - this.begin;
        if (i != 0) {
            templateOutputStream.append(new String(templateRuntime.getTemplate(), this.begin, i));
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        return "TextNode(" + this.begin + "," + this.end + ")";
    }
}
