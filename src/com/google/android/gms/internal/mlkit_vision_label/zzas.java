package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzas extends zzah {
    final /* synthetic */ zzau zza;
    private final Object zzb;
    private int zzc;

    public zzas(zzau zzauVar, int i) {
        this.zza = zzauVar;
        this.zzb = zzau.zzg(zzauVar, i);
        this.zzc = i;
    }

    private final void zza() {
        int i = this.zzc;
        if (i == -1 || i >= this.zza.size() || !zzo.zza(this.zzb, zzau.zzg(this.zza, this.zzc))) {
            this.zzc = this.zza.zzv(this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzah, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzah, java.util.Map.Entry
    public final Object getValue() {
        Map mapZzl = this.zza.zzl();
        if (mapZzl != null) {
            return mapZzl.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            return null;
        }
        return zzau.zzj(this.zza, i);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map mapZzl = this.zza.zzl();
        if (mapZzl != null) {
            return mapZzl.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        zzau zzauVar = this.zza;
        if (i == -1) {
            zzauVar.put(this.zzb, obj);
            return null;
        }
        Object objZzj = zzau.zzj(zzauVar, i);
        zzau.zzm(this.zza, this.zzc, obj);
        return objZzj;
    }
}
