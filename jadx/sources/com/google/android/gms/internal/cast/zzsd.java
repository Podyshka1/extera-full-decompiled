package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
final class zzsd extends zzrw {
    final /* synthetic */ zzse zza;
    private final Callable zzb;

    zzsd(zzse zzseVar, Callable callable) {
        this.zza = zzseVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.cast.zzrw
    final Object zza() {
        return this.zzb.call();
    }

    @Override // com.google.android.gms.internal.cast.zzrw
    final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.cast.zzrw
    final void zzc(Throwable th) {
        this.zza.zzl(th);
    }

    @Override // com.google.android.gms.internal.cast.zzrw
    final void zzd(Object obj) {
        this.zza.zzk(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzrw
    final boolean zzf() {
        return this.zza.isDone();
    }
}
