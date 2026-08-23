package org.mvel2.templates.res;

import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class TerminalNode extends Node {
    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public TerminalNode() {
    }

    public TerminalNode(int i, int i2) {
        this.begin = i;
        this.end = i2;
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
