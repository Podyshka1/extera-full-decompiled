package org.mvel2.templates.res;

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

    /* JADX WARN: Removed duplicated region for block: B:59:0x0107 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String readInFile(TemplateRuntime templateRuntime, File file) throws Throwable {
        FileInputStream fileInputStreamOpenInputStream;
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                fileInputStreamOpenInputStream = openInputStream(file);
            } catch (Throwable th) {
                th = th;
                fileInputStreamOpenInputStream = null;
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
                    } catch (FileNotFoundException unused) {
                        throw new TemplateError("cannot include template '" + file.getPath() + "': file not found.");
                    } catch (IOException e) {
                        e = e;
                        throw new TemplateError("unknown I/O exception while including '" + file.getPath() + "' (stacktrace nested)", e);
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                        }
                        if (fileInputStreamOpenInputStream != null) {
                        }
                        throw th;
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
                    } catch (IOException unused2) {
                        throw new TemplateError("cannot close the stream on template file '" + file.getPath() + "'.");
                    }
                } catch (IOException unused3) {
                    throw new TemplateError("cannot close the reader on template file '" + file.getPath() + "'.");
                }
            } catch (FileNotFoundException unused4) {
            } catch (IOException e2) {
                e = e2;
            } catch (Throwable th3) {
                th = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused5) {
                        throw new TemplateError("cannot close the reader on template file '" + file.getPath() + "'.");
                    }
                }
                if (fileInputStreamOpenInputStream != null) {
                    try {
                        fileInputStreamOpenInputStream.close();
                    } catch (IOException unused6) {
                        throw new TemplateError("cannot close the stream on template file '" + file.getPath() + "'.");
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused7) {
        } catch (IOException e3) {
            e = e3;
        } catch (Throwable th4) {
            th = th4;
            fileInputStreamOpenInputStream = null;
        }
    }

    private static FileInputStream openInputStream(File file) throws IOException {
        if (file == null) {
            throw new FileNotFoundException("file parameter is null");
        }
        if (file.exists()) {
            if (file.isDirectory()) {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
            if (!file.canRead()) {
                throw new IOException("File '" + file + "' cannot be read");
            }
            return new FileInputStream(file);
        }
        throw new FileNotFoundException("File '" + file + "' does not exist");
    }
}
