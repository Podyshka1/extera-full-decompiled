package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrt {
    private Integer zza;
    private Integer zzb;
    private Integer zzc;
    private Integer zzd;

    public final zzrt zza(Integer num) {
        this.zzb = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzrt zzb(Integer num) {
        this.zzc = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzrt zzc(Integer num) {
        this.zzd = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzrt zzd(Integer num) {
        this.zza = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzrv zze() {
        return new zzrv(this, null);
    }
}
