package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzy extends zzbc {
    final /* synthetic */ MediaQueueItem[] zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ JSONObject zzc;
    final /* synthetic */ RemoteMediaClient zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzy(RemoteMediaClient remoteMediaClient, MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.zza = mediaQueueItemArr;
        this.zzb = i;
        this.zzc = jSONObject;
        Objects.requireNonNull(remoteMediaClient);
        this.zzd = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zzd.zzt().zzD(zzb(), this.zza, this.zzb, 0, -1, -1L, this.zzc);
    }
}
