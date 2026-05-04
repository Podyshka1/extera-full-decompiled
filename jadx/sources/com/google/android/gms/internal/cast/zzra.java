package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzra extends zztp implements zzuy {
    private static final zztv zzb = new zzqy();
    private static final zzra zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzi;
    private long zzk;
    private zztu zzh = zztp.zzy();
    private zztx zzj = zztp.zzA();

    static {
        zzra zzraVar = new zzra();
        zzd = zzraVar;
        zztp.zzH(zzra.class, zzraVar);
    }

    private zzra() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzd, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003ࠞ\u0005᠌\u0002\u0006\u001b\u0007ဂ\u0003", new Object[]{"zze", "zzf", zzmi.zza(), "zzg", zzin.zza(), "zzh", zzmf.zza(), "zzi", zzhv.zza(), "zzj", zzqx.class, "zzk"});
        }
        if (i2 == 3) {
            return new zzra();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqz(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzd;
    }
}
