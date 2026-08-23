package com.google.android.gms.cast.framework.media;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzam extends zzbc {
    final /* synthetic */ int zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ RemoteMediaClient zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzam(RemoteMediaClient remoteMediaClient, boolean z, int i, int i2, int i3) {
        super(remoteMediaClient, true);
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        Objects.requireNonNull(remoteMediaClient);
        this.zzd = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void zza() {
        this.zzd.zzt().zzI(zzb(), this.zza, this.zzb, this.zzc);
    }
}
