package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqi extends zzyd implements zzzj {
    private static final zzqi zzh;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzqi zzqiVar = new zzqi();
        zzh = zzqiVar;
        zzyd.zzG(zzqi.class, zzqiVar);
    }

    private zzqi() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဋ\u0001\u0003᠌\u0002\u0004င\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", zzmw.zza(), "zzg"});
        }
        if (i2 == 3) {
            return new zzqi();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzqh(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }
}
