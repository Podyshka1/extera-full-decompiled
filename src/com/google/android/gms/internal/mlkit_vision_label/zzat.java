package com.google.android.gms.internal.mlkit_vision_label;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzat extends AbstractCollection {
    final /* synthetic */ zzau zza;

    public zzat(zzau zzauVar) {
        this.zza = zzauVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzau zzauVar = this.zza;
        Map mapZzl = zzauVar.zzl();
        return mapZzl != null ? mapZzl.values().iterator() : new zzao(zzauVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size();
    }
}
