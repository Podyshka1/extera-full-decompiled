package com.google.android.gms.cast.framework.media;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzv extends zzbc {
    final /* synthetic */ long[] zza;
    final /* synthetic */ RemoteMediaClient zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzv(RemoteMediaClient remoteMediaClient, long[] jArr) {
        super(remoteMediaClient, false);
        this.zza = jArr;
        Objects.requireNonNull(remoteMediaClient);
        this.zzb = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zzb.zzt().zzt(zzb(), this.zza);
    }
}
