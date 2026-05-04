package com.google.android.gms.internal.wallet;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
final class zzu extends zzt {
    private final TaskCompletionSource zza;

    zzu(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.wallet.zzt, com.google.android.gms.internal.wallet.zzq
    public final void zzc(Status status, boolean z, Bundle bundle) {
        TaskUtil.setResultOrApiException(status, Boolean.valueOf(z), this.zza);
    }

    @Override // com.google.android.gms.internal.wallet.zzt, com.google.android.gms.internal.wallet.zzq
    public final void zzg(int i, boolean z, Bundle bundle) {
        TaskUtil.setResultOrApiException(new Status(i), Boolean.valueOf(z), this.zza);
    }
}
