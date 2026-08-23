package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PendingResultUtil {
    private static final zas zaa = new zao();

    public interface ResultConverter<R extends Result, T> {
        T convert(R r);
    }

    public static <R extends Result, T> Task<T> toTask(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter) {
        zas zasVar = zaa;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.addStatusListener(new zap(pendingResult, taskCompletionSource, resultConverter, zasVar));
        return taskCompletionSource.getTask();
    }

    public static <R extends Result> Task<Void> toVoidTask(PendingResult<R> pendingResult) {
        return toTask(pendingResult, new zar());
    }
}
