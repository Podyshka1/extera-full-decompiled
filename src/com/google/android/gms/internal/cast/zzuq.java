package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuq extends zzyd implements zzzj {
    private static final zzuq zze;
    private int zzb;
    private zzpy zzd;

    static {
        zzuq zzuqVar = new zzuq();
        zze = zzuqVar;
        zzyd.zzG(zzuq.class, zzuqVar);
    }

    private zzuq() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zzb", "zzd"});
        }
        if (i2 == 3) {
            return new zzuq();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzup(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }
}
