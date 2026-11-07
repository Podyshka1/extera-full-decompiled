package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzum extends zzyd implements zzzj {
    private static final zzum zzg;
    private int zzb;
    private long zzd;
    private long zze;
    private zzyl zzf = zzyd.zzM();

    static {
        zzum zzumVar = new zzum();
        zzg = zzumVar;
        zzyd.zzG(zzum.class, zzumVar);
    }

    private zzum() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", zzuo.class});
        }
        if (i2 == 3) {
            return new zzum();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzul(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
