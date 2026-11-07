package com.google.android.gms.cast.framework.media;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzak extends zzbc {
    final /* synthetic */ RemoteMediaClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzak(RemoteMediaClient remoteMediaClient, boolean z) {
        super(remoteMediaClient, true);
        Objects.requireNonNull(remoteMediaClient);
        this.zza = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zza.zzt().zzH(zzb());
    }
}
