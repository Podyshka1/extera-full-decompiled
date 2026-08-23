package com.google.android.gms.internal.mlkit_vision_label;

/* JADX INFO: loaded from: classes4.dex */
public final class zzde {
    private zzdh zza;
    private Integer zzb;
    private zzjn zzc;

    public final zzde zza(Integer num) {
        this.zzb = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzde zzb(zzjn zzjnVar) {
        this.zzc = zzjnVar;
        return this;
    }

    public final zzde zzc(zzdh zzdhVar) {
        this.zza = zzdhVar;
        return this;
    }

    public final zzdj zze() {
        return new zzdj(this, null);
    }
}
