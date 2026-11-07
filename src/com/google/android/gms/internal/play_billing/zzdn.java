package com.google.android.gms.internal.play_billing;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdn extends zzfi implements zzgm {
    private static final zzdn zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzdn zzdnVar = new zzdn();
        zzb = zzdnVar;
        zzfi.zzw(zzdn.class, zzdnVar);
    }

    private zzdn() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzdn();
        }
        zzdo zzdoVar = null;
        if (i2 == 4) {
            return new zzdm(zzdoVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
