package com.google.android.gms.internal.wearable;

import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzd {
    public static final int zza;

    static {
        zza = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
