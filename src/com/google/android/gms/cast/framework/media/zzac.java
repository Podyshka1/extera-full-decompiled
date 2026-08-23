package com.google.android.gms.cast.framework.media;

/* JADX INFO: loaded from: classes4.dex */
final class zzac extends zzbk {
    final /* synthetic */ RemoteMediaClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzac(RemoteMediaClient remoteMediaClient) {
        super(remoteMediaClient, false);
        this.zza = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    protected final void zza() {
        this.zza.zzd.zzB(zzb());
    }
}
