package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaSeekOptions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzas extends zzbc {
    final /* synthetic */ MediaSeekOptions zza;
    final /* synthetic */ RemoteMediaClient zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(RemoteMediaClient remoteMediaClient, MediaSeekOptions mediaSeekOptions) {
        super(remoteMediaClient, false);
        this.zza = mediaSeekOptions;
        Objects.requireNonNull(remoteMediaClient);
        this.zzb = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zzb.zzt().zzn(zzb(), this.zza);
    }
}
