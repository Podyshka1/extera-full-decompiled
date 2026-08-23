package com.google.android.gms.internal.cast;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwe extends AbstractList implements RandomAccess, zzuf {
    private final zzuf zza;

    public zzwe(zzuf zzufVar) {
        this.zza = zzufVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((zzue) this.zza).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzwd(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new zzwc(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.cast.zzuf
    public final zzuf zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.cast.zzuf
    public final Object zze(int i) {
        return this.zza.zze(i);
    }

    @Override // com.google.android.gms.internal.cast.zzuf
    public final List zzh() {
        return this.zza.zzh();
    }
}
