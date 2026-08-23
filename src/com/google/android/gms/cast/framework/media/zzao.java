package com.google.android.gms.cast.framework.media;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzao extends zzbc {
    final /* synthetic */ String zza;
    final /* synthetic */ RemoteMediaClient zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzao(RemoteMediaClient remoteMediaClient, boolean z, String str, List list) {
        super(remoteMediaClient, true);
        this.zza = str;
        Objects.requireNonNull(remoteMediaClient);
        this.zzb = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zzb.zzt().zzK(this.zza, null);
    }
}
