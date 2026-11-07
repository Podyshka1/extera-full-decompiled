package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsr extends zzyd implements zzzj {
    private static final zzsr zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        zzsr zzsrVar = new zzsr();
        zzf = zzsrVar;
        zzyd.zzG(zzsr.class, zzsrVar);
    }

    private zzsr() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzb", "zzd", zzmg.zza(), "zze"});
        }
        if (i2 == 3) {
            return new zzsr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzsq(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
