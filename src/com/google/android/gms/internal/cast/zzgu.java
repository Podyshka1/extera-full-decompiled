package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgu extends zztp implements zzuy {
    private static final zzgu zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private zzgq zzi;
    private int zzj;

    static {
        zzgu zzguVar = new zzgu();
        zzb = zzguVar;
        zztp.zzH(zzgu.class, zzguVar);
    }

    private zzgu() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003င\u0002\u0004င\u0003\u0005ဉ\u0004\u0006᠌\u0005", new Object[]{"zzd", "zze", "zzf", zzgt.zza, "zzg", "zzh", "zzi", "zzj", zzgs.zza});
        }
        if (i2 == 3) {
            return new zzgu();
        }
        zzgi zzgiVar = null;
        if (i2 == 4) {
            return new zzgr(zzgiVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
