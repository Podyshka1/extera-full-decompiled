package com.google.android.gms.internal.mlkit_genai_prompt;

import j$.time.Duration;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzdk {
    public abstract zzdk zza(ExecutorService executorService);

    public abstract zzdk zzb(Executor executor);

    public abstract zzdk zzc(boolean z);

    public abstract zzdk zzd(Duration duration);

    public abstract zzdk zze(ScheduledExecutorService scheduledExecutorService);

    public abstract zzdk zzf(Optional optional);

    public abstract Optional zzg();

    public abstract Optional zzh();

    public final zzdn zzi() {
        if (!zzg().isPresent()) {
            zza(Executors.newCachedThreadPool(new zzdm("AiCoreClientWorker")));
        }
        if (!zzh().isPresent()) {
            zze(zzdj.zza);
        }
        return zzj();
    }

    public abstract zzdn zzj();
}
