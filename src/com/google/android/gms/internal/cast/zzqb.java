package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqb extends zztp implements zzuy {
    private static final zzqb zzb;
    private int zzd;
    private zztx zze = zztp.zzA();
    private zztx zzf = zztp.zzA();
    private zzql zzg;

    static {
        zzqb zzqbVar = new zzqb();
        zzb = zzqbVar;
        zztp.zzH(zzqb.class, zzqbVar);
    }

    private zzqb() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"zzd", "zze", zzqr.class, "zzf", zzoi.class, "zzg"});
        }
        if (i2 == 3) {
            return new zzqb();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqa(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
