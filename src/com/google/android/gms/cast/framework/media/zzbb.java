package com.google.android.gms.cast.framework.media;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzbb extends zzbk {
    final /* synthetic */ double zza;
    final /* synthetic */ JSONObject zzb;
    final /* synthetic */ RemoteMediaClient zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbb(RemoteMediaClient remoteMediaClient, double d, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.zzc = remoteMediaClient;
        this.zza = d;
        this.zzb = jSONObject;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    protected final void zza() {
        this.zzc.zzd.zzG(zzb(), this.zza, this.zzb);
    }
}
