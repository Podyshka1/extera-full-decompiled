package com.google.android.gms.cast.framework.media.internal;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* JADX INFO: loaded from: classes4.dex */
final class zzu extends RemoteMediaClient.Callback {
    final /* synthetic */ zzv zza;

    /* synthetic */ zzu(zzv zzvVar, zzt zztVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onAdBreakStatusUpdated() {
        this.zza.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onMetadataUpdated() {
        this.zza.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onPreloadStatusUpdated() {
        this.zza.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onQueueStatusUpdated() {
        this.zza.zzl(false);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void onStatusUpdated() {
        this.zza.zzl(false);
    }
}
