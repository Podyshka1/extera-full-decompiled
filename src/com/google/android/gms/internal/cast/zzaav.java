package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaav extends zzyd implements zzzj {
    private static final zzaav zzg;
    private int zzb;
    private zzabd zzd;
    private int zze;
    private int zzf;

    static {
        zzaav zzaavVar = new zzaav();
        zzg = zzaavVar;
        zzyd.zzG(zzaav.class, zzaavVar);
    }

    private zzaav() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", "zze", zzaau.zza, "zzf", zzaat.zza});
        }
        if (i2 == 3) {
            return new zzaav();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaas(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
