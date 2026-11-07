package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zztr extends zzyd implements zzzj {
    private static final zztr zzg;
    private int zzb;
    private zzyl zzd = zzyd.zzM();
    private zzyl zze = zzyd.zzM();
    private zzuq zzf;

    static {
        zztr zztrVar = new zztr();
        zzg = zztrVar;
        zzyd.zzG(zztr.class, zztrVar);
    }

    private zztr() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"zzb", "zzd", zzvg.class, "zze", zzrn.class, "zzf"});
        }
        if (i2 == 3) {
            return new zztr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zztq(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
