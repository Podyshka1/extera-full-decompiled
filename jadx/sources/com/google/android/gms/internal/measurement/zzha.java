package com.google.android.gms.internal.measurement;

import java.util.Map;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzha extends zzmf implements zznn {
    private static final zzha zzn;
    private int zzb;
    private long zzg;
    private long zzk;
    private zzng zzl = zzng.zza();
    private zzng zzm = zzng.zza();
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzha zzhaVar = new zzha();
        zzn = zzhaVar;
        zzmf.zzcp(zzha.class, zzhaVar);
    }

    private zzha() {
    }

    public static zzgx zzr() {
        return (zzgx) zzn.zzck();
    }

    public static zzha zzs() {
        return zzn;
    }

    final /* synthetic */ void zzA(String str) {
        this.zzb |= 16;
        this.zzh = str;
    }

    final /* synthetic */ void zzB() {
        this.zzb &= -17;
        this.zzh = zzn.zzh;
    }

    final /* synthetic */ void zzC(String str) {
        this.zzb |= 32;
        this.zzi = str;
    }

    final /* synthetic */ void zzD() {
        this.zzb &= -33;
        this.zzi = zzn.zzi;
    }

    final /* synthetic */ void zzE(String str) {
        this.zzb |= 64;
        this.zzj = str;
    }

    final /* synthetic */ void zzF() {
        this.zzb &= -65;
        this.zzj = zzn.zzj;
    }

    final /* synthetic */ void zzG(long j) {
        this.zzb |= 128;
        this.zzk = j;
    }

    final /* synthetic */ Map zzH() {
        if (!this.zzl.zze()) {
            this.zzl = this.zzl.zzc();
        }
        return this.zzl;
    }

    final /* synthetic */ Map zzI() {
        if (!this.zzm.zze()) {
            this.zzm = this.zzm.zzc();
        }
        return this.zzm;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        return (this.zzb & 2) != 0;
    }

    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        return (this.zzb & 4) != 0;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        return (this.zzb & 8) != 0;
    }

    public final long zzh() {
        return this.zzg;
    }

    public final boolean zzi() {
        return (this.zzb & 16) != 0;
    }

    public final String zzj() {
        return this.zzh;
    }

    public final boolean zzk() {
        return (this.zzb & 32) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzn, "\u0004\n\u0000\u0001\u0001\n\n\u0002\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဂ\u0007\t2\n2", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzgy.zza, "zzm", zzgz.zza});
        }
        if (i2 == 3) {
            return new zzha();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzgx(bArr);
        }
        if (i2 == 5) {
            return zzn;
        }
        throw null;
    }

    public final String zzm() {
        return this.zzi;
    }

    public final boolean zzn() {
        return (this.zzb & 64) != 0;
    }

    public final String zzo() {
        return this.zzj;
    }

    public final boolean zzp() {
        return (this.zzb & 128) != 0;
    }

    public final long zzq() {
        return this.zzk;
    }

    final /* synthetic */ void zzt(String str) {
        this.zzb |= 1;
        this.zzd = str;
    }

    final /* synthetic */ void zzu() {
        this.zzb &= -2;
        this.zzd = zzn.zzd;
    }

    final /* synthetic */ void zzv(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    final /* synthetic */ void zzw() {
        this.zzb &= -3;
        this.zze = zzn.zze;
    }

    final /* synthetic */ void zzx(String str) {
        this.zzb |= 4;
        this.zzf = str;
    }

    final /* synthetic */ void zzy() {
        this.zzb &= -5;
        this.zzf = zzn.zzf;
    }

    final /* synthetic */ void zzz(long j) {
        this.zzb |= 8;
        this.zzg = j;
    }
}
