package com.google.android.gms.cast;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzx extends zzy {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ CastRemoteDisplayClient zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzx(CastRemoteDisplayClient castRemoteDisplayClient, TaskCompletionSource taskCompletionSource) {
        super(null);
        this.zza = taskCompletionSource;
        Objects.requireNonNull(castRemoteDisplayClient);
        this.zzb = castRemoteDisplayClient;
    }

    @Override // com.google.android.gms.cast.zzy, com.google.android.gms.internal.cast.zzey
    public final void zzd(int i, ApiMetadata apiMetadata) {
        Object[] objArr = {Integer.valueOf(i)};
        CastRemoteDisplayClient castRemoteDisplayClient = this.zzb;
        castRemoteDisplayClient.zzb().m287d("onError: %d", objArr);
        castRemoteDisplayClient.zza();
        TaskUtil.setResultOrApiException(Status.RESULT_INTERNAL_ERROR, (TaskCompletionSource<Void>) this.zza, apiMetadata);
    }

    @Override // com.google.android.gms.cast.zzy, com.google.android.gms.internal.cast.zzey
    public final void zzf(ApiMetadata apiMetadata) {
        CastRemoteDisplayClient castRemoteDisplayClient = this.zzb;
        castRemoteDisplayClient.zzb().m287d("onDisconnected", new Object[0]);
        castRemoteDisplayClient.zza();
        TaskUtil.setResultOrApiException(Status.RESULT_SUCCESS, (TaskCompletionSource<Void>) this.zza, apiMetadata);
    }
}
