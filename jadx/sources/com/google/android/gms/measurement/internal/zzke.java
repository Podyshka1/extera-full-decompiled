package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzke implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zzlj zzb;

    zzke(zzlj zzljVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            try {
                try {
                    zzlj zzljVar = this.zzb;
                    atomicReference.set(Boolean.valueOf(zzljVar.zzu.zzc().zzp(zzljVar.zzu.zzv().zzj(), zzfy.zzaa)));
                } finally {
                    this.zza.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
