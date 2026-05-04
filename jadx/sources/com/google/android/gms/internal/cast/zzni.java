package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzni extends zztp implements zzuy {
    private static final zzni zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzni zzniVar = new zzni();
        zzb = zzniVar;
        zztp.zzH(zzni.class, zzniVar);
    }

    private zzni() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဋ\u0001\u0003᠌\u0002\u0004င\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", zzji.zza(), "zzh"});
        }
        if (i2 == 3) {
            return new zzni();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznh(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
