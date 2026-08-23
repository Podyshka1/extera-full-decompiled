package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzai extends AbstractSet {
    final /* synthetic */ zzal zza;

    zzai(zzal zzalVar) {
        this.zza = zzalVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzal zzalVar = this.zza;
        Map mapZzj = zzalVar.zzj();
        return mapZzj != null ? mapZzj.keySet().iterator() : new zzac(zzalVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map mapZzj = this.zza.zzj();
        return mapZzj != null ? mapZzj.keySet().remove(obj) : this.zza.zzs(obj) != zzal.zzd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
