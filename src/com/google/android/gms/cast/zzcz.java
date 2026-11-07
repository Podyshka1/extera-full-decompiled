package com.google.android.gms.cast;

import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzcz implements com.google.android.gms.cast.internal.zzas {
    final /* synthetic */ RemoteMediaPlayer zza;
    private GoogleApiClient zzb;
    private long zzc;

    public zzcz(RemoteMediaPlayer remoteMediaPlayer) {
        Objects.requireNonNull(remoteMediaPlayer);
        this.zza = remoteMediaPlayer;
        this.zzc = 0L;
    }

    public final void zza(GoogleApiClient googleApiClient) {
        this.zzb = googleApiClient;
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, String str2, long j, String str3) {
        GoogleApiClient googleApiClient = this.zzb;
        if (googleApiClient != null) {
            Cast.CastApi.sendMessage(googleApiClient, str, str2).setResultCallback(new zzcy(this, j));
        } else {
            Segment$$ExternalSyntheticBUOutline1.m925m("No GoogleApiClient available");
        }
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final long zzc() {
        long j = this.zzc + 1;
        this.zzc = j;
        return j;
    }
}
