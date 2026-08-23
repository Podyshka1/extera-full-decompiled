package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsz extends zzyd implements zzzj {
    private static final zzsz zzg;
    private int zzb;
    private int zzd;
    private long zze;
    private int zzf;

    static {
        zzsz zzszVar = new zzsz();
        zzg = zzszVar;
        zzyd.zzG(zzsz.class, zzszVar);
    }

    private zzsz() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", zzni.zza(), "zze", "zzf", zzlm.zza()});
        }
        if (i2 == 3) {
            return new zzsz();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzsy(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
