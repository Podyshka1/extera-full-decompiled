package org.mvel2.templates.res;

import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class ExpressionNode extends Node {
    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public ExpressionNode() {
    }

    public ExpressionNode(int i, String str, char[] cArr, int i2, int i3) {
        this.begin = i;
        this.name = str;
        this.contents = cArr;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
    }

    public ExpressionNode(int i, String str, char[] cArr, int i2, int i3, Node node) {
        this.name = str;
        this.begin = i;
        this.contents = cArr;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
        this.next = node;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        char[] cArr = this.contents;
        int i = this.cStart;
        templateOutputStream.append(String.valueOf(MVEL.eval(cArr, i, this.cEnd - i, obj, variableResolverFactory)));
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("ExpressionNode:");
        sb.append(this.name);
        sb.append("{");
        char[] cArr = this.contents;
        if (cArr == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            int i = this.cStart;
            str = new String(cArr, i, this.cEnd - i);
        }
        sb.append(str);
        sb.append("} (start=");
        sb.append(this.begin);
        sb.append(";end=");
        sb.append(this.end);
        sb.append(")");
        return sb.toString();
    }
}
