package org.mvel2.templates.res;

import org.mvel2.MVEL;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.SimpleTemplateRegistry;
import org.mvel2.templates.TemplateRegistry;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class DeclareNode extends Node {
    private Node nestedNode;

    public DeclareNode(int i, String str, char[] cArr, int i2, int i3) {
        this.begin = i;
        this.name = str;
        this.contents = cArr;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        if (templateRuntime.getNamedTemplateRegistry() == null) {
            templateRuntime.setNamedTemplateRegistry(new SimpleTemplateRegistry());
        }
        TemplateRegistry namedTemplateRegistry = templateRuntime.getNamedTemplateRegistry();
        char[] cArr = this.contents;
        int i = this.cStart;
        namedTemplateRegistry.addNamedTemplate((String) MVEL.eval(cArr, i, this.cEnd - i, obj, variableResolverFactory, String.class), new CompiledTemplate(templateRuntime.getTemplate(), this.nestedNode));
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        return null;
    }

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        Node node2 = this.next;
        this.nestedNode = node2;
        while (node2.getNext() != null) {
            node2 = node2.next;
        }
        node2.next = new EndNode();
        this.next = this.terminus;
        return false;
    }
}
