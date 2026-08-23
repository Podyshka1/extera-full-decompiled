package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zziu extends zzmf implements zznn {
    private static final zziu zzj;
    private int zzb;
    private long zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private long zzg;
    private float zzh;
    private double zzi;

    static {
        zziu zziuVar = new zziu();
        zzj = zziuVar;
        zzmf.zzcp(zziu.class, zziuVar);
    }

    private zziu() {
    }

    public static zzit zzm() {
        return (zzit) zzj.zzck();
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final long zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zze;
    }

    public final boolean zzd() {
        return (this.zzb & 4) != 0;
    }

    public final String zze() {
        return this.zzf;
    }

    public final boolean zzf() {
        return (this.zzb & 8) != 0;
    }

    public final long zzg() {
        return this.zzg;
    }

    public final boolean zzh() {
        return (this.zzb & 16) != 0;
    }

    public final float zzi() {
        return this.zzh;
    }

    public final boolean zzj() {
        return (this.zzb & 32) != 0;
    }

    public final double zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zziu();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzit(bArr);
        }
        if (i2 == 5) {
            return zzj;
        }
        throw null;
    }

    final /* synthetic */ void zzn(long j) {
        this.zzb |= 1;
        this.zzd = j;
    }

    final /* synthetic */ void zzo(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    final /* synthetic */ void zzp(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzf = str;
    }

    final /* synthetic */ void zzq() {
        this.zzb &= -5;
        this.zzf = zzj.zzf;
    }

    final /* synthetic */ void zzr(long j) {
        this.zzb |= 8;
        this.zzg = j;
    }

    final /* synthetic */ void zzs() {
        this.zzb &= -9;
        this.zzg = 0L;
    }

    final /* synthetic */ void zzt(double d) {
        this.zzb |= 32;
        this.zzi = d;
    }

    final /* synthetic */ void zzu() {
        this.zzb &= -33;
        this.zzi = 0.0d;
    }
}
