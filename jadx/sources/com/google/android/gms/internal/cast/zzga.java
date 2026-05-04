package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzga extends zzfu {
    private final transient zzft zza;
    private final transient zzfq zzb;

    zzga(zzft zzftVar, zzfq zzfqVar) {
        this.zza = zzftVar;
        this.zzb = zzfqVar;
    }

    @Override // com.google.android.gms.internal.cast.zzfm, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zza(Object[] objArr, int i) {
        return this.zzb.zza(objArr, 0);
    }

    @Override // com.google.android.gms.internal.cast.zzfu, com.google.android.gms.internal.cast.zzfm
    public final zzfq zzd() {
        return this.zzb;
    }
}
