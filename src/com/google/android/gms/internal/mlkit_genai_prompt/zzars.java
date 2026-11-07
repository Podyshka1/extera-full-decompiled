package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public final class zzars {
    private Integer zza;
    private zzant zzb;
    private Boolean zzc;
    private Integer zzd;
    private Integer zze;
    private Long zzf;
    private Long zzg;

    public final zzars zza(Integer num) {
        this.zza = num;
        return this;
    }

    public final zzars zzb(zzant zzantVar) {
        this.zzb = zzantVar;
        return this;
    }

    public final zzars zzc(Boolean bool) {
        this.zzc = bool;
        return this;
    }

    public final zzars zzd(Integer num) {
        this.zzd = num;
        return this;
    }

    public final zzars zze(Integer num) {
        this.zze = num;
        return this;
    }

    public final zzars zzf(Long l) {
        this.zzf = Long.valueOf(l.longValue() & LongCompanionObject.MAX_VALUE);
        return this;
    }

    public final zzars zzg(Long l) {
        this.zzg = Long.valueOf(l.longValue() & LongCompanionObject.MAX_VALUE);
        return this;
    }

    public final zzart zzh() {
        return new zzart(this, null);
    }

    public final /* synthetic */ Integer zzi() {
        return this.zza;
    }

    public final /* synthetic */ zzant zzj() {
        return this.zzb;
    }

    public final /* synthetic */ Boolean zzk() {
        return this.zzc;
    }

    public final /* synthetic */ Integer zzl() {
        return this.zzd;
    }

    public final /* synthetic */ Integer zzm() {
        return this.zze;
    }

    public final /* synthetic */ Long zzn() {
        return this.zzf;
    }

    public final /* synthetic */ Long zzo() {
        return this.zzg;
    }
}
