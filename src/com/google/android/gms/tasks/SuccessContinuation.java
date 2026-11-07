package com.google.android.gms.tasks;

/* JADX INFO: loaded from: classes5.dex */
public interface SuccessContinuation<TResult, TContinuationResult> {
    Task<TContinuationResult> then(TResult tresult);
}
