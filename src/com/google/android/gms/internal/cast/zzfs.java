package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzfs extends zzgj {
    final /* synthetic */ TaskCompletionSource zza;

    public zzfs(zzfu zzfuVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
        Objects.requireNonNull(zzfuVar);
    }

    @Override // com.google.android.gms.internal.cast.zzgf
    public final void zzb(Status status, zzgc zzgcVar) {
        TaskUtil.setResultOrApiException(status, new zzfv(new zzgi(Status.RESULT_SUCCESS, zzgcVar)), (TaskCompletionSource<zzfv>) this.zza);
    }
}
