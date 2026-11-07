package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzve extends zzyd implements zzzj {
    private static final zzve zze;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzve zzveVar = new zzve();
        zze = zzveVar;
        zzyd.zzG(zzve.class, zzveVar);
    }

    private zzve() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzb", "zzd"});
        }
        if (i2 == 3) {
            return new zzve();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvd(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }
}
