package com.android.p003dx.util;

import java.io.PrintWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes4.dex */
public final class Writers {
    private Writers() {
    }

    public static PrintWriter printWriterFor(Writer writer) {
        if (writer instanceof PrintWriter) {
            return (PrintWriter) writer;
        }
        return new PrintWriter(writer);
    }
}
