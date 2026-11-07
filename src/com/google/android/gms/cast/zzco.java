package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzco extends zzdc {
    final /* synthetic */ int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ JSONObject zzc;
    final /* synthetic */ RemoteMediaPlayer zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzco(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, long j, JSONObject jSONObject) {
        super(remoteMediaPlayer, googleApiClient);
        this.zza = i;
        this.zzb = j;
        this.zzc = jSONObject;
        Objects.requireNonNull(remoteMediaPlayer);
        this.zzd = remoteMediaPlayer;
    }

    @Override // com.google.android.gms.cast.zzdc
    public final void zza(com.google.android.gms.cast.internal.zzx zzxVar) {
        RemoteMediaPlayer remoteMediaPlayer = this.zzd;
        int i = this.zza;
        if (remoteMediaPlayer.zza(i) == -1) {
            setResult(new zzdb(this, new Status(0)));
        } else {
            remoteMediaPlayer.zzg().zzE(zzb(), i, this.zzb, null, 0, null, null, this.zzc);
        }
    }
}
