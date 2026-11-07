package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjv extends zzfi implements zzgm {
    private static final zzjv zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;

    static {
        zzjv zzjvVar = new zzjv();
        zzb = zzjvVar;
        zzfi.zzw(zzjv.class, zzjvVar);
    }

    private zzjv() {
    }

    public static /* synthetic */ void zzA(zzjv zzjvVar, boolean z) {
        zzjvVar.zzd |= 8;
        zzjvVar.zzh = z;
    }

    public static /* synthetic */ void zzB(zzjv zzjvVar, int i) {
        zzjvVar.zzd |= 16;
        zzjvVar.zzi = i;
    }

    public static /* synthetic */ void zzC(zzjv zzjvVar, long j) {
        zzjvVar.zzd |= 4;
        zzjvVar.zzg = j;
    }

    public static /* synthetic */ void zzD(zzjv zzjvVar, boolean z) {
        zzjvVar.zzd |= 2;
        zzjvVar.zzf = true;
    }

    public static zzjt zzc() {
        return (zzjt) zzb.zzl();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzjv();
        }
        zzju zzjuVar = null;
        if (i2 == 4) {
            return new zzjt(zzjuVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
