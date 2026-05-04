package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzmf extends zzgg {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zznl zzb;

    zzmf(zznl zznlVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        Objects.requireNonNull(zznlVar);
        this.zzb = zznlVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgh
    public final void zze(zzoq zzoqVar) {
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            this.zzb.zzu.zzaV().zzk().zzb("[sgtm] Got upload batches from service. count", Integer.valueOf(zzoqVar.zza.size()));
            atomicReference.set(zzoqVar);
            atomicReference.notifyAll();
        }
    }
}
