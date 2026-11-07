package com.google.android.gms.wearable;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class zzu implements Runnable {
    final /* synthetic */ List zza;
    final /* synthetic */ zzaa zzb;

    public zzu(zzaa zzaaVar, List list) {
        this.zzb = zzaaVar;
        this.zza = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.onConnectedNodes(this.zza);
    }
}
