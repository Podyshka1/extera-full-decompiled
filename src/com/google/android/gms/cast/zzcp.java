package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzcp extends zzdc {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ JSONObject zzc;
    final /* synthetic */ RemoteMediaPlayer zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcp(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, int i2, JSONObject jSONObject) {
        super(remoteMediaPlayer, googleApiClient);
        this.zza = i;
        this.zzb = i2;
        this.zzc = jSONObject;
        Objects.requireNonNull(remoteMediaPlayer);
        this.zzd = remoteMediaPlayer;
    }

    @Override // com.google.android.gms.cast.zzdc
    public final void zza(com.google.android.gms.cast.internal.zzx zzxVar) {
        RemoteMediaPlayer remoteMediaPlayer = this.zzd;
        int i = this.zza;
        int iZza = remoteMediaPlayer.zza(i);
        if (iZza == -1) {
            setResult(new zzdb(this, new Status(0)));
            return;
        }
        int i2 = this.zzb;
        if (i2 < 0) {
            setResult(new zzdb(this, new Status(CastStatusCodes.INVALID_REQUEST, String.format(Locale.ROOT, "Invalid request: Invalid newIndex %d.", Integer.valueOf(i2)))));
            return;
        }
        if (iZza == i2) {
            setResult(new zzdb(this, new Status(0)));
            return;
        }
        MediaStatus mediaStatus = remoteMediaPlayer.getMediaStatus();
        if (mediaStatus == null) {
            setResult(new zzdb(this, new Status(CastStatusCodes.INVALID_REQUEST, String.format(Locale.ROOT, "Invalid request: Invalid MediaStatus", new Object[0]))));
            return;
        }
        if (i2 > iZza) {
            i2++;
        }
        MediaQueueItem queueItem = mediaStatus.getQueueItem(i2);
        remoteMediaPlayer.zzg().zzG(zzb(), new int[]{i}, queueItem != null ? queueItem.getItemId() : 0, this.zzc);
    }
}
