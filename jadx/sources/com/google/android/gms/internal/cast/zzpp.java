package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpp extends zztp implements zzuy {
    private static final zzpp zzb;
    private int zzd;
    private long zze;
    private zztw zzf = zztp.zzz();
    private zztw zzg = zztp.zzz();

    static {
        zzpp zzppVar = new zzpp();
        zzb = zzppVar;
        zztp.zzH(zzpp.class, zzppVar);
    }

    private zzpp() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001စ\u0000\u0002\u0017\u0003\u0017", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzpp();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzpo(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
