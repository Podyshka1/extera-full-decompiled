package org.mvel2.templates.res;

import org.mvel2.MVEL;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.templates.util.TemplateTools;

/* JADX INFO: loaded from: classes5.dex */
public class NamedIncludeNode extends Node {
    int includeOffset;
    int includeStart;
    int preOffset;
    int preStart;

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public NamedIncludeNode(int i, String str, char[] cArr, int i2, int i3) {
        this.begin = i;
        this.name = str;
        this.contents = cArr;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
        int iCaptureToEOS = TemplateTools.captureToEOS(cArr, 0);
        int i4 = this.cStart;
        this.includeStart = i4;
        this.includeOffset = iCaptureToEOS - i4;
        int i5 = iCaptureToEOS + 1;
        this.preStart = i5;
        this.preOffset = this.cEnd - i5;
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        int i = this.preOffset;
        if (i != 0) {
            MVEL.eval(this.contents, this.preStart, i, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream.append(String.valueOf(TemplateRuntime.execute(templateRuntime.getNamedTemplateRegistry().getNamedTemplate((String) MVEL.eval(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class)), obj, variableResolverFactory))), obj, variableResolverFactory);
        }
        return templateOutputStream.append(String.valueOf(TemplateRuntime.execute(templateRuntime.getNamedTemplateRegistry().getNamedTemplate((String) MVEL.eval(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class)), obj, variableResolverFactory)));
    }
}
