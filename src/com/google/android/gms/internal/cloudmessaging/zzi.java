package com.google.android.gms.internal.cloudmessaging;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzi extends zzf {
    final /* synthetic */ TaskCompletionSource zza;

    public zzi(zzm zzmVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
        Objects.requireNonNull(zzmVar);
    }

    @Override // com.google.android.gms.internal.cloudmessaging.zzg
    public final void zzb(Status status, String str, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(status, str, (TaskCompletionSource<String>) this.zza);
    }
}
