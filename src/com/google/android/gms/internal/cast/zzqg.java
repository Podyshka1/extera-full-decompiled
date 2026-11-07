package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqg extends zzyd implements zzzj {
    private static final zzqg zzs;
    private int zzb;
    private zzrp zzd;
    private boolean zze;
    private long zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private zzui zzl;
    private int zzm;
    private int zzn;
    private boolean zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;

    static {
        zzqg zzqgVar = new zzqg();
        zzs = zzqgVar;
        zzyd.zzG(zzqg.class, zzqgVar);
    }

    private zzqg() {
    }

    public static zzqf zza() {
        return (zzqf) zzs.zzB();
    }

    public static zzqf zzc(zzqg zzqgVar) {
        zzya zzyaVarZzB = zzs.zzB();
        zzyaVarZzB.zzv(zzqgVar);
        return (zzqf) zzyaVarZzB;
    }

    public static zzqg zzd() {
        return zzs;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzs, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဇ\u0001\u0003စ\u0002\u0004ဆ\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007င\u0006\bင\u0007\tဉ\b\n᠌\t\u000bင\n\fဇ\u000b\rင\f\u000eင\r\u000fဇ\u000e", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", zzli.zza(), "zzi", zzlg.zza(), "zzj", "zzk", "zzl", "zzm", zzmk.zza(), "zzn", "zzo", "zzp", "zzq", "zzr"});
        }
        if (i2 == 3) {
            return new zzqg();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzqf(bArr);
        }
        if (i2 == 5) {
            return zzs;
        }
        throw null;
    }

    public final /* synthetic */ void zze(zzrp zzrpVar) {
        zzrpVar.getClass();
        this.zzd = zzrpVar;
        this.zzb |= 1;
    }

    public final /* synthetic */ void zzf(boolean z) {
        this.zzb |= 2;
        this.zze = z;
    }

    public final /* synthetic */ void zzg(long j) {
        this.zzb |= 4;
        this.zzf = j;
    }

    public final /* synthetic */ void zzh(int i) {
        this.zzb |= 64;
        this.zzj = i;
    }

    public final /* synthetic */ void zzi(int i) {
        this.zzb |= 128;
        this.zzk = i;
    }

    public final /* synthetic */ void zzj(int i) {
        this.zzb |= 1024;
        this.zzn = i;
    }

    public final /* synthetic */ void zzk(boolean z) {
        this.zzb |= 2048;
        this.zzo = z;
    }

    public final /* synthetic */ void zzl(int i) {
        this.zzb |= 4096;
        this.zzp = i;
    }

    public final /* synthetic */ void zzm(int i) {
        this.zzb |= 8192;
        this.zzq = i;
    }

    public final /* synthetic */ void zzn(boolean z) {
        this.zzb |= 16384;
        this.zzr = z;
    }
}
