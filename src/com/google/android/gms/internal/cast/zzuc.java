package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuc extends zzyd implements zzzj {
    private static final zzuc zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        zzuc zzucVar = new zzuc();
        zzf = zzucVar;
        zzyd.zzG(zzuc.class, zzucVar);
    }

    private zzuc() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzuc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzub(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
