package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.AbstractC1754ae;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.v */
/* JADX INFO: loaded from: classes5.dex */
final class C1744v {

    /* JADX INFO: renamed from: a */
    private static C1737o f536a;

    /* JADX INFO: renamed from: a */
    static synchronized C1737o m422a(Context context) {
        try {
            if (f536a == null) {
                C1733m c1733m = new C1733m(null);
                c1733m.m415a(AbstractC1754ae.m450a(context));
                f536a = c1733m.mo416b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f536a;
    }
}
