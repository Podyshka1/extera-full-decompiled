package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuu extends zzyd implements zzzj {
    private static final zzuu zzh;
    private int zzb;
    private long zzd;
    private boolean zze;
    private long zzf;
    private boolean zzg;

    static {
        zzuu zzuuVar = new zzuu();
        zzh = zzuuVar;
        zzyd.zzG(zzuu.class, zzuuVar);
    }

    private zzuu() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzuu();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzut(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }
}
