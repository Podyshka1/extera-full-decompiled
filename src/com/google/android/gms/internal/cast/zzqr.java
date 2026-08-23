package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqr extends zztp implements zzuy {
    private static final zzqr zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private zzna zzg;

    static {
        zzqr zzqrVar = new zzqr();
        zzb = zzqrVar;
        zztp.zzH(zzqr.class, zzqrVar);
    }

    private zzqr() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဋ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", zzlb.zza(), "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzqr();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqq(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
