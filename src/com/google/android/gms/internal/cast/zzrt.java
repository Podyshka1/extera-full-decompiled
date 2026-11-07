package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrt extends zzyd implements zzzj {
    private static final zzrt zzh;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private zzyl zzg = zzyd.zzM();

    static {
        zzrt zzrtVar = new zzrt();
        zzh = zzrtVar;
        zzyd.zzG(zzrt.class, zzrtVar);
    }

    private zzrt() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzrs.class});
        }
        if (i2 == 3) {
            return new zzrt();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzrq(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }
}
