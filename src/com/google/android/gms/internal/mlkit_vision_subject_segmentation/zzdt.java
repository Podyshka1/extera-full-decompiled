package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdt {
    private zzdw zza;
    private Integer zzb;
    private zznc zzc;

    public final zzdt zza(Integer num) {
        this.zzb = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzdt zzb(zznc zzncVar) {
        this.zzc = zzncVar;
        return this;
    }

    public final zzdt zzc(zzdw zzdwVar) {
        this.zza = zzdwVar;
        return this;
    }

    public final zzdy zze() {
        return new zzdy(this, null);
    }
}
