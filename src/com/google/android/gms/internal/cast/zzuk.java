package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuk extends zzyd implements zzzj {
    private static final zzuk zzk;
    private int zzb;
    private zzrp zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private long zzi;
    private zzyl zzj = zzyd.zzM();

    static {
        zzuk zzukVar = new zzuk();
        zzk = zzukVar;
        zzyd.zzG(zzuk.class, zzukVar);
    }

    private zzuk() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006ဂ\u0005\u0007\u001b", new Object[]{"zzb", "zzd", "zze", zzoa.zza(), "zzf", zzny.zza(), "zzg", zzmi.zza(), "zzh", zzlm.zza(), "zzi", "zzj", zzrp.class});
        }
        if (i2 == 3) {
            return new zzuk();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzuj(bArr);
        }
        if (i2 == 5) {
            return zzk;
        }
        throw null;
    }
}
