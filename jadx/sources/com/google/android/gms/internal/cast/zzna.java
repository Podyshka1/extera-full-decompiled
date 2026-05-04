package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzna extends zztp implements zzuy {
    private static final zzna zzb;
    private int zzd;
    private int zze;
    private double zzf;
    private double zzg;
    private double zzh;
    private double zzi;

    static {
        zzna zznaVar = new zzna();
        zzb = zznaVar;
        zztp.zzH(zzna.class, zznaVar);
    }

    private zzna() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဋ\u0000\u0002က\u0001\u0003က\u0002\u0004က\u0003\u0005က\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzna();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzmz(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
