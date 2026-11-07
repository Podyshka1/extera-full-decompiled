package org.mvel2.templates.res;

import java.io.Serializable;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.StackDelimiterResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.TemplateError;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.templates.util.TemplateTools;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledNamedIncludeNode extends Node {
    private Serializable cIncludeExpression;
    private Serializable cPreExpression;

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public CompiledNamedIncludeNode(int i, String str, char[] cArr, int i2, int i3, ParserContext parserContext) {
        this.begin = i;
        this.name = str;
        this.contents = cArr;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
        int iCaptureToEOS = TemplateTools.captureToEOS(cArr, i2);
        char[] cArr2 = this.contents;
        int i4 = this.cStart;
        this.cIncludeExpression = MVEL.compileExpression(cArr2, i4, iCaptureToEOS - i4, parserContext);
        char[] cArr3 = this.contents;
        if (iCaptureToEOS != cArr3.length) {
            int i5 = iCaptureToEOS + 1;
            this.cPreExpression = MVEL.compileExpression(cArr3, i5, this.cEnd - i5, parserContext);
        }
    }

    @Override // org.mvel2.templates.res.Node
    public Object eval(TemplateRuntime templateRuntime, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        StackDelimiterResolverFactory stackDelimiterResolverFactory = new StackDelimiterResolverFactory(variableResolverFactory);
        Serializable serializable = this.cPreExpression;
        if (serializable != null) {
            MVEL.executeExpression(serializable, obj, stackDelimiterResolverFactory);
        }
        if (this.next != null) {
            String str = (String) MVEL.executeExpression(this.cIncludeExpression, obj, stackDelimiterResolverFactory, String.class);
            CompiledTemplate namedTemplate = templateRuntime.getNamedTemplateRegistry().getNamedTemplate(str);
            if (namedTemplate == null) {
                throw new TemplateError("named template does not exist: " + str);
            }
            return this.next.eval(templateRuntime, templateOutputStream.append(String.valueOf(TemplateRuntime.execute(namedTemplate, obj, stackDelimiterResolverFactory, templateRuntime.getNamedTemplateRegistry()))), obj, stackDelimiterResolverFactory);
        }
        return templateOutputStream.append(String.valueOf(TemplateRuntime.execute(templateRuntime.getNamedTemplateRegistry().getNamedTemplate((String) MVEL.executeExpression(this.cIncludeExpression, obj, stackDelimiterResolverFactory, String.class)), obj, stackDelimiterResolverFactory, templateRuntime.getNamedTemplateRegistry())));
    }
}
