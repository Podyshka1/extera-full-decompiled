package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.ag;

/* JADX INFO: loaded from: classes5.dex */
abstract class ax {

    /* JADX INFO: renamed from: a */
    private static aw f298a;

    /* JADX INFO: renamed from: a */
    public static synchronized aw m357a(Context context) {
        try {
            if (f298a == null) {
                C1796u c1796u = new C1796u(null);
                c1796u.m385a(ag.m412a(context));
                f298a = c1796u.mo355b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f298a;
    }
}
