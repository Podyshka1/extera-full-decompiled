package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzbf;

/* JADX INFO: loaded from: classes5.dex */
final class zzy implements Runnable {
    final /* synthetic */ zzbf zza;
    final /* synthetic */ zzaa zzb;

    public zzy(zzaa zzaaVar, zzbf zzbfVar) {
        this.zzb = zzaaVar;
        this.zza = zzbfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza(this.zzb.zza);
        this.zza.zza(this.zzb.zza.zzh);
    }
}
