package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class zzcn extends zzdc {
    final /* synthetic */ int zza;
    final /* synthetic */ JSONObject zzb;
    final /* synthetic */ RemoteMediaPlayer zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcn(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, JSONObject jSONObject) {
        super(remoteMediaPlayer, googleApiClient);
        this.zza = i;
        this.zzb = jSONObject;
        Objects.requireNonNull(remoteMediaPlayer);
        this.zzc = remoteMediaPlayer;
    }

    @Override // com.google.android.gms.cast.zzdc
    public final void zza(com.google.android.gms.cast.internal.zzx zzxVar) {
        RemoteMediaPlayer remoteMediaPlayer = this.zzc;
        int i = this.zza;
        if (remoteMediaPlayer.zza(i) == -1) {
            setResult(new zzdb(this, new Status(0)));
        } else {
            remoteMediaPlayer.zzg().zzF(zzb(), new int[]{i}, this.zzb);
        }
    }
}
