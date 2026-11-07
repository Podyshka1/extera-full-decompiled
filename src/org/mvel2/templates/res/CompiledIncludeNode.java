package org.mvel2.templates.res;

import com.sun.jna.Native$$ExternalSyntheticBUOutline1;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serializable;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.TemplateCompiler;
import org.mvel2.templates.TemplateError;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.templates.util.TemplateTools;
import org.mvel2.templates.util.TemplateTools$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public class CompiledIncludeNode extends Node {
    private CompiledTemplate cFileCache;
    private Serializable cIncludeExpression;
    private Serializable cPreExpression;
    private ParserContext context;
    private long fileDateStamp;

    @Override // org.mvel2.templates.res.Node
    public boolean demarcate(Node node, char[] cArr) {
        return false;
    }

    public CompiledIncludeNode(int i, String str, char[] cArr, int i2, int i3, ParserContext parserContext) {
        this.begin = i;
        this.name = str;
        this.contents = cArr;
        this.cStart = i2;
        this.cEnd = i3 - 1;
        this.end = i3;
        this.context = parserContext;
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
        String str = (String) MVEL.executeExpression(this.cIncludeExpression, obj, variableResolverFactory, String.class);
        Serializable serializable = this.cPreExpression;
        if (serializable != null) {
            MVEL.executeExpression(serializable, obj, variableResolverFactory);
        }
        Node node = this.next;
        if (node != null) {
            return node.eval(templateRuntime, templateOutputStream.append(String.valueOf(TemplateRuntime.eval(readFile(templateRuntime, str, obj, variableResolverFactory), obj, variableResolverFactory))), obj, variableResolverFactory);
        }
        return templateOutputStream.append(String.valueOf(MVEL.eval(readFile(templateRuntime, str, obj, variableResolverFactory), obj, variableResolverFactory)));
    }

    private String readFile(TemplateRuntime templateRuntime, String str, Object obj, VariableResolverFactory variableResolverFactory) {
        File file = new File(String.valueOf(templateRuntime.getRelPath().peek()) + "/" + str);
        long j = this.fileDateStamp;
        if (j == 0 || j != file.lastModified()) {
            this.fileDateStamp = file.lastModified();
            this.cFileCache = TemplateCompiler.compileTemplate(readInFile(templateRuntime, file), this.context);
        }
        return String.valueOf(TemplateRuntime.execute(this.cFileCache, obj, variableResolverFactory));
    }

    public static String readInFile(TemplateRuntime templateRuntime, File file) throws Throwable {
        FileInputStream fileInputStreamOpenInputStream;
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        try {
            try {
                fileInputStreamOpenInputStream = openInputStream(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException unused) {
        } catch (IOException e) {
            e = e;
        } catch (Throwable th2) {
            th = th2;
            fileInputStreamOpenInputStream = null;
            bufferedReader = null;
        }
        try {
            templateRuntime.getRelPath().push(file.getParent());
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStreamOpenInputStream, "UTF-8"));
            boolean z = true;
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        break;
                    }
                    if (z) {
                        z = false;
                    } else {
                        sb.append('\n');
                    }
                    sb.append(line);
                } catch (FileNotFoundException unused2) {
                    throw new TemplateError("cannot include template '" + file.getPath() + "': file not found.");
                } catch (IOException e2) {
                    e = e2;
                    throw new TemplateError("unknown I/O exception while including '" + file.getPath() + "' (stacktrace nested)", e);
                }
            }
            templateRuntime.getRelPath().pop();
            String string = sb.toString();
            try {
                bufferedReader2.close();
                if (fileInputStreamOpenInputStream == null) {
                    return string;
                }
                try {
                    fileInputStreamOpenInputStream.close();
                    return string;
                } catch (IOException unused3) {
                    TemplateTools$$ExternalSyntheticBUOutline0.m1017m("cannot close the stream on template file '", file.getPath(), "'.");
                    return null;
                }
            } catch (IOException unused4) {
                TemplateTools$$ExternalSyntheticBUOutline0.m1017m("cannot close the reader on template file '", file.getPath(), "'.");
                return null;
            }
        } catch (FileNotFoundException unused5) {
        } catch (IOException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException unused6) {
                    TemplateTools$$ExternalSyntheticBUOutline0.m1017m("cannot close the reader on template file '", file.getPath(), "'.");
                    return null;
                }
            }
            if (fileInputStreamOpenInputStream != null) {
                try {
                    fileInputStreamOpenInputStream.close();
                } catch (IOException unused7) {
                    TemplateTools$$ExternalSyntheticBUOutline0.m1017m("cannot close the stream on template file '", file.getPath(), "'.");
                    return null;
                }
            }
            throw th;
        }
    }

    private static FileInputStream openInputStream(File file) throws IOException {
        if (file == null) {
            throw new FileNotFoundException("file parameter is null");
        }
        if (file.exists()) {
            if (file.isDirectory()) {
                Native$$ExternalSyntheticBUOutline1.m513m("File '", file, "' exists but is a directory");
                return null;
            }
            if (!file.canRead()) {
                Native$$ExternalSyntheticBUOutline1.m513m("File '", file, "' cannot be read");
                return null;
            }
            return new FileInputStream(file);
        }
        throw new FileNotFoundException("File '" + file + "' does not exist");
    }
}
