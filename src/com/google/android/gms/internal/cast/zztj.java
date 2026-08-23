package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zztj extends zzyd implements zzzj {
    private static final zztj zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zztj zztjVar = new zztj();
        zzg = zztjVar;
        zzyd.zzG(zztj.class, zztjVar);
    }

    private zztj() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zztj();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzti(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
