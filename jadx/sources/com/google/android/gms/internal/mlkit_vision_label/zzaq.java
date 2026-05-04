package com.google.android.gms.internal.mlkit_vision_label;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzaq implements Iterator {
    int zzb;
    int zzc;
    int zzd = -1;
    final /* synthetic */ zzau zze;

    /* synthetic */ zzaq(zzau zzauVar, zzam zzamVar) {
        this.zze = zzauVar;
        this.zzb = zzauVar.zzf;
        this.zzc = zzauVar.zze();
    }

    private final void zzb() {
        if (this.zze.zzf != this.zzb) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzb();
        if (!hasNext()) {
            throw new NoSuchElementException();
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
        zzs.zzd(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        zzau zzauVar = this.zze;
        zzauVar.remove(zzau.zzg(zzauVar, this.zzd));
        this.zzc--;
        this.zzd = -1;
    }

    abstract Object zza(int i);
}
