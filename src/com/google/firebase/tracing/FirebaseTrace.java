package com.google.firebase.tracing;

import android.os.Trace;

/* JADX INFO: loaded from: classes.dex */
public abstract class FirebaseTrace {
    public static void pushTrace(String str) {
        Trace.beginSection(str);
    }

    public static void popTrace() {
        Trace.endSection();
    }
}
