package com.google.android.play.integrity.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ae {
    /* JADX INFO: renamed from: a */
    public static Context m414a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }
}
