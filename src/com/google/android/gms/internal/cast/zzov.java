package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzov extends zztp implements zzuy {
    private static final zzov zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private zztu zzg = zztp.zzy();
    private zztu zzh = zztp.zzy();
    private zztx zzi = zztp.zzA();
    private zztx zzj = zztp.zzA();
    private int zzk;

    static {
        zzov zzovVar = new zzov();
        zzb = zzovVar;
        zztp.zzH(zzov.class, zzovVar);
    }

    private zzov() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001င\u0000\u0002᠌\u0001\u0003\u0016\u0004\u0016\u0005\u001a\u0006\u001a\u0007᠌\u0002", new Object[]{"zzd", "zze", "zzf", zziz.zza(), "zzg", "zzh", "zzi", "zzj", "zzk", zzin.zza()});
        }
        if (i2 == 3) {
            return new zzov();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzou(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
