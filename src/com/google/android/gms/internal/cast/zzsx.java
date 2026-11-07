package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsx extends zzyd implements zzzj {
    private static final zzsx zzf;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzsx zzsxVar = new zzsx();
        zzf = zzsxVar;
        zzyd.zzG(zzsx.class, zzsxVar);
    }

    private zzsx() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzsx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzsw(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
