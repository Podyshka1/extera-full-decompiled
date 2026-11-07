package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvt extends zzyd implements zzzj {
    private static final zzvt zzg;
    private int zzb;
    private int zzd;
    private long zze;
    private long zzf;

    static {
        zzvt zzvtVar = new zzvt();
        zzg = zzvtVar;
        zzyd.zzG(zzvt.class, zzvtVar);
    }

    private zzvt() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"zzb", "zzd", zzpk.zza(), "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzvt();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvs(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
