package org.mvel2.templates.res;

import org.mvel2.MVEL;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class TerminalExpressionNode extends Node {
    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public TerminalExpressionNode() {
    }

    public TerminalExpressionNode(Node node) {
        this.begin = node.begin;
        this.name = node.name;
        this.contents = node.contents;
        this.cStart = node.cStart;
        this.cEnd = node.cEnd;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        char[] cArr = this.contents;
        int i = this.cStart;
        return MVEL.eval(cArr, i, this.cEnd - i, obj, variableResolverFactory);
    }
}
