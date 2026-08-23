package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvl extends zzyd implements zzzj {
    private static final zzvl zzf;
    private int zzb;
    private long zzd;
    private boolean zze;

    static {
        zzvl zzvlVar = new zzvl();
        zzf = zzvlVar;
        zzyd.zzG(zzvl.class, zzvlVar);
    }

    private zzvl() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzvl();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvk(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
