package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzma implements Runnable {
    final /* synthetic */ zzmb zza;

    zzma(zzmb zzmbVar) {
        Objects.requireNonNull(zzmbVar);
        this.zza = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzx(null);
    }
}
