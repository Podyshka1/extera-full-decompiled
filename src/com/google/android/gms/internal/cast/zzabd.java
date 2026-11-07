package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabd extends zzyd implements zzzj {
    private static final zzabd zzd;
    private zzyl zzb = zzyd.zzM();

    static {
        zzabd zzabdVar = new zzabd();
        zzd = zzabdVar;
        zzyd.zzG(zzabd.class, zzabdVar);
    }

    private zzabd() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zzabf.class});
        }
        if (i2 == 3) {
            return new zzabd();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzabc(bArr);
        }
        if (i2 == 5) {
            return zzd;
        }
        throw null;
    }
}
