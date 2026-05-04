package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpt extends zztp implements zzuy {
    private static final zzpt zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzpt zzptVar = new zzpt();
        zzb = zzptVar;
        zztp.zzH(zzpt.class, zzptVar);
    }

    private zzpt() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzpt();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzps(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
