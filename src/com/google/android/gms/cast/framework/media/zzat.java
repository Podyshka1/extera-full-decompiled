package com.google.android.gms.cast.framework.media;

import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzat extends zzbc {
    final /* synthetic */ double zza;
    final /* synthetic */ JSONObject zzb;
    final /* synthetic */ RemoteMediaClient zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzat(RemoteMediaClient remoteMediaClient, double d, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.zza = d;
        this.zzb = jSONObject;
        Objects.requireNonNull(remoteMediaClient);
        this.zzc = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zzc.zzt().zzp(zzb(), this.zza, this.zzb);
    }
}
