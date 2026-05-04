package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaLoadRequestData;

/* JADX INFO: loaded from: classes4.dex */
final class zzav extends zzbk {
    final /* synthetic */ MediaLoadRequestData zza;
    final /* synthetic */ RemoteMediaClient zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzav(RemoteMediaClient remoteMediaClient, MediaLoadRequestData mediaLoadRequestData) {
        super(remoteMediaClient, false);
        this.zzb = remoteMediaClient;
        this.zza = mediaLoadRequestData;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    protected final void zza() {
        this.zzb.zzd.zzp(zzb(), this.zza);
    }
}
