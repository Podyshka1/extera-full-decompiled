package org.mvel2.templates.util.p027io;

import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class StringAppenderStream implements TemplateOutputStream {
    private StringAppender appender;

    public StringAppenderStream(StringAppender stringAppender) {
        this.appender = stringAppender;
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
