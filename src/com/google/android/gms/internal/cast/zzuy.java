package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuy extends zzyd implements zzzj {
    private static final zzuy zzi;
    private int zzb;
    private long zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;

    static {
        zzuy zzuyVar = new zzuy();
        zzi = zzuyVar;
        zzyd.zzG(zzuy.class, zzuyVar);
    }

    private zzuy() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzuy();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzux(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }
}
