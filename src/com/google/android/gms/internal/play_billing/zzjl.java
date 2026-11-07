package com.google.android.gms.internal.play_billing;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class zzjl extends zzfi implements zzgm {
    private static final zzjl zzb;
    private int zzd;
    private int zzf;
    private zzfn zze = zzfi.zzr();
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzjl zzjlVar = new zzjl();
        zzb = zzjlVar;
        zzfi.zzw(zzjl.class, zzjlVar);
    }

    private zzjl() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002င\u0000\u0003ဈ\u0001", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzjl();
        }
        zzjk zzjkVar = null;
        if (i2 == 4) {
            return new zzjj(zzjkVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
