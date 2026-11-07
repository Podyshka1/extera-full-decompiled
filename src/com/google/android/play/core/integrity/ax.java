package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.ag;

/* JADX INFO: loaded from: classes5.dex */
abstract class ax {

    /* JADX INFO: renamed from: a */
    private static aw f299a;

    /* JADX INFO: renamed from: a */
    public static synchronized aw m381a(Context context) {
        try {
            if (f299a == null) {
                C1917u c1917u = new C1917u(null);
                c1917u.m409a(ag.m436a(context));
                f299a = c1917u.mo379b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f299a;
    }
}
