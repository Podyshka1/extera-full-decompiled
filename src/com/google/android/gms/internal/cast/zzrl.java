package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrl extends zzyd implements zzzj {
    private static final zzrl zzg;
    private int zzb;
    private int zzd = 0;
    private Object zze;
    private long zzf;

    static {
        zzrl zzrlVar = new zzrl();
        zzg = zzrlVar;
        zzyd.zzG(zzrl.class, zzrlVar);
    }

    private zzrl() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001စ\u0000\u0002:\u0000\u00035\u0000\u00048\u0000", new Object[]{"zze", "zzd", "zzb", "zzf"});
        }
        if (i2 == 3) {
            return new zzrl();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzrk(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
