package com.google.android.gms.internal.cast;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzwt {
    public static zzwo zza(ExecutorService executorService) {
        return executorService instanceof zzwo ? (zzwo) executorService : executorService instanceof ScheduledExecutorService ? new zzws((ScheduledExecutorService) executorService) : new zzwp(executorService);
    }
}
