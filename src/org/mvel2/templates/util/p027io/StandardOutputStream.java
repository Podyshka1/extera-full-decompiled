package org.mvel2.templates.util.p027io;

import java.io.IOException;
import java.io.OutputStream;
import org.mvel2.templates.util.TemplateOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class StandardOutputStream implements TemplateOutputStream {
    private OutputStream outputStream;

    public String toString() {
        return null;
    }

    public StandardOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream;
    }

    @Override // org.mvel2.templates.util.TemplateOutputStream
    public TemplateOutputStream append(CharSequence charSequence) {
        for (int i = 0; i < charSequence.length(); i++) {
            try {
                this.outputStream.write(charSequence.charAt(i));
            } catch (IOException e) {
                throw new RuntimeException("failed to write to stream", e);
            }
        }
        return this;
    }

    @Override // org.mvel2.templates.util.TemplateOutputStream
    public TemplateOutputStream append(char[] cArr) {
        try {
            for (char c : cArr) {
                this.outputStream.write(c);
            }
            return this;
        } catch (IOException e) {
            throw new RuntimeException("failed to write to stream", e);
        }
    }
}
