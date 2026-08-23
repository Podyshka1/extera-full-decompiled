package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpz extends zztp implements zzuy {
    private static final zzpz zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzpz zzpzVar = new zzpz();
        zzb = zzpzVar;
        zztp.zzH(zzpz.class, zzpzVar);
    }

    private zzpz() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", zzka.zza(), "zzg"});
        }
        if (i2 == 3) {
            return new zzpz();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpy(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
