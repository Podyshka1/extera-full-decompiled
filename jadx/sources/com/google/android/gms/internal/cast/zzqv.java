package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqv extends zztp implements zzuy {
    private static final zzqv zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private zztx zzg = zztp.zzA();
    private zztx zzh = zztp.zzA();
    private int zzi;

    static {
        zzqv zzqvVar = new zzqv();
        zzb = zzqvVar;
        zztp.zzH(zzqv.class, zzqvVar);
    }

    private zzqv() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003\u001b\u0004\u001b\u0005᠌\u0002", new Object[]{"zzd", "zze", zzlz.zza(), "zzf", zzmc.zza(), "zzg", zzok.class, "zzh", zzok.class, "zzi", zzin.zza()});
        }
        if (i2 == 3) {
            return new zzqv();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqu(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
