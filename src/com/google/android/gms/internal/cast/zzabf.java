package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabf extends zzyd implements zzzj {
    private static final zzabf zzg;
    private int zzb;
    private long zzd;
    private long zze;
    private int zzf;

    static {
        zzabf zzabfVar = new zzabf();
        zzg = zzabfVar;
        zzyd.zzG(zzabf.class, zzabfVar);
    }

    private zzabf() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003င\u0002", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzabf();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzabe(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
