package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzsw extends zzsy {
    private final byte[] zzb;
    private int zzc;
    private int zzd;
    private int zze;

    /* synthetic */ zzsw(byte[] bArr, int i, int i2, boolean z, zzsv zzsvVar) {
        super(null);
        this.zze = Integer.MAX_VALUE;
        this.zzb = bArr;
        this.zzc = 0;
    }

    public final int zza(int i) {
        int i2 = this.zze;
        this.zze = 0;
        int i3 = this.zzc + this.zzd;
        this.zzc = i3;
        if (i3 <= 0) {
            this.zzd = 0;
            return i2;
        }
        this.zzd = i3;
        this.zzc = 0;
        return i2;
    }
}
