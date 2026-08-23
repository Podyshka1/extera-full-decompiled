package org.mvel2.templates;

/* JADX INFO: loaded from: classes5.dex */
public class TemplateError extends RuntimeException {
    public TemplateError() {
    }

    public TemplateError(String str) {
        super(str);
    }

    public TemplateError(String str, Throwable th) {
        super(str, th);
    }

    public TemplateError(Throwable th) {
        super(th);
    }
}
