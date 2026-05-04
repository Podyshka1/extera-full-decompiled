package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzog extends zztp implements zzuy {
    private static final zzog zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private long zzg;

    static {
        zzog zzogVar = new zzog();
        zzb = zzogVar;
        zztp.zzH(zzog.class, zzogVar);
    }

    private zzog() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001စ\u0000\u0002:\u0000\u00035\u0000\u00048\u0000", new Object[]{"zzf", "zze", "zzd", "zzg"});
        }
        if (i2 == 3) {
            return new zzog();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzof(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
