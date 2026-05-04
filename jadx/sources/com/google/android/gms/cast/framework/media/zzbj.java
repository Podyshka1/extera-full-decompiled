package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
final class zzbj implements RemoteMediaClient.MediaChannelResult {
    final /* synthetic */ Status zza;

    zzbj(zzbk zzbkVar, Status status) {
        this.zza = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }
}
