package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zztb extends zzyd implements zzzj {
    private static final zztb zzk;
    private int zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private boolean zzg;
    private int zzh;
    private int zzi;
    private boolean zzj;

    static {
        zztb zztbVar = new zztb();
        zzk = zztbVar;
        zzyd.zzG(zztb.class, zztbVar);
    }

    private zztb() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005᠌\u0004\u0006ဆ\u0005\u0007ဇ\u0006", new Object[]{"zzb", "zzd", "zze", zznk.zza(), "zzf", "zzg", "zzh", zzmc.zza(), "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new zztb();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzta(bArr);
        }
        if (i2 == 5) {
            return zzk;
        }
        throw null;
    }
}
