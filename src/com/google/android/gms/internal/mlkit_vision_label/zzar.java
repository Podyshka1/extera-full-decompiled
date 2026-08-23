package com.google.android.gms.internal.mlkit_vision_label;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzar extends AbstractSet {
    final /* synthetic */ zzau zza;

    public zzar(zzau zzauVar) {
        this.zza = zzauVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzau zzauVar = this.zza;
        Map mapZzl = zzauVar.zzl();
        return mapZzl != null ? mapZzl.keySet().iterator() : new zzam(zzauVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        Map mapZzl = this.zza.zzl();
        return mapZzl != null ? mapZzl.keySet().remove(obj) : this.zza.zzx(obj) != zzau.zzd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
