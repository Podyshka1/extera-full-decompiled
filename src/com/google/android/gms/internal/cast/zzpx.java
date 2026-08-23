package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpx extends zztp implements zzuy {
    private static final zzpx zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;
    private int zzi;
    private int zzj;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzk = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzpx zzpxVar = new zzpx();
        zzb = zzpxVar;
        zztp.zzH(zzpx.class, zzpxVar);
    }

    private zzpx() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003င\u0002\u0004ဈ\u0003\u0005င\u0004\u0006င\u0005\u0007ဈ\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzpx();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpw(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
