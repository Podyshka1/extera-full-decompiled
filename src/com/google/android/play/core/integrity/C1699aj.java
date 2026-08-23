package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.AbstractC1754ae;

/* JADX INFO: renamed from: com.google.android.play.core.integrity.aj */
/* JADX INFO: loaded from: classes5.dex */
final class C1699aj {

    /* JADX INFO: renamed from: a */
    private static C1741s f467a;

    /* JADX INFO: renamed from: a */
    static synchronized C1741s m396a(Context context) {
        try {
            if (f467a == null) {
                C1739q c1739q = new C1739q(null);
                c1739q.m420a(AbstractC1754ae.m450a(context));
                f467a = c1739q.mo395b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f467a;
    }
}
