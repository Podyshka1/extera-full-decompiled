package com.google.android.datatransport.runtime.retries;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Retries {
    public static Object retry(int i, Object obj, Function function, RetryStrategy retryStrategy) {
        Object objApply;
        if (i < 1) {
            return function.apply(obj);
        }
        do {
            objApply = function.apply(obj);
            obj = retryStrategy.shouldRetry(obj, objApply);
            if (obj == null) {
                break;
            }
            i--;
        } while (i >= 1);
        return objApply;
    }
}
