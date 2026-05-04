package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzaf extends AbstractSet {
    final /* synthetic */ zzal zza;

    zzaf(zzal zzalVar) {
        this.zza = zzalVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map mapZzj = this.zza.zzj();
        if (mapZzj != null) {
            return mapZzj.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iZzq = this.zza.zzq(entry.getKey());
            if (iZzq != -1) {
                Object[] objArr = this.zza.zzc;
                objArr.getClass();
                if (zze.zza(objArr[iZzq], entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzal zzalVar = this.zza;
        Map mapZzj = zzalVar.zzj();
        return mapZzj != null ? mapZzj.entrySet().iterator() : new zzad(zzalVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map mapZzj = this.zza.zzj();
        if (mapZzj != null) {
            return mapZzj.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzal zzalVar = this.zza;
        if (zzalVar.zzo()) {
            return false;
        }
        int iZzp = zzalVar.zzp();
        Object key = entry.getKey();
        Object value = entry.getValue();
        zzal zzalVar2 = this.zza;
        Object objZzh = zzal.zzh(zzalVar2);
        int[] iArr = zzalVar2.zza;
        iArr.getClass();
        zzal zzalVar3 = this.zza;
        Object[] objArr = zzalVar3.zzb;
        objArr.getClass();
        Object[] objArr2 = zzalVar3.zzc;
        objArr2.getClass();
        int iZzb = zzam.zzb(key, value, iZzp, objZzh, iArr, objArr, objArr2);
        if (iZzb == -1) {
            return false;
        }
        this.zza.zzn(iZzb, iZzp);
        zzal zzalVar4 = this.zza;
        zzalVar4.zzg--;
        this.zza.zzl();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
