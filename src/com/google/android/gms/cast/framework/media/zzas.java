package com.google.android.gms.cast.framework.media;

/* JADX INFO: loaded from: classes4.dex */
final class zzas extends zzbk {
    final /* synthetic */ RemoteMediaClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzas(RemoteMediaClient remoteMediaClient, boolean z) {
        super(remoteMediaClient, true);
        this.zza = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbk
    protected final void zza() {
        this.zza.zzd.zzu(zzb());
    }
}
