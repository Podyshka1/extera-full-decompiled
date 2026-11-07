package com.google.android.recaptcha.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class zzux {
    private static final zzux zza = new zzux();
    private final AtomicReference zzb = new AtomicReference(new zzvs(new zzvq(null), null));

    public static zzux zza() {
        return zza;
    }

    public final synchronized void zzb(zzvp zzvpVar) {
        AtomicReference atomicReference = this.zzb;
        zzvq zzvqVar = new zzvq((zzvs) atomicReference.get(), null);
        zzvqVar.zza(zzvpVar);
        atomicReference.set(new zzvs(zzvqVar, null));
    }

    public final synchronized void zzc(zzvu zzvuVar) {
        AtomicReference atomicReference = this.zzb;
        zzvq zzvqVar = new zzvq((zzvs) atomicReference.get(), null);
        zzvqVar.zzb(zzvuVar);
        atomicReference.set(new zzvs(zzvqVar, null));
    }
}
