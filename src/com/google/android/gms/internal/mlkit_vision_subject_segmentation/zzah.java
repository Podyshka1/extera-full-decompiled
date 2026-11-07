package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import androidx.collection.ArraySet$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzah implements Iterator {
    int zzb;
    int zzc;
    int zzd = -1;
    final /* synthetic */ zzal zze;

    public /* synthetic */ zzah(zzal zzalVar, zzag zzagVar) {
        this.zze = zzalVar;
        this.zzb = zzalVar.zzf;
        this.zzc = zzalVar.zze();
    }

    private final void zzb() {
        if (this.zze.zzf == this.zzb) {
            return;
        }
        ArraySet$$ExternalSyntheticBUOutline0.m86m();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzb();
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m1121m();
            return null;
        }
        int i = this.zzc;
        this.zzd = i;
        Object objZza = zza(i);
        this.zzc = this.zze.zzf(this.zzc);
        return objZza;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzb();
        zzi.zzd(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        zzal zzalVar = this.zze;
        int i = this.zzd;
        Object[] objArr = zzalVar.zzb;
        objArr.getClass();
        zzalVar.remove(objArr[i]);
        this.zzc--;
        this.zzd = -1;
    }

    public abstract Object zza(int i);
}
