package com.google.android.gms.internal.p031authapiphone;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzz extends zzi {
    final /* synthetic */ TaskCompletionSource zza;

    zzz(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p031authapiphone.zzj
    public final void zzb(Status status) {
        TaskUtil.setResultOrApiException(status, this.zza);
    }
}
