package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoa extends zztp implements zzuy {
    private static final zzoa zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private long zzf;

    static {
        zzoa zzoaVar = new zzoa();
        zzb = zzoaVar;
        zztp.zzH(zzoa.class, zzoaVar);
    }

    private zzoa() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzoa();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznz(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
