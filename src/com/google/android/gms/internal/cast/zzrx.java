package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrx extends zzyd implements zzzj {
    private static final zzrx zzl;
    private int zzb;
    private boolean zze;
    private boolean zzf;
    private zzvv zzg;
    private boolean zzh;
    private long zzj;
    private long zzk;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzyj zzi = zzyd.zzJ();

    static {
        zzrx zzrxVar = new zzrx();
        zzl = zzrxVar;
        zzyd.zzG(zzrx.class, zzrxVar);
    }

    private zzrx() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဉ\u0003\u0004ဇ\u0004\u0005ࠬ\u0006ဇ\u0002\u0007ဂ\u0005\bဂ\u0006", new Object[]{"zzb", "zzd", "zze", "zzg", "zzh", "zzi", zzpi.zza(), "zzf", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzrx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzrw(bArr);
        }
        if (i2 == 5) {
            return zzl;
        }
        throw null;
    }
}
