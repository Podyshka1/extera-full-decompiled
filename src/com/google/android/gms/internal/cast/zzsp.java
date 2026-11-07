package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsp extends zzyd implements zzzj {
    private static final zzsp zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private zzsl zzf;

    static {
        zzsp zzspVar = new zzsp();
        zzg = zzspVar;
        zzyd.zzG(zzsp.class, zzspVar);
    }

    private zzsp() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzsp();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzso(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
