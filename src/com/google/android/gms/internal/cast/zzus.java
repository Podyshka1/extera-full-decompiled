package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzus extends zzyd implements zzzj {
    private static final zzus zzm;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private boolean zzj;
    private int zzk;
    private boolean zzl;

    static {
        zzus zzusVar = new zzus();
        zzm = zzusVar;
        zzyd.zzG(zzus.class, zzusVar);
    }

    private zzus() {
    }

    public static zzur zza() {
        return (zzur) zzm.zzB();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzm, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\b᠌\u0007\tဇ\b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzlo.zza(), "zzl"});
        }
        if (i2 == 3) {
            return new zzus();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzur(bArr);
        }
        if (i2 == 5) {
            return zzm;
        }
        throw null;
    }

    public final /* synthetic */ void zzc(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzd(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void zze(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void zzf(String str) {
        str.getClass();
        this.zzb |= 8;
        this.zzg = str;
    }

    public final /* synthetic */ void zzg(String str) {
        str.getClass();
        this.zzb |= 16;
        this.zzh = str;
    }

    public final /* synthetic */ void zzh(String str) {
        str.getClass();
        this.zzb |= 32;
        this.zzi = str;
    }

    public final /* synthetic */ void zzj(int i) {
        this.zzk = i - 1;
        this.zzb |= 128;
    }
}
