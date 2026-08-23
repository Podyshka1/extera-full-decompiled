package org.mvel2.templates.util.p027io;

import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class StringBuilderStream implements TemplateOutputStream {
    private StringBuilder appender;

    public StringBuilderStream(StringBuilder sb) {
        this.appender = sb;
    }

    @Override // org.mvel2.templates.util.TemplateOutputStream
    public TemplateOutputStream append(CharSequence charSequence) {
        this.appender.append(charSequence);
        return this;
    }

    @Override // org.mvel2.templates.util.TemplateOutputStream
    public TemplateOutputStream append(char[] cArr) {
        this.appender.append(cArr);
        return this;
    }

    public String toString() {
        return this.appender.toString();
    }
}
