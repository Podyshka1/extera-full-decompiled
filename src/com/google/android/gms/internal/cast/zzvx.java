package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvx extends zzyd implements zzzj {
    private static final zzvx zzh;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private long zze;
    private long zzf;
    private zzvz zzg;

    static {
        zzvx zzvxVar = new zzvx();
        zzh = zzvxVar;
        zzyd.zzG(zzvx.class, zzvxVar);
    }

    private zzvx() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဉ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzvx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvw(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }
}
