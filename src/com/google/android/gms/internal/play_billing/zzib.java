package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
public final class zzib extends zzfi implements zzgm {
    private static final zzib zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private int zzh;

    static {
        zzib zzibVar = new zzib();
        zzb = zzibVar;
        zzfi.zzw(zzib.class, zzibVar);
    }

    private zzib() {
    }

    public static /* synthetic */ void zzB(zzib zzibVar, zzil zzilVar) {
        zzibVar.zzh = zzilVar.zza();
        zzibVar.zzd |= 2;
    }

    public static /* synthetic */ void zzD(zzib zzibVar, zzjf zzjfVar) {
        zzjfVar.getClass();
        zzibVar.zzf = zzjfVar;
        zzibVar.zze = 4;
    }

    public static /* synthetic */ void zzE(zzib zzibVar, zzjv zzjvVar) {
        zzjvVar.getClass();
        zzibVar.zzf = zzjvVar;
        zzibVar.zze = 3;
    }

    public static /* synthetic */ void zzF(zzib zzibVar, int i) {
        zzibVar.zzg = i - 1;
        zzibVar.zzd |= 1;
    }

    public static zzhz zzc() {
        return (zzhz) zzb.zzl();
    }

    public final zzjf zzA() {
        return this.zze == 4 ? (zzjf) this.zzf : zzjf.zzd();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005᠌\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", zzhy.zza, zziz.class, zzjv.class, zzjf.class, "zzh", zzik.zza});
        }
        if (i2 == 3) {
            return new zzib();
        }
        zzia zziaVar = null;
        if (i2 == 4) {
            return new zzhz(zziaVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
