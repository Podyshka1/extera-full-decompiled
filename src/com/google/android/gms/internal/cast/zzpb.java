package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpb extends zztp implements zzuy {
    private static final zzpb zzb;
    private int zzd;
    private zztx zze = zztp.zzA();
    private boolean zzf;
    private boolean zzg;
    private long zzh;
    private long zzi;
    private long zzj;

    static {
        zzpb zzpbVar = new zzpb();
        zzb = zzpbVar;
        zztp.zzH(zzpb.class, zzpbVar);
    }

    private zzpb() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001b\u0002ဇ\u0000\u0003ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u0006ဂ\u0004", new Object[]{"zzd", "zze", zzot.class, "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zzpb();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpa(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
