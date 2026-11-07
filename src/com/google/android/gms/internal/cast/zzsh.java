package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsh extends zzyd implements zzzj {
    private static final zzsh zzl;
    private int zzb;
    private zzsf zzd;
    private int zze;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzvp zzh;
    private zzvn zzi;
    private int zzj;
    private zzvl zzk;

    static {
        zzsh zzshVar = new zzsh();
        zzl = zzshVar;
        zzyd.zzG(zzsh.class, zzshVar);
    }

    private zzsh() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007᠌\u0006\bဉ\u0007", new Object[]{"zzb", "zzd", "zze", zzvj.zza, "zzf", "zzg", "zzh", "zzi", "zzj", zzsc.zza, "zzk"});
        }
        if (i2 == 3) {
            return new zzsh();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzsg(bArr);
        }
        if (i2 == 5) {
            return zzl;
        }
        throw null;
    }
}
