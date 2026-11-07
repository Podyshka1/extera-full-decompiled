package com.google.android.gms.internal.mlkit_vision_label;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
final class zzba extends zzah implements Serializable {
    final Object zza;
    final Object zzb;

    public zzba(Object obj, Object obj2) {
        this.zza = obj;
        this.zzb = obj2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzah, java.util.Map.Entry
    public final Object getKey() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzah, java.util.Map.Entry
    public final Object getValue() {
        return this.zzb;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
