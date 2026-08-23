package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzaf implements BaseImplementation$ResultHolder {
    private final TaskCompletionSource zza;

    public zzaf(TaskCompletionSource taskCompletionSource) {
        Preconditions.checkNotNull(taskCompletionSource);
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder
    public final /* synthetic */ void setResult(Object obj) {
        TaskUtil.setResultOrApiException((Status) obj, null, this.zza);
    }
}
