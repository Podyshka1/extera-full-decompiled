package com.google.android.gms.internal.base;

import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zak {
    public static final int zaa;

    static {
        zaa = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
