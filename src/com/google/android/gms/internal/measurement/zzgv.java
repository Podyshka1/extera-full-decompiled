package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgv extends zzmf implements zznn {
    private static final zzgv zzi;
    private int zzb;
    private int zzg;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzgv zzgvVar = new zzgv();
        zzi = zzgvVar;
        zzmf.zzcp(zzgv.class, zzgvVar);
    }

    private zzgv() {
    }

    public static zzgv zze() {
        return zzi;
    }

    public final String zza() {
        return this.zzd;
    }

    public final String zzb() {
        return this.zze;
    }

    public final int zzc() {
        return this.zzg;
    }

    public final String zzd() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzgv();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzgu(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }
}
