package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabb extends zzyd implements zzzj {
    private static final zzabb zzg;
    private zzyl zzb = zzyd.zzM();
    private zzyl zzd = zzyd.zzM();
    private zzyl zze = zzyd.zzM();
    private zzyl zzf = zzyd.zzM();

    static {
        zzabb zzabbVar = new zzabb();
        zzg = zzabbVar;
        zzyd.zzG(zzabb.class, zzabbVar);
    }

    private zzabb() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u001b", new Object[]{"zzb", zzaaz.class, "zzd", zzaav.class, "zze", zzaaz.class, "zzf", zzaav.class});
        }
        if (i2 == 3) {
            return new zzabb();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaba(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
