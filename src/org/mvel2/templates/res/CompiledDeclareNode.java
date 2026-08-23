package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.SimpleTemplateRegistry;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledDeclareNode extends Node {

    /* JADX INFO: renamed from: ce */
    private Serializable f1572ce;
    private Node nestedNode;

    public CompiledDeclareNode(int i, String str, char[] cArr, int i2, int i3, ParserContext parserContext) {
        this.begin = i;
        this.name = str;
        this.contents = cArr;
        this.cStart = i2;
        int i4 = i3 - 1;
        this.cEnd = i4;
        this.end = i3;
        this.f1572ce = MVEL.compileExpression(cArr, i2, i4 - i2, parserContext);
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        if (templateRuntime.getNamedTemplateRegistry() == null) {
            templateRuntime.setNamedTemplateRegistry(new SimpleTemplateRegistry());
        }
        templateRuntime.getNamedTemplateRegistry().addNamedTemplate((String) MVEL.executeExpression(this.f1572ce, obj, variableResolverFactory, String.class), new CompiledTemplate(templateRuntime.getTemplate(), this.nestedNode));
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
