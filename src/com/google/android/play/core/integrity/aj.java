package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
final class aj {

    /* JADX INFO: renamed from: a */
    private static C1692s f320a;

    /* JADX INFO: renamed from: a */
    public static synchronized C1692s m360a(Context context) {
        try {
            if (f320a == null) {
                C1690q c1690q = new C1690q(null);
                c1690q.m384a(com.google.android.play.integrity.internal.ae.m414a(context));
                f320a = c1690q.mo359b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f320a;
    }
}
