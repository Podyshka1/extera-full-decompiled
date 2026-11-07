package com.google.android.gms.internal.mlkit_vision_label;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjq {
    private zzjr zza;
    private Integer zzb;

    public final zzjq zza(zzjr zzjrVar) {
        this.zza = zzjrVar;
        return this;
    }

    public final zzjq zzb(Integer num) {
        this.zzb = Integer.valueOf(num.intValue() & Integer.MAX_VALUE);
        return this;
    }

    public final zzjt zzd() {
        return new zzjt(this, null);
    }
}
