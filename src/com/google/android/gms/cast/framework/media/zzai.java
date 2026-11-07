package com.google.android.gms.cast.framework.media;

import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzai extends zzbc {
    final /* synthetic */ int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ JSONObject zzc;
    final /* synthetic */ RemoteMediaClient zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzai(RemoteMediaClient remoteMediaClient, int i, long j, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.zza = i;
        this.zzb = j;
        this.zzc = jSONObject;
        Objects.requireNonNull(remoteMediaClient);
        this.zzd = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zzd.zzt().zzE(zzb(), this.zza, this.zzb, null, 0, null, null, this.zzc);
    }
}
