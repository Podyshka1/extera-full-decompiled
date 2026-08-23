package com.google.android.gms.cast.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzs implements Runnable {
    final /* synthetic */ zzx zza;
    final /* synthetic */ int zzb;

    public zzs(zzw zzwVar, zzx zzxVar, int i) {
        this.zza = zzxVar;
        this.zzb = i;
        Objects.requireNonNull(zzwVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzQ().onApplicationDisconnected(this.zzb);
    }
}
