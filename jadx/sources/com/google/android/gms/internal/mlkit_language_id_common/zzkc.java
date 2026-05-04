package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public final class zzkc {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private zzu zze;
    private String zzf;
    private Boolean zzg;
    private Boolean zzh;
    private Boolean zzi;
    private Integer zzj;
    private Integer zzk;

    public final zzkc zzb(String str) {
        this.zza = str;
        return this;
    }

    public final zzkc zzc(String str) {
        this.zzb = str;
        return this;
    }

    public final zzkc zzd(Integer num) {
        this.zzj = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzkc zze(Boolean bool) {
        this.zzg = bool;
        return this;
    }

    public final zzkc zzf(Boolean bool) {
        this.zzi = bool;
        return this;
    }

    public final zzkc zzg(Boolean bool) {
        this.zzh = bool;
        return this;
    }

    public final zzkc zzh(zzu zzuVar) {
        this.zze = zzuVar;
        return this;
    }

    public final zzkc zzi(String str) {
        this.zzf = str;
        return this;
    }

    public final zzkc zzj(String str) {
        this.zzc = str;
        return this;
    }

    public final zzkc zzk(Integer num) {
        this.zzk = num;
        return this;
    }

    public final zzkc zzl(String str) {
        this.zzd = str;
        return this;
    }

    public final zzke zzm() {
        return new zzke(this, null);
    }
}
