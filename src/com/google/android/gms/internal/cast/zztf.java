package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zztf extends zzyd implements zzzj {
    private static final zztf zzg;
    private int zzb;
    private long zzd;
    private zzyk zze = zzyd.zzK();
    private zzyk zzf = zzyd.zzK();

    static {
        zztf zztfVar = new zztf();
        zzg = zztfVar;
        zzyd.zzG(zztf.class, zztfVar);
    }

    private zztf() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001စ\u0000\u0002\u0017\u0003\u0017", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zztf();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzte(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
