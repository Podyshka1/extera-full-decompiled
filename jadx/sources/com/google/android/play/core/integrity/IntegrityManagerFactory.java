package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class IntegrityManagerFactory {
    private IntegrityManagerFactory() {
    }

    public static IntegrityManager create(Context context) {
        return C1744v.m422a(context).m419a();
    }

    public static StandardIntegrityManager createStandard(Context context) {
        return C1699aj.m396a(context).m421a();
    }
}
