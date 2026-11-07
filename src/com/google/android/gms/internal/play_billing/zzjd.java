package com.google.android.gms.internal.play_billing;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjd extends zzfi implements zzgm {
    private static final zzjd zzb;
    private int zzd;
    private int zze;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzjd zzjdVar = new zzjd();
        zzb = zzjdVar;
        zzfi.zzw(zzjd.class, zzjdVar);
    }

    private zzjd() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", zzjc.zza, "zzf"});
        }
        if (i2 == 3) {
            return new zzjd();
        }
        zzje zzjeVar = null;
        if (i2 == 4) {
            return new zzjb(zzjeVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
