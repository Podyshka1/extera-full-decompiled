package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzfx;

/* JADX INFO: loaded from: classes5.dex */
final class zzr implements Runnable {
    final /* synthetic */ zzfx zza;
    final /* synthetic */ zzaa zzb;

    public zzr(zzaa zzaaVar, zzfx zzfxVar) {
        this.zzb = zzaaVar;
        this.zza = zzfxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onMessageReceived(this.zza);
    }
}
