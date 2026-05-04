package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzif {
    int zzb;
    private int zzd;
    private boolean zze;

    public static long zza(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    static zzif zza(byte[] bArr, int i, int i2, boolean z) {
        zzih zzihVar = new zzih(bArr, i2);
        try {
            zzihVar.zzc(i2);
            return zzihVar;
        } catch (zzjk e) {
            throw new IllegalArgumentException(e);
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
