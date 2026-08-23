package com.google.android.gms.internal.cast;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzsc {
    public static zzrx zza(ExecutorService executorService) {
        return executorService instanceof zzrx ? (zzrx) executorService : executorService instanceof ScheduledExecutorService ? new zzsb((ScheduledExecutorService) executorService) : new zzry(executorService);
    }
}
