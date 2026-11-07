package com.google.android.gms.internal.p003authapi;

import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zbal extends zbk {
    final /* synthetic */ TaskCompletionSource zba;

    public zbal(zbat zbatVar, TaskCompletionSource taskCompletionSource) {
        this.zba = taskCompletionSource;
        Objects.requireNonNull(zbatVar);
    }

    @Override // com.google.android.gms.internal.p003authapi.zbl
    public final void zbb(Status status, BeginSignInResult beginSignInResult) {
        TaskUtil.setResultOrApiException(status, beginSignInResult, (TaskCompletionSource<BeginSignInResult>) this.zba);
    }
}
