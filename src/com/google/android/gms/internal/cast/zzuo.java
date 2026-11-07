package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuo extends zzyd implements zzzj {
    private static final zzuo zzh;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzyl zze = zzyd.zzM();
    private zzyl zzf = zzyd.zzM();
    private boolean zzg;

    static {
        zzuo zzuoVar = new zzuo();
        zzh = zzuoVar;
        zzyd.zzG(zzuo.class, zzuoVar);
    }

    private zzuo() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001", new Object[]{"zzb", "zzd", "zze", zzsl.class, "zzf", zzrp.class, "zzg"});
        }
        if (i2 == 3) {
            return new zzuo();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzun(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }
}
