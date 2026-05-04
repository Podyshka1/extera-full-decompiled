package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* JADX INFO: loaded from: classes4.dex */
final class zzr extends RemoteMediaClient.Callback {
    final /* synthetic */ CastSession zza;

    zzr(CastSession castSession) {
        this.zza = castSession;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void zza(String str, long j, int i, long j2, long j3) {
        CastSession castSession = this.zza;
        if (castSession.zzm != null) {
            castSession.zzm.zzb(str, j, i, j2, j3);
        }
    }
}
