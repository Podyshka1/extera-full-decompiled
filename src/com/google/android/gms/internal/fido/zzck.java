package com.google.android.gms.internal.fido;

import java.util.Comparator;
import java.util.NavigableSet;
import p022j$.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzck extends zzcf implements NavigableSet, zzda, SortedSet {
    final transient Comparator zza;
    transient zzck zzb;

    zzck(Comparator comparator) {
        this.zza = comparator;
    }

    static zzcv zzs(Comparator comparator) {
        if (zzcq.zza.equals(comparator)) {
            return zzcv.zzc;
        }
        int i = zzcc.$r8$clinit;
        return new zzcv(zzct.zza, comparator);
    }

    public final void addFirst(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final void addLast(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet, com.google.android.gms.internal.fido.zzda
    public final Comparator comparator() {
        return this.zza;
    }

    @Override // java.util.SortedSet
    public abstract Object first();

    public final Object getFirst() {
        return first();
    }

    public final Object getLast() {
        return last();
    }

    @Override // java.util.SortedSet
    public abstract Object last();

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    public final Object removeFirst() {
        throw new UnsupportedOperationException();
    }

    public final Object removeLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ java.util.SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    abstract zzck zzf();

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzck descendingSet() {
        zzck zzckVar = this.zzb;
        if (zzckVar != null) {
            return zzckVar;
        }
        zzck zzckVarZzf = zzf();
        this.zzb = zzckVarZzf;
        zzckVarZzf.zzb = this;
        return zzckVarZzf;
    }

    abstract zzck zzo(Object obj, boolean z);

    abstract zzck zzq(Object obj, boolean z, Object obj2, boolean z2);

    abstract zzck zzr(Object obj, boolean z);

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ java.util.SortedSet headSet(Object obj) {
        obj.getClass();
        return zzo(obj, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ java.util.SortedSet tailSet(Object obj) {
        obj.getClass();
        return zzr(obj, true);
    }

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        return zzo(obj, z);
    }

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return zzr(obj, z);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: zzp, reason: merged with bridge method [inline-methods] */
    public final zzck subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        zzbm.zzc(this.zza.compare(obj, obj2) <= 0);
        return zzq(obj, z, obj2, z2);
    }
}
