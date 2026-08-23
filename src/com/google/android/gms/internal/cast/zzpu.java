package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpu extends zzyd implements zzzj {
    private static final zzpu zzg;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzyj zzf = zzyd.zzJ();

    static {
        zzpu zzpuVar = new zzpu();
        zzg = zzpuVar;
        zzyd.zzG(zzpu.class, zzpuVar);
    }

    private zzpu() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ࠞ", new Object[]{"zzb", "zzd", "zze", "zzf", zzpm.zzb()});
        }
        if (i2 == 3) {
            return new zzpu();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzpt(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
