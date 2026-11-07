package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
final class zzph extends zzpd implements ScheduledExecutorService, zzpc, AutoCloseable {
    final ScheduledExecutorService zza;

    public zzph(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.zza = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzof, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m25m(this);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzpm zzpmVarZza = zzpm.zza(runnable, null);
        return new zzpf(zzpmVarZza, scheduledExecutorService.schedule(zzpmVarZza, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzpg zzpgVar = new zzpg(runnable);
        return new zzpf(zzpgVar, this.zza.scheduleAtFixedRate(zzpgVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzpg zzpgVar = new zzpg(runnable);
        return new zzpf(zzpgVar, this.zza.scheduleWithFixedDelay(zzpgVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzpm zzpmVar = new zzpm(callable);
        return new zzpf(zzpmVar, this.zza.schedule(zzpmVar, j, timeUnit));
    }
}
