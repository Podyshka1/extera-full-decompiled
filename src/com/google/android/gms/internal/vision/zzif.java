package com.google.android.gms.internal.vision;

import androidx.core.app.NavUtils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzif {
    int zzb;
    private int zzd;
    private boolean zze;

    public static long zza(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static zzif zza(byte[] bArr, int i, int i2, boolean z) {
        zzih zzihVar = new zzih(bArr, i2);
        try {
            zzihVar.zzc(i2);
            return zzihVar;
        } catch (zzjk e) {
            NavUtils$$ExternalSyntheticBUOutline0.m89m(e);
            return null;
        }
    }

    public static int zze(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract int zzc(int i);

    public abstract int zzu();

    private zzif() {
        this.zzb = 100;
        this.zzd = Integer.MAX_VALUE;
        this.zze = false;
    }
}
