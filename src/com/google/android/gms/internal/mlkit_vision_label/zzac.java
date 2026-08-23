package com.google.android.gms.internal.mlkit_vision_label;

import androidx.collection.ArraySet$$ExternalSyntheticBUOutline0;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class zzac implements Iterator {
    final Iterator zza;
    final Collection zzb;
    final /* synthetic */ zzad zzc;

    public zzac(zzad zzadVar) {
        this.zzc = zzadVar;
        Collection collection = zzadVar.zzb;
        this.zzb = collection;
        this.zza = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public zzac(zzad zzadVar, Iterator it) {
        this.zzc = zzadVar;
        this.zzb = zzadVar.zzb;
        this.zza = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zza();
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        zza();
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zza.remove();
        zzag.zze(this.zzc.zze);
        this.zzc.zzc();
    }

    public final void zza() {
        this.zzc.zzb();
        if (this.zzc.zzb == this.zzb) {
            return;
        }
        ArraySet$$ExternalSyntheticBUOutline0.m86m();
    }
}
