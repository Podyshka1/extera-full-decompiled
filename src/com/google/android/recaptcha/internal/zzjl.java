package com.google.android.recaptcha.internal;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjl extends zzgh implements RandomAccess, zzjm {

    @Deprecated
    public static final zzjm zza;
    private static final zzjl zzb;
    private final List zzc;

    static {
        zzjl zzjlVar = new zzjl(false);
        zzb = zzjlVar;
        zza = zzjlVar;
    }

    public zzjl() {
        this(10);
    }

    private static String zzj(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgw ? ((zzgw) obj).zzn(zzjc.zzb) : zzjc.zzd((byte[]) obj);
    }

    @Override // com.google.android.recaptcha.internal.zzgh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        zza();
        this.zzc.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.recaptcha.internal.zzgh, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        zza();
        if (collection instanceof zzjm) {
            collection = ((zzjm) collection).zzh();
        }
        boolean zAddAll = this.zzc.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.recaptcha.internal.zzgh, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zza();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.recaptcha.internal.zzgh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zza();
        Object objRemove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzj(objRemove);
    }

    @Override // com.google.android.recaptcha.internal.zzgh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        zza();
        return zzj(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.recaptcha.internal.zzjb
    public final /* bridge */ /* synthetic */ zzjb zzd(int i) {
        if (i < size()) {
            Segment$$ExternalSyntheticBUOutline0.m847m();
            return null;
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzc);
        return new zzjl(arrayList);
    }

    @Override // com.google.android.recaptcha.internal.zzjm
    public final zzjm zze() {
        return zzc() ? new zzlq(this) : this;
    }

    @Override // com.google.android.recaptcha.internal.zzjm
    public final Object zzf(int i) {
        return this.zzc.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgw) {
            zzgw zzgwVar = (zzgw) obj;
            String strZzn = zzgwVar.zzn(zzjc.zzb);
            if (zzgwVar.zzj()) {
                this.zzc.set(i, strZzn);
            }
            return strZzn;
        }
        byte[] bArr = (byte[]) obj;
        String strZzd = zzjc.zzd(bArr);
        if (zzma.zze(bArr)) {
            this.zzc.set(i, strZzd);
        }
        return strZzd;
    }

    @Override // com.google.android.recaptcha.internal.zzjm
    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.recaptcha.internal.zzjm
    public final void zzi(zzgw zzgwVar) {
        zza();
        this.zzc.add(zzgwVar);
        ((AbstractList) this).modCount++;
    }

    public zzjl(int i) {
        ArrayList arrayList = new ArrayList(i);
        super(true);
        this.zzc = arrayList;
    }

    private zzjl(ArrayList arrayList) {
        super(true);
        this.zzc = arrayList;
    }

    private zzjl(boolean z) {
        super(false);
        this.zzc = Collections.EMPTY_LIST;
    }

    @Override // com.google.android.recaptcha.internal.zzgh, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
