package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrc extends zztp implements zzuy {
    private static final zzrc zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private long zzf;
    private long zzg;
    private zzre zzh;

    static {
        zzrc zzrcVar = new zzrc();
        zzb = zzrcVar;
        zztp.zzH(zzrc.class, zzrcVar);
    }

    private zzrc() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဉ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzrc();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzrb(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
