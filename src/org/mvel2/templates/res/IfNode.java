package org.mvel2.templates.res;

import org.mvel2.MVEL;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class IfNode extends Node {
    protected Node elseNode;
    protected Node trueNode;

    public IfNode(int i, String str, char[] cArr, int i2, int i3) {
        super(i, str, cArr, i2, i3);
        while (true) {
            int i4 = this.cEnd;
            if (i4 <= this.cStart || !ParseTools.isWhitespace(cArr[i4])) {
                return;
            } else {
                this.cEnd--;
            }
        }
    }

    public Node getTrueNode() {
        return this.trueNode;
    }

    public void setTrueNode(ExpressionNode expressionNode) {
        this.trueNode = expressionNode;
    }

    public Node getElseNode() {
        return this.elseNode;
    }

    public void setElseNode(ExpressionNode expressionNode) {
        this.elseNode = expressionNode;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        this.trueNode = this.next;
        this.next = this.terminus;
        return true;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        Object obj2;
        VariableResolverFactory variableResolverFactory2;
        int i = this.cEnd;
        int i2 = this.cStart;
        if (i != i2) {
            obj2 = obj;
            variableResolverFactory2 = variableResolverFactory;
            if (!((Boolean) MVEL.eval(this.contents, i2, i - i2, obj2, variableResolverFactory2, Boolean.class)).booleanValue()) {
                Node node = this.next;
                if (node != null) {
                    return node.eval(templateRuntime, templateOutputStream, obj2, variableResolverFactory2);
                }
                return null;
            }
        } else {
            obj2 = obj;
            variableResolverFactory2 = variableResolverFactory;
        }
        return this.trueNode.eval(templateRuntime, templateOutputStream, obj2, variableResolverFactory2);
    }
}
