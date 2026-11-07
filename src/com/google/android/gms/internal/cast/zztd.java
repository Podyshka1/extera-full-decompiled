package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zztd extends zzyd implements zzzj {
    private static final zztd zzh;
    private int zzb;
    private float zze;
    private int zzg;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzyi zzf = zzyd.zzL();

    static {
        zztd zztdVar = new zztd();
        zzh = zztdVar;
        zzyd.zzG(zztd.class, zztdVar);
    }

    private zztd() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002ခ\u0001\u0003$\u0004င\u0002", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zztd();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zztc(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }
}
