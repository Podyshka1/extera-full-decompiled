package com.google.android.gms.internal.cast;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class zzue extends zzsi implements RandomAccess, zzuf {
    public static final zzuf zza;
    private static final zzue zzb;
    private final List zzc;

    static {
        zzue zzueVar = new zzue(false);
        zzb = zzueVar;
        zza = zzueVar;
    }

    private static String zzi(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzsu ? ((zzsu) obj).zzl(zzty.zzb) : zzty.zzd((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        zza();
        this.zzc.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        zza();
        if (collection instanceof zzuf) {
            collection = ((zzuf) collection).zzh();
        }
        boolean zAddAll = this.zzc.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zza();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zza();
        Object objRemove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzi(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        zza();
        return zzi(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.cast.zzuf
    public final zzuf zzd() {
        return zzc() ? new zzwe(this) : this;
    }

    @Override // com.google.android.gms.internal.cast.zzuf
    public final Object zze(int i) {
        return this.zzc.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzsu) {
            zzsu zzsuVar = (zzsu) obj;
            String strZzl = zzsuVar.zzl(zzty.zzb);
            if (zzsuVar.zzi()) {
                this.zzc.set(i, strZzl);
            }
            return strZzl;
        }
        byte[] bArr = (byte[]) obj;
        String strZzd = zzty.zzd(bArr);
        if (zzwn.zzd(bArr)) {
            this.zzc.set(i, strZzd);
        }
        return strZzd;
    }

    @Override // com.google.android.gms.internal.cast.zztx
    public final /* bridge */ /* synthetic */ zztx zzg(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzc);
        return new zzue(arrayList);
    }

    @Override // com.google.android.gms.internal.cast.zzuf
    public final List zzh() {
        return DesugarCollections.unmodifiableList(this.zzc);
    }

    public zzue(int i) {
        ArrayList arrayList = new ArrayList(i);
        super(true);
        this.zzc = arrayList;
    }

    private zzue(ArrayList arrayList) {
        super(true);
        this.zzc = arrayList;
    }

    private zzue(boolean z) {
        super(false);
        this.zzc = Collections.EMPTY_LIST;
    }

    @Override // com.google.android.gms.internal.cast.zzsi, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
