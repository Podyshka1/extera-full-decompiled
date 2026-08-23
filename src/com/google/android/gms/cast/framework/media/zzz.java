package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaQueueItem;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzz extends zzbc {
    final /* synthetic */ MediaQueueItem zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ JSONObject zzd;
    final /* synthetic */ RemoteMediaClient zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzz(RemoteMediaClient remoteMediaClient, MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        super(remoteMediaClient, false);
        this.zza = mediaQueueItem;
        this.zzb = i;
        this.zzc = j;
        this.zzd = jSONObject;
        Objects.requireNonNull(remoteMediaClient);
        this.zze = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        MediaQueueItem mediaQueueItem = this.zza;
        long j = this.zzc;
        JSONObject jSONObject = this.zzd;
        int i = this.zzb;
        this.zze.zzt().zzD(zzb(), new MediaQueueItem[]{mediaQueueItem}, i, 0, 0, j, jSONObject);
    }
}
