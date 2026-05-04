package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.v */
/* JADX INFO: loaded from: classes5.dex */
final class C1641v {

    /* JADX INFO: renamed from: a */
    private static C1634o f330a;

    /* JADX INFO: renamed from: a */
    static synchronized C1634o m327a(Context context) {
        try {
            if (f330a == null) {
                C1630m c1630m = new C1630m(null);
                c1630m.m320a(com.google.android.play.integrity.internal.ae.m355a(context));
                f330a = c1630m.mo321b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f330a;
    }
}
