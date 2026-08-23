package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzv extends zzag implements zzbj {
    public zzv(Map map) {
        super(map);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzag
    public final Collection zzb(Object obj, Collection collection) {
        return zzi(obj, (List) collection, null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Collection, java.util.List] */
    @Override // com.google.android.gms.internal.mlkit_vision_label.zzbj
    public final List zzc(Object obj) {
        return super.zzh(obj);
    }
}
