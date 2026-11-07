package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlc extends zzyd implements zzzj {
    private static final zzlc zzj;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private zzky zzh;
    private int zzi;

    static {
        zzlc zzlcVar = new zzlc();
        zzj = zzlcVar;
        zzyd.zzG(zzlc.class, zzlcVar);
    }

    private zzlc() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003င\u0002\u0004င\u0003\u0005ဉ\u0004\u0006᠌\u0005", new Object[]{"zzb", "zzd", "zze", zzlb.zza, "zzf", "zzg", "zzh", "zzi", zzla.zza});
        }
        if (i2 == 3) {
            return new zzlc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzkz(bArr);
        }
        if (i2 == 5) {
            return zzj;
        }
        throw null;
    }
}
