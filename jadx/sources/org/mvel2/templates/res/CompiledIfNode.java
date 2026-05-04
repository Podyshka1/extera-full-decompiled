package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledIfNode extends IfNode {

    /* JADX INFO: renamed from: ce */
    private Serializable f1576ce;

    public CompiledIfNode(int i, String str, char[] cArr, int i2, int i3, ParserContext parserContext) {
        super(i, str, cArr, i2, i3);
        while (true) {
            int i4 = this.cEnd;
            if (i4 <= this.cStart || !ParseTools.isWhitespace(cArr[i4])) {
                break;
            } else {
                this.cEnd--;
            }
        }
        int i5 = this.cStart;
        int i6 = this.cEnd;
        if (i5 != i6) {
            this.f1576ce = MVEL.compileExpression(cArr, i5, i6 - i2, parserContext);
        }
    }

    @Override // org.mvel2.templates.res.IfNode, org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        Serializable serializable = this.f1576ce;
        if (serializable == null || ((Boolean) MVEL.executeExpression(serializable, obj, variableResolverFactory, Boolean.class)).booleanValue()) {
            return this.trueNode.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream, obj, variableResolverFactory);
        }
        return null;
    }
}
