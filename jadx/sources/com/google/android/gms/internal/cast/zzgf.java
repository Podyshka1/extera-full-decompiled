package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzgf extends zzfu {
    final transient Object zza;

    zzgf(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.cast.zzfm, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzfu, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzfv(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.zza.toString() + "]";
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zza(Object[] objArr, int i) {
        objArr[0] = this.zza;
        return 1;
    }

    @Override // com.google.android.gms.internal.cast.zzfu, com.google.android.gms.internal.cast.zzfm
    public final zzfq zzd() {
        int i = zzfq.$r8$clinit;
        Object[] objArr = {this.zza};
        zzfw.zzb(objArr, 1);
        return zzfq.zzi(objArr, 1);
    }
}
