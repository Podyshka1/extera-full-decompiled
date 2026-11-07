package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzky extends zzyd implements zzzj {
    private static final zzky zzp;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private boolean zzo;

    static {
        zzky zzkyVar = new zzky();
        zzp = zzkyVar;
        zzyd.zzG(zzky.class, zzkyVar);
    }

    private zzky() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzp, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007\tင\b\nင\t\u000bင\n\fဇ\u000b", new Object[]{"zzb", "zzd", "zze", "zzf", zzku.zza, "zzg", zzkv.zza, "zzh", zzks.zza, "zzi", zzkw.zza, "zzj", zzkx.zza, "zzk", zzkr.zza, "zzl", "zzm", "zzn", "zzo"});
        }
        if (i2 == 3) {
            return new zzky();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzkt(bArr);
        }
        if (i2 == 5) {
            return zzp;
        }
        throw null;
    }
}
