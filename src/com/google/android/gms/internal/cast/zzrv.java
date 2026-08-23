package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrv extends zzyd implements zzzj {
    private static final zzrv zzm;
    private int zzb;
    private boolean zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private zztb zzh;
    private int zzi;
    private boolean zzj;
    private int zzk;
    private int zzl;

    static {
        zzrv zzrvVar = new zzrv();
        zzm = zzrvVar;
        zzyd.zzG(zzrv.class, zzrvVar);
    }

    private zzrv() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzm, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဇ\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005ဉ\u0004\u0006᠌\u0005\u0007ဇ\u0006\b᠌\u0007\tင\b", new Object[]{"zzb", "zzd", "zze", zzmi.zza(), "zzf", zzmm.zza(), "zzg", zzlk.zza(), "zzh", "zzi", zzmk.zza(), "zzj", "zzk", zzpq.zza(), "zzl"});
        }
        if (i2 == 3) {
            return new zzrv();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzru(bArr);
        }
        if (i2 == 5) {
            return zzm;
        }
        throw null;
    }
}
