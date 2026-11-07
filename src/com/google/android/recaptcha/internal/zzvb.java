package com.google.android.recaptcha.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class zzvb {
    private static final zzvb zza = (zzvb) zzwb.zza(zzva.zza);
    private final AtomicReference zzb = new AtomicReference(new zzvy(new zzvx(), null));

    public static zzvb zza() {
        return zza;
    }

    public final synchronized void zzb(zzue zzueVar) {
        AtomicReference atomicReference = this.zzb;
        zzvx zzvxVar = new zzvx((zzvy) atomicReference.get());
        zzvxVar.zza(zzueVar);
        atomicReference.set(new zzvy(zzvxVar, null));
    }

    public final synchronized void zzc(zzub zzubVar) {
        AtomicReference atomicReference = this.zzb;
        zzvx zzvxVar = new zzvx((zzvy) atomicReference.get());
        zzvxVar.zzb(zzubVar);
        atomicReference.set(new zzvy(zzvxVar, null));
    }

    public final synchronized void zzd(zzvi zzviVar) {
        AtomicReference atomicReference = this.zzb;
        zzvx zzvxVar = new zzvx((zzvy) atomicReference.get());
        zzvxVar.zzc(zzviVar);
        atomicReference.set(new zzvy(zzvxVar, null));
    }

    public final synchronized void zze(zzvf zzvfVar) {
        AtomicReference atomicReference = this.zzb;
        zzvx zzvxVar = new zzvx((zzvy) atomicReference.get());
        zzvxVar.zzd(zzvfVar);
        atomicReference.set(new zzvy(zzvxVar, null));
    }

    public final boolean zzf(zzsp zzspVar) {
        return ((zzvy) this.zzb.get()).zzc(zzspVar);
    }

    public final zzse zzg(zzsp zzspVar, zzsy zzsyVar) {
        return ((zzvy) this.zzb.get()).zza(zzspVar, zzsyVar);
    }

    public final zzsp zzh(zzse zzseVar, zzsy zzsyVar) {
        return ((zzvy) this.zzb.get()).zzb(zzseVar, zzsyVar);
    }
}
