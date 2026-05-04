package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqj extends zztp implements zzuy {
    private static final zzqj zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zztx zzf = zztp.zzA();
    private zztx zzg = zztp.zzA();
    private boolean zzh;

    static {
        zzqj zzqjVar = new zzqj();
        zzb = zzqjVar;
        zztp.zzH(zzqj.class, zzqjVar);
    }

    private zzqj() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001", new Object[]{"zzd", "zze", "zzf", zzoz.class, "zzg", zzok.class, "zzh"});
        }
        if (i2 == 3) {
            return new zzqj();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqi(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
