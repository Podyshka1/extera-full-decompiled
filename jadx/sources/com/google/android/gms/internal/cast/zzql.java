package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzql extends zztp implements zzuy {
    private static final zzql zzb;
    private int zzd;
    private zzna zze;

    static {
        zzql zzqlVar = new zzql();
        zzb = zzqlVar;
        zztp.zzH(zzql.class, zzqlVar);
    }

    private zzql() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzql();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqk(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
