package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsv extends zzyd implements zzzj {
    private static final zzsv zzk;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private boolean zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    static {
        zzsv zzsvVar = new zzsv();
        zzk = zzsvVar;
        zzyd.zzG(zzsv.class, zzsvVar);
    }

    private zzsv() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007᠌\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzna.zza(), "zzh", zzne.zza(), "zzi", zznc.zza(), "zzj", zzng.zza()});
        }
        if (i2 == 3) {
            return new zzsv();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzsu(bArr);
        }
        if (i2 == 5) {
            return zzk;
        }
        throw null;
    }
}
