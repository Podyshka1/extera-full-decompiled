package com.google.android.gms.internal.play_billing;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class zzfa extends zzex implements zzew, AutoCloseable {
    final ScheduledExecutorService zza;

    zzfa(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        scheduledExecutorService.getClass();
        this.zza = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.play_billing.zzec, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m23m(this);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService = this.zza;
        zzfh zzfhVarZzr = zzfh.zzr(runnable, null);
        return new zzey(zzfhVarZzr, scheduledExecutorService.schedule(zzfhVarZzr, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzez zzezVar = new zzez(runnable);
        return new zzey(zzezVar, this.zza.scheduleAtFixedRate(zzezVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzez zzezVar = new zzez(runnable);
        return new zzey(zzezVar, this.zza.scheduleWithFixedDelay(zzezVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzfh zzfhVar = new zzfh(callable);
        return new zzey(zzfhVar, this.zza.schedule(zzfhVar, j, timeUnit));
    }
}
