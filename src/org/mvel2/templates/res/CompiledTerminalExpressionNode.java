package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledTerminalExpressionNode extends TerminalExpressionNode {

    /* JADX INFO: renamed from: ce */
    private Serializable f1577ce;

    @Override // org.mvel2.templates.res.TerminalExpressionNode, org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public CompiledTerminalExpressionNode(Node node, ParserContext parserContext) {
        this.begin = node.begin;
        this.name = node.name;
        char[] cArr = node.contents;
        int i = node.cStart;
        this.f1577ce = MVEL.compileExpression(cArr, i, node.cEnd - i, parserContext);
    }

    @Override // org.mvel2.templates.res.TerminalExpressionNode, org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        return MVEL.executeExpression(this.f1577ce, obj, variableResolverFactory);
    }
}
