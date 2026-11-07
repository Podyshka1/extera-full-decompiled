package org.chromium.base.metrics;

import android.os.Trace;

/* JADX INFO: loaded from: classes5.dex */
public class ScopedSysTraceEvent implements AutoCloseable {
    public static ScopedSysTraceEvent scoped(String str) {
        return new ScopedSysTraceEvent(str);
    }

    private ScopedSysTraceEvent(String str) {
        Trace.beginSection(str.length() > 127 ? str.substring(0, 124).concat("...") : str);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        Trace.endSection();
    }
}
