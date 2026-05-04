package com.google.android.gms.internal.play_billing;

import java.util.Comparator;
import java.util.NavigableSet;
import p022j$.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcw extends zzcv implements NavigableSet, zzdu, SortedSet {
    final transient Comparator zza;
    transient zzcw zzb;

    zzcw(Comparator comparator) {
        this.zza = comparator;
    }

    static zzdr zzq(Comparator comparator) {
        if (zzdc.zza.equals(comparator)) {
            return zzdr.zzc;
        }
        int i = zzco.$r8$clinit;
        return new zzdr(zzdk.zza, comparator);
    }

    public final void addFirst(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final void addLast(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet, com.google.android.gms.internal.play_billing.zzdu
    public final Comparator comparator() {
        return this.zza;
    }

    @Override // java.util.NavigableSet
    public final /* bridge */ /* synthetic */ NavigableSet descendingSet() {
        zzcw zzcwVar = this.zzb;
        if (zzcwVar != null) {
            return zzcwVar;
        }
        zzcw zzcwVarZzl = zzl();
        this.zzb = zzcwVarZzl;
        zzcwVarZzl.zzb = this;
        return zzcwVarZzl;
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

    abstract zzcw zzl();

    abstract zzcw zzm(Object obj, boolean z);

    abstract zzcw zzo(Object obj, boolean z, Object obj2, boolean z2);

    abstract zzcw zzp(Object obj, boolean z);

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ java.util.SortedSet headSet(Object obj) {
        obj.getClass();
        return zzm(obj, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ java.util.SortedSet tailSet(Object obj) {
        obj.getClass();
        return zzp(obj, true);
    }

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        return zzm(obj, z);
    }

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return zzp(obj, z);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzcw subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.zza.compare(obj, obj2) <= 0) {
            return zzo(obj, z, obj2, z2);
        }
        throw new IllegalArgumentException();
    }
}
