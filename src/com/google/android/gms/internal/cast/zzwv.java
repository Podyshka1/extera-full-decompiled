package com.google.android.gms.internal.cast;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzwv extends zzwm {
    final /* synthetic */ zzww zza;
    private final Callable zzb;

    public zzwv(zzww zzwwVar, Callable callable) {
        Objects.requireNonNull(zzwwVar);
        this.zza = zzwwVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final boolean zza() {
        return this.zza.isDone();
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final Object zzb() {
        return this.zzb.call();
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final void zzc(Object obj) {
        this.zza.zzc(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final void zzd(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // com.google.android.gms.internal.cast.zzwm
    public final String zzf() {
        return this.zzb.toString();
    }
}
