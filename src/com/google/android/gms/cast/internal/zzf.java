package com.google.android.gms.cast.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzf extends IStatusCallback.Stub {
    final /* synthetic */ TaskCompletionSource zza;

    public zzf(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
        Objects.requireNonNull(zznVar);
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }
}
