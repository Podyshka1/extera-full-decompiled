package com.google.android.recaptcha.internal;

import androidx.collection.ArraySet$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.Objects;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzpf implements Iterator {
    int zzb;
    int zzc;
    int zzd;
    final /* synthetic */ zzpj zze;

    public /* synthetic */ zzpf(zzpj zzpjVar, byte[] bArr) {
        Objects.requireNonNull(zzpjVar);
        this.zze = zzpjVar;
        this.zzb = zzpjVar.zzr();
        this.zzc = zzpjVar.zze();
        this.zzd = -1;
    }

    private final void zzb() {
        if (this.zze.zzr() == this.zzb) {
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
        zzoq.zzc(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        int i = this.zzd;
        zzpj zzpjVar = this.zze;
        zzpjVar.remove(zzpjVar.zzn(i));
        this.zzc--;
        this.zzd = -1;
    }

    public abstract Object zza(int i);
}
