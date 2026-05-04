package org.mvel2.templates;

/* JADX INFO: loaded from: classes5.dex */
public class TemplateRuntimeError extends RuntimeException {
    public TemplateRuntimeError() {
    }

    public TemplateRuntimeError(String str) {
        super(str);
    }

    public TemplateRuntimeError(String str, Throwable th) {
        super(str, th);
    }

    public TemplateRuntimeError(Throwable th) {
        super(th);
    }
}
