package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzi;

/* JADX INFO: loaded from: classes5.dex */
final class zzx implements Runnable {
    final /* synthetic */ zzi zza;
    final /* synthetic */ zzaa zzb;

    public zzx(zzaa zzaaVar, zzi zziVar) {
        this.zzb = zzaaVar;
        this.zza = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onEntityUpdate(this.zza);
    }
}
