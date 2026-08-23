package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgq extends zztp implements zzuy {
    private static final zzgq zzb;
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
    private int zzo;
    private boolean zzp;

    static {
        zzgq zzgqVar = new zzgq();
        zzb = zzgqVar;
        zztp.zzH(zzgq.class, zzgqVar);
    }

    private zzgq() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007\tင\b\nင\t\u000bင\n\fဇ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", zzgm.zza, "zzh", zzgn.zza, "zzi", zzgk.zza, "zzj", zzgo.zza, "zzk", zzgp.zza, "zzl", zzgj.zza, "zzm", "zzn", "zzo", "zzp"});
        }
        if (i2 == 3) {
            return new zzgq();
        }
        zzgi zzgiVar = null;
        if (i2 == 4) {
            return new zzgl(zzgiVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
