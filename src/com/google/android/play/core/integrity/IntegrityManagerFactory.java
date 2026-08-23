package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class IntegrityManagerFactory {
    private IntegrityManagerFactory() {
    }

    public static IntegrityManager create(Context context) {
        return C1695v.m386a(context).m383a();
    }

    public static StandardIntegrityManager createStandard(Context context) {
        return aj.m360a(context).m385a();
    }
}
