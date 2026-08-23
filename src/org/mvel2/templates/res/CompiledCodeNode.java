package org.mvel2.templates.res;

import java.io.Serializable;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledCodeNode extends Node {

    /* JADX INFO: renamed from: ce */
    private Serializable f1571ce;

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public CompiledCodeNode() {
    }

    public CompiledCodeNode(int i, String str, char[] cArr, int i2, int i3, ParserContext parserContext) {
        this.begin = i;
        this.name = str;
        this.contents = cArr;
        this.cStart = i2;
        int i4 = i3 - 1;
        this.cEnd = i4;
        this.end = i3;
        this.f1571ce = MVEL.compileExpression(cArr, i2, i4 - i2, parserContext);
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        MVEL.executeExpression(this.f1571ce, obj, variableResolverFactory);
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CodeNode:");
        sb.append(this.name);
        sb.append("{");
        char[] cArr = this.contents;
        sb.append(cArr == null ? _UrlKt.FRAGMENT_ENCODE_SET : new String(cArr));
        sb.append("} (start=");
        sb.append(this.begin);
        sb.append(";end=");
        sb.append(this.end);
        sb.append(")");
        return sb.toString();
    }
}
