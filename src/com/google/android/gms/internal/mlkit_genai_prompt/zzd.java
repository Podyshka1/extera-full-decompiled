package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzd extends zzawy implements zzaxx {
    private static final zzd zzq;
    private int zzb;
    private long zzd;
    private long zze;
    private int zzf;
    private long zzg;
    private int zzh;
    private long zzi;
    private int zzj;
    private long zzk;
    private int zzl;
    private long zzm;
    private int zzn;
    private long zzo;
    private int zzp;

    static {
        zzd zzdVar = new zzd();
        zzq = zzdVar;
        zzawy.zzN(zzd.class, zzdVar);
    }

    private zzd() {
    }

    public static zzd zzo(byte[] bArr, zzawl zzawlVar) {
        return (zzd) zzawy.zzR(zzq, bArr, zzawlVar);
    }

    public final /* synthetic */ void zzA(long j) {
        this.zzb |= 2048;
        this.zzo = j;
    }

    public final /* synthetic */ void zzB(int i) {
        this.zzb |= 4096;
        this.zzp = i;
    }

    public final long zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzawy.zzO(zzq, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003င\u0002\u0004ဂ\u0003\u0005င\u0004\u0006ဂ\u0005\u0007င\u0006\bဂ\u0007\tင\b\nဂ\t\u000bင\n\fဂ\u000b\rင\f", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp"});
        }
        if (i2 == 3) {
            return new zzd();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzc(bArr);
        }
        if (i2 == 5) {
            return zzq;
        }
        throw null;
    }

    public final long zzc() {
        return this.zze;
    }

    public final int zzd() {
        return this.zzf;
    }

    public final long zze() {
        return this.zzg;
    }

    public final int zzf() {
        return this.zzh;
    }

    public final long zzg() {
        return this.zzi;
    }

    public final int zzh() {
        return this.zzj;
    }

    public final long zzi() {
        return this.zzk;
    }

    public final int zzj() {
        return this.zzl;
    }

    public final long zzk() {
        return this.zzm;
    }

    public final int zzl() {
        return this.zzn;
    }

    public final long zzm() {
        return this.zzo;
    }

    public final int zzn() {
        return this.zzp;
    }

    public final /* synthetic */ void zzp(long j) {
        this.zzb |= 1;
        this.zzd = j;
    }

    public final /* synthetic */ void zzq(long j) {
        this.zzb |= 2;
        this.zze = j;
    }

    public final /* synthetic */ void zzr(int i) {
        this.zzb |= 4;
        this.zzf = i;
    }

    public final /* synthetic */ void zzs(long j) {
        this.zzb |= 8;
        this.zzg = j;
    }

    public final /* synthetic */ void zzt(int i) {
        this.zzb |= 16;
        this.zzh = i;
    }

    public final /* synthetic */ void zzu(long j) {
        this.zzb |= 32;
        this.zzi = j;
    }

    public final /* synthetic */ void zzv(int i) {
        this.zzb |= 64;
        this.zzj = i;
    }

    public final /* synthetic */ void zzw(long j) {
        this.zzb |= 128;
        this.zzk = j;
    }

    public final /* synthetic */ void zzx(int i) {
        this.zzb |= 256;
        this.zzl = i;
    }

    public final /* synthetic */ void zzy(long j) {
        this.zzb |= 512;
        this.zzm = j;
    }

    public final /* synthetic */ void zzz(int i) {
        this.zzb |= 1024;
        this.zzn = i;
    }
}
