package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zztu extends zzyd implements zzzj {
    private static final zztu zze;
    private int zzb;
    private int zzd;

    static {
        zztu zztuVar = new zztu();
        zze = zztuVar;
        zzyd.zzG(zztu.class, zztuVar);
    }

    private zztu() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzb", "zzd", zztt.zza});
        }
        if (i2 == 3) {
            return new zztu();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzts(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }
}
