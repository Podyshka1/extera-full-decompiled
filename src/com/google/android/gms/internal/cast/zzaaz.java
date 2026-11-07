package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaaz extends zzyd implements zzzj {
    private static final zzaaz zzg;
    private int zzb;
    private double zzd;
    private int zze;
    private int zzf;

    static {
        zzaaz zzaazVar = new zzaaz();
        zzg = zzaazVar;
        zzyd.zzG(zzaaz.class, zzaazVar);
    }

    private zzaaz() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001က\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", "zze", zzaay.zza, "zzf", zzaax.zza});
        }
        if (i2 == 3) {
            return new zzaaz();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaaw(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
