package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzpi {
    public static Executor zza() {
        return zzok.INSTANCE;
    }

    public static zzpc zzb(ExecutorService executorService) {
        return executorService instanceof zzpc ? (zzpc) executorService : executorService instanceof ScheduledExecutorService ? new zzph((ScheduledExecutorService) executorService) : new zzpd(executorService);
    }

    public static Executor zzc(final Executor executor, final zzoc zzocVar) {
        executor.getClass();
        return executor == zzok.INSTANCE ? executor : new Executor() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzpe
            @Override // java.util.concurrent.Executor
            public final /* synthetic */ void execute(Runnable runnable) {
                zzpi.zze(executor, zzocVar, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void zze(Executor executor, zzoc zzocVar, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (RejectedExecutionException e) {
            zzocVar.zzi(e);
        }
    }
}
