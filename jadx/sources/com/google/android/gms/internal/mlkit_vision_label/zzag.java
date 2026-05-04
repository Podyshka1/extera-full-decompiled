package com.google.android.gms.internal.mlkit_vision_label;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzag extends zzai implements Serializable {
    private transient Map zza;
    private transient int zzb;

    protected zzag(Map map) {
        if (!map.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.zza = map;
    }

    static /* synthetic */ int zzd(zzag zzagVar) {
        int i = zzagVar.zzb;
        zzagVar.zzb = i + 1;
        return i;
    }

    static /* synthetic */ int zze(zzag zzagVar) {
        int i = zzagVar.zzb;
        zzagVar.zzb = i - 1;
        return i;
    }

    static /* synthetic */ int zzf(zzag zzagVar, int i) {
        int i2 = zzagVar.zzb + i;
        zzagVar.zzb = i2;
        return i2;
    }

    static /* synthetic */ int zzg(zzag zzagVar, int i) {
        int i2 = zzagVar.zzb - i;
        zzagVar.zzb = i2;
        return i2;
    }

    static /* synthetic */ void zzm(zzag zzagVar, Object obj) {
        Object objRemove;
        Map map = zzagVar.zza;
        map.getClass();
        try {
            objRemove = map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            objRemove = null;
        }
        Collection collection = (Collection) objRemove;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzagVar.zzb -= size;
        }
    }

    abstract Collection zza();

    abstract Collection zzb(Object obj, Collection collection);

    public final Collection zzh(Object obj) {
        Collection collectionZza = (Collection) this.zza.get(obj);
        if (collectionZza == null) {
            collectionZza = zza();
        }
        return zzb(obj, collectionZza);
    }

    final List zzi(Object obj, List list, zzad zzadVar) {
        return list instanceof RandomAccess ? new zzab(this, obj, list, zzadVar) : new zzaf(this, obj, list, zzadVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzai
    final Map zzk() {
        return new zzy(this, this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzai
    final Set zzl() {
        return new zzaa(this, this.zza);
    }

    public final void zzn() {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzbr
    public final boolean zzo(Object obj, Object obj2) {
        Collection collection = (Collection) this.zza.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.zzb++;
            return true;
        }
        Collection collectionZza = zza();
        if (!collectionZza.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.zzb++;
        this.zza.put(obj, collectionZza);
        return true;
    }
}
