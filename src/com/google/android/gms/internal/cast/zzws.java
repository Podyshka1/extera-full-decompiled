package com.google.android.gms.internal.cast;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class zzws extends zzwp implements ScheduledExecutorService, zzwo, AutoCloseable {
    final ScheduledExecutorService zza;

    public zzws(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.zza = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.cast.zzwd, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m25m(this);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzww zzwwVarZzo = zzww.zzo(runnable, null);
        return new zzwq(zzwwVarZzo, scheduledExecutorService.schedule(zzwwVarZzo, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzwr zzwrVar = new zzwr(runnable);
        return new zzwq(zzwrVar, this.zza.scheduleAtFixedRate(zzwrVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzwr zzwrVar = new zzwr(runnable);
        return new zzwq(zzwrVar, this.zza.scheduleWithFixedDelay(zzwrVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzww zzwwVar = new zzww(callable);
        return new zzwq(zzwwVar, this.zza.schedule(zzwwVar, j, timeUnit));
    }
}
