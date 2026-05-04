package org.mvel2.templates.res;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.mvel2.MVEL;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.TemplateError;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.templates.util.TemplateTools;

/* JADX INFO: loaded from: classes5.dex */
public class IncludeNode extends Node {
    int includeOffset;
    int includeStart;
    int preOffset;
    int preStart;

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public IncludeNode(int i, String str, char[] cArr, int i2, int i3) {
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
        String str = (String) MVEL.eval(this.contents, this.includeStart, this.includeOffset, obj, variableResolverFactory, String.class);
        int i = this.preOffset;
        if (i != 0) {
            MVEL.eval(this.contents, this.preStart, i, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream.append(String.valueOf(TemplateRuntime.eval(readInFile(templateRuntime, str), obj, variableResolverFactory))), obj, variableResolverFactory);
        }
        return templateOutputStream.append(String.valueOf(MVEL.eval(readInFile(templateRuntime, str), obj, variableResolverFactory)));
    }

    public static String readInFile(TemplateRuntime templateRuntime, String str) {
        File file = new File(String.valueOf(templateRuntime.getRelPath().peek()) + "/" + str);
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
            templateRuntime.getRelPath().push(file.getParent());
            byte[] bArr = new byte[10];
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i = bufferedInputStream.read(bArr);
                if (i == -1) {
                    bufferedInputStream.close();
                    fileInputStream.close();
                    templateRuntime.getRelPath().pop();
                    return sb.toString();
                }
                for (int i2 = 0; i2 < i; i2++) {
                    sb.append((char) bArr[i2]);
                }
            }
        } catch (FileNotFoundException unused) {
            throw new TemplateError("cannot include template '" + str + "': file not found.");
        } catch (IOException e) {
            throw new TemplateError("unknown I/O exception while including '" + str + "' (stacktrace nested)", e);
        }
    }
}
