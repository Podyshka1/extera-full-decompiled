package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoc extends zztp implements zzuy {
    private static final zzoc zzb;
    private int zzd;
    private long zzf;
    private long zzg;
    private int zzi;
    private boolean zzj;
    private long zzl;
    private long zzm;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zztx zzh = zztp.zzA();
    private String zzk = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzoc zzocVar = new zzoc();
        zzb = zzocVar;
        zztp.zzH(zzoc.class, zzocVar);
    }

    private zzoc() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004\u001b\u0005င\u0003\u0006ဇ\u0004\u0007ဈ\u0005\bဂ\u0006\tဂ\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzoa.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new zzoc();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzob(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
