package com.google.android.gms.cast.framework.media;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzao extends zzbk {
    final /* synthetic */ int zza;
    final /* synthetic */ JSONObject zzb;
    final /* synthetic */ RemoteMediaClient zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzao(RemoteMediaClient remoteMediaClient, int i, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.zzc = remoteMediaClient;
        this.zza = i;
        this.zzb = jSONObject;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    protected final void zza() {
        this.zzc.zzd.zzA(zzb(), 0, -1L, null, 0, null, Integer.valueOf(this.zza), this.zzb);
    }
}
