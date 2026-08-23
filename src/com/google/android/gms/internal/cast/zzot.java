package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzot extends zztp implements zzuy {
    private static final zztv zzb = new zzor();
    private static final zzot zzd;
    private int zze;
    private boolean zzg;
    private boolean zzh;
    private zzra zzi;
    private boolean zzj;
    private long zzl;
    private long zzm;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private zztu zzk = zztp.zzy();

    static {
        zzot zzotVar = new zzot();
        zzd = zzotVar;
        zztp.zzH(zzot.class, zzotVar);
    }

    private zzot() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzd, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဉ\u0003\u0004ဇ\u0004\u0005ࠬ\u0006ဇ\u0002\u0007ဂ\u0005\bဂ\u0006", new Object[]{"zze", "zzf", "zzg", "zzi", "zzj", "zzk", zzmf.zza(), "zzh", "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new zzot();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzos(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzd;
    }
}
