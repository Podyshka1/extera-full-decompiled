package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzng extends zztp implements zzuy {
    private static final zzng zzb;
    private int zzd;
    private zzok zze;
    private boolean zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private zzqd zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private int zzq;
    private int zzr;
    private boolean zzs;

    static {
        zzng zzngVar = new zzng();
        zzb = zzngVar;
        zztp.zzH(zzng.class, zzngVar);
    }

    private zzng() {
    }

    public static zznf zza() {
        return (zznf) zzb.zzv();
    }

    public static zznf zzc(zzng zzngVar) {
        zztm zztmVarZzv = zzb.zzv();
        zztmVarZzv.zzp(zzngVar);
        return (zznf) zztmVarZzv;
    }

    public static zzng zze() {
        return zzb;
    }

    static /* synthetic */ void zzf(zzng zzngVar, zzok zzokVar) {
        zzokVar.getClass();
        zzngVar.zze = zzokVar;
        zzngVar.zzd |= 1;
    }

    static /* synthetic */ void zzg(zzng zzngVar, boolean z) {
        zzngVar.zzd |= 2;
        zzngVar.zzf = z;
    }

    static /* synthetic */ void zzh(zzng zzngVar, long j) {
        zzngVar.zzd |= 4;
        zzngVar.zzg = j;
    }

    static /* synthetic */ void zzi(zzng zzngVar, int i) {
        zzngVar.zzd |= 64;
        zzngVar.zzk = i;
    }

    static /* synthetic */ void zzj(zzng zzngVar, int i) {
        zzngVar.zzd |= 128;
        zzngVar.zzl = i;
    }

    static /* synthetic */ void zzk(zzng zzngVar, int i) {
        zzngVar.zzd |= 1024;
        zzngVar.zzo = i;
    }

    static /* synthetic */ void zzl(zzng zzngVar, boolean z) {
        zzngVar.zzd |= 2048;
        zzngVar.zzp = z;
    }

    static /* synthetic */ void zzm(zzng zzngVar, int i) {
        zzngVar.zzd |= 4096;
        zzngVar.zzq = i;
    }

    static /* synthetic */ void zzn(zzng zzngVar, int i) {
        zzngVar.zzd |= 8192;
        zzngVar.zzr = i;
    }

    static /* synthetic */ void zzo(zzng zzngVar, boolean z) {
        zzngVar.zzd |= 16384;
        zzngVar.zzs = z;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဇ\u0001\u0003စ\u0002\u0004ဆ\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007င\u0006\bင\u0007\tဉ\b\n᠌\t\u000bင\n\fဇ\u000b\rင\f\u000eင\r\u000fဇ\u000e", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzhd.zza(), "zzj", zzha.zza(), "zzk", "zzl", "zzm", "zzn", zziq.zza(), "zzo", "zzp", "zzq", "zzr", "zzs"});
        }
        if (i2 == 3) {
            return new zzng();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznf(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
