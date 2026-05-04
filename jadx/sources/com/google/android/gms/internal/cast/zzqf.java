package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqf extends zztp implements zzuy {
    private static final zzqf zzb;
    private int zzd;
    private zzok zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private long zzj;
    private zztx zzk = zztp.zzA();

    static {
        zzqf zzqfVar = new zzqf();
        zzb = zzqfVar;
        zztp.zzH(zzqf.class, zzqfVar);
    }

    private zzqf() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006ဂ\u0005\u0007\u001b", new Object[]{"zzd", "zze", "zzf", zzkp.zza(), "zzg", zzkm.zza(), "zzh", zzin.zza(), "zzi", zzhj.zza(), "zzj", "zzk", zzok.class});
        }
        if (i2 == 3) {
            return new zzqf();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqe(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
