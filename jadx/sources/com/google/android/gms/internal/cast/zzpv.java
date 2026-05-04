package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpv extends zztp implements zzuy {
    private static final zzpv zzb;
    private int zzd;
    private int zze;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzpv zzpvVar = new zzpv();
        zzb = zzpvVar;
        zztp.zzH(zzpv.class, zzpvVar);
    }

    private zzpv() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzpv();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpu(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
