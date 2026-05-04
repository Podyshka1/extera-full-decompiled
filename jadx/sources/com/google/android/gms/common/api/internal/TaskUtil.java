package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TaskUtil {
    public static void setResultOrApiException(Status status, TaskCompletionSource taskCompletionSource) {
        setResultOrApiException(status, null, taskCompletionSource);
    }

    public static boolean trySetResultOrApiException(Status status, Object obj, TaskCompletionSource taskCompletionSource) {
        return status.isSuccess() ? taskCompletionSource.trySetResult(obj) : taskCompletionSource.trySetException(ApiExceptionUtil.fromStatus(status));
    }

    public static void setResultOrApiException(Status status, Object obj, TaskCompletionSource taskCompletionSource) {
        if (status.isSuccess()) {
            taskCompletionSource.setResult(obj);
        } else {
            taskCompletionSource.setException(ApiExceptionUtil.fromStatus(status));
        }
    }
}
