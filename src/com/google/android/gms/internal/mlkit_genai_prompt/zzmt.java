package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzmt extends zzms implements NavigableSet, zznq {
    final transient Comparator zza;
    transient zzmt zzb;

    public zzmt(Comparator comparator) {
        this.zza = comparator;
    }

    public static zznn zzl(Comparator comparator) {
        if (zzmz.zza.equals(comparator)) {
            return zznn.zzc;
        }
        int i = zzml.$r8$clinit;
        return new zznn(zzng.zza, comparator);
    }

    @Deprecated
    public final void addFirst(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void addLast(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet, com.google.android.gms.internal.mlkit_genai_prompt.zznq
    public final Comparator comparator() {
        return this.zza;
    }

    @Override // java.util.NavigableSet
    public final /* bridge */ /* synthetic */ NavigableSet descendingSet() {
        zzmt zzmtVar = this.zzb;
        if (zzmtVar != null) {
            return zzmtVar;
        }
        zzmt zzmtVarZzq = zzq();
        this.zzb = zzmtVarZzq;
        zzmtVarZzq.zzb = this;
        return zzmtVarZzq;
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
    @Deprecated
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final Object removeFirst() {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final Object removeLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    public abstract zzmt zzn(Object obj, boolean z);

    public abstract zzmt zzo(Object obj, boolean z, Object obj2, boolean z2);

    public abstract zzmt zzp(Object obj, boolean z);

    public abstract zzmt zzq();

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ SortedSet headSet(Object obj) {
        obj.getClass();
        return zzn(obj, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ SortedSet tailSet(Object obj) {
        obj.getClass();
        return zzp(obj, true);
    }

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        return zzn(obj, z);
    }

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return zzp(obj, z);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final zzmt subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.zza.compare(obj, obj2) <= 0) {
            return zzo(obj, z, obj2, z2);
        }
        Segment$$ExternalSyntheticBUOutline0.m924m();
        return null;
    }
}
