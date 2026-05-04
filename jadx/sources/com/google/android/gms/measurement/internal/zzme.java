package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzme extends zzgd {
    final /* synthetic */ AtomicReference zza;

    zzme(zznl zznlVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        Objects.requireNonNull(zznlVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzge
    public final void zze(List list) {
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            atomicReference.set(list);
            atomicReference.notifyAll();
        }
    }
}
