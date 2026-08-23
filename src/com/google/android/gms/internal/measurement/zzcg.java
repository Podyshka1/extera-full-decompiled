package com.google.android.gms.internal.measurement;

import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcg {
    public static final int zza;

    static {
        zza = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }
}
