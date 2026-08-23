package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmv extends zztp implements zzuy {
    private static final zztv zzb = new zzmt();
    private static final zzmv zzd;
    private int zze;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private zztu zzh = zztp.zzy();

    static {
        zzmv zzmvVar = new zzmv();
        zzd = zzmvVar;
        zztp.zzH(zzmv.class, zzmvVar);
    }

    private zzmv() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzd, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ࠞ", new Object[]{"zze", "zzf", "zzg", "zzh", zzml.zzb()});
        }
        if (i2 == 3) {
            return new zzmv();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzmu(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzd;
    }
}
