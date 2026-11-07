package com.google.android.play.integrity.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ag {
    /* JADX INFO: renamed from: a */
    public static Context m412a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }
}
