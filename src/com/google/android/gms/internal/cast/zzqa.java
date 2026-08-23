package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqa extends zzyd implements zzzj {
    private static final zzqa zzk;
    private int zzb;
    private int zzd;
    private boolean zze;
    private int zzf;
    private boolean zzg;
    private zzyl zzh = zzyd.zzM();
    private zzyl zzi = zzyd.zzM();
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzqa zzqaVar = new zzqa();
        zzk = zzqaVar;
        zzyd.zzG(zzqa.class, zzqaVar);
    }

    private zzqa() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzk, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002\u0004ဇ\u0003\u0007\u001b\b\u001b\tဈ\u0004", new Object[]{"zzb", "zzd", zzle.zza(), "zze", "zzf", zzmi.zza(), "zzg", "zzh", zztl.class, "zzi", zztl.class, "zzj"});
        }
        if (i2 == 3) {
            return new zzqa();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzpz(bArr);
        }
        if (i2 == 5) {
            return zzk;
        }
        throw null;
    }
}
