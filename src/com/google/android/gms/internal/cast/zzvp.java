package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvp extends zzyd implements zzzj {
    private static final zzvp zzg;
    private int zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private int zze;
    private zztd zzf;

    static {
        zzvp zzvpVar = new zzvp();
        zzg = zzvpVar;
        zzyd.zzG(zzvp.class, zzvpVar);
    }

    private zzvp() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zzd", "zze", zzsa.zza, "zzf"});
        }
        if (i2 == 3) {
            return new zzvp();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvo(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
