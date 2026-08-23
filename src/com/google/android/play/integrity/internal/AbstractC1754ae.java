package com.google.android.play.integrity.internal;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.ae */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1754ae {
    /* JADX INFO: renamed from: a */
    public static Context m450a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }
}
