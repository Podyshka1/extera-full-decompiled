package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvr extends zzyd implements zzzj {
    private static final zzvr zzl;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzh;
    private boolean zzj;
    private boolean zzk;
    private zzyl zzf = zzyd.zzM();
    private zzyl zzg = zzyd.zzM();
    private zzyj zzi = zzyd.zzJ();

    static {
        zzvr zzvrVar = new zzvr();
        zzl = zzvrVar;
        zzyd.zzG(zzvr.class, zzvrVar);
    }

    private zzvr() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0003\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003\u001b\u0004\u001b\u0005᠌\u0002\u0006ࠬ\u0007ဇ\u0003\bဇ\u0004", new Object[]{"zzb", "zzd", zzpe.zza(), "zze", zzpg.zza(), "zzf", zzrp.class, "zzg", zzrp.class, "zzh", zzmi.zza(), "zzi", zzpe.zza(), "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzvr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvq(bArr);
        }
        if (i2 == 5) {
            return zzl;
        }
        throw null;
    }
}
