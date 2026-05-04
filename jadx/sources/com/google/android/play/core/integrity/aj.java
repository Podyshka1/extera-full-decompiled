package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
final class aj {

    /* JADX INFO: renamed from: a */
    private static C1638s f261a;

    /* JADX INFO: renamed from: a */
    static synchronized C1638s m301a(Context context) {
        try {
            if (f261a == null) {
                C1636q c1636q = new C1636q(null);
                c1636q.m325a(com.google.android.play.integrity.internal.ae.m355a(context));
                f261a = c1636q.mo300b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f261a;
    }
}
