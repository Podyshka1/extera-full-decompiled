package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaSeekOptions;

/* JADX INFO: loaded from: classes4.dex */
final class zzba extends zzbk {
    final /* synthetic */ MediaSeekOptions zza;
    final /* synthetic */ RemoteMediaClient zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzba(RemoteMediaClient remoteMediaClient, MediaSeekOptions mediaSeekOptions) {
        super(remoteMediaClient, false);
        this.zzb = remoteMediaClient;
        this.zza = mediaSeekOptions;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    protected final void zza() {
        this.zzb.zzd.zzC(zzb(), this.zza);
    }
}
