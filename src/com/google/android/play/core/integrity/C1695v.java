package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.v */
/* JADX INFO: loaded from: classes5.dex */
final class C1695v {

    /* JADX INFO: renamed from: a */
    private static C1688o f389a;

    /* JADX INFO: renamed from: a */
    public static synchronized C1688o m386a(Context context) {
        try {
            if (f389a == null) {
                C1684m c1684m = new C1684m(null);
                c1684m.m379a(com.google.android.play.integrity.internal.ae.m414a(context));
                f389a = c1684m.mo380b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f389a;
    }
}
