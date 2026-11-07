package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import okio.Buffer$$ExternalSyntheticBUOutline2;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzw extends zzy implements Serializable {
    private transient Map zza;
    private transient int zzb;

    public zzw(Map map) {
        if (map.isEmpty()) {
            this.zza = map;
        } else {
            Segment$$ExternalSyntheticBUOutline0.m924m();
            throw null;
        }
    }

    public static /* bridge */ /* synthetic */ void zzk(zzw zzwVar, Object obj) {
        Object objRemove;
        Map map = zzwVar.zza;
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
            zzwVar.zzb -= size;
        }
    }

    public abstract Collection zza();

    public abstract Collection zzb(Object obj, Collection collection);

    public final Collection zze(Object obj) {
        Collection collectionZza = (Collection) this.zza.get(obj);
        if (collectionZza == null) {
            collectionZza = zza();
        }
        return zzb(obj, collectionZza);
    }

    public final List zzf(Object obj, List list, zzt zztVar) {
        return list instanceof RandomAccess ? new zzr(this, obj, list, zztVar) : new zzv(this, obj, list, zztVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzy
    public final Map zzh() {
        return new zzo(this, this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzy
    public final Set zzi() {
        return new zzq(this, this.zza);
    }

    public final void zzl() {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzbi
    public final boolean zzm(Object obj, Object obj2) {
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
            Buffer$$ExternalSyntheticBUOutline2.m917m("New Collection violated the Collection spec");
            return false;
        }
        this.zzb++;
        this.zza.put(obj, collectionZza);
        return true;
    }
}
