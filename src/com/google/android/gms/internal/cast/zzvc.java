package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvc extends zzyd implements zzzj {
    private static final zzvc zzi;
    private int zzb;
    private int zzd;
    private boolean zze;
    private zzyl zzf = zzyd.zzM();
    private zzyl zzg = zzyd.zzM();
    private boolean zzh;

    static {
        zzvc zzvcVar = new zzvc();
        zzi = zzvcVar;
        zzyd.zzG(zzvc.class, zzvcVar);
    }

    private zzvc() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003\u001b\u0004\u001b\u0005ဇ\u0002", new Object[]{"zzb", "zzd", zzok.zza(), "zze", "zzf", zzuy.class, "zzg", zzva.class, "zzh"});
        }
        if (i2 == 3) {
            return new zzvc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvb(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }
}
