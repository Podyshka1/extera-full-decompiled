package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoo extends zztp implements zzuy {
    private static final zzoo zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private zztx zzh = zztp.zzA();

    static {
        zzoo zzooVar = new zzoo();
        zzb = zzooVar;
        zztp.zzH(zzoo.class, zzooVar);
    }

    private zzoo() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzon.class});
        }
        if (i2 == 3) {
            return new zzoo();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzol(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
