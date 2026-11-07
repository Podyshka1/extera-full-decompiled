package androidx.media3.common.util;

import android.os.Trace;

/* JADX INFO: loaded from: classes3.dex */
public abstract class TraceUtil {
    public static void beginSection(String str) {
        Trace.beginSection(str);
    }

    public static void endSection() {
        Trace.endSection();
    }
}
