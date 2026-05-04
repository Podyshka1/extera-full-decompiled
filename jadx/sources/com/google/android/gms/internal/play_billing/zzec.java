package com.google.android.gms.internal.play_billing;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzec extends AbstractExecutorService implements zzev, AutoCloseable {
    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() {
        UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m23m(this);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return zzfh.zzr(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable) {
        return (zzeu) super.submit(runnable);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final RunnableFuture newTaskFor(Callable callable) {
        return new zzfh(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Runnable runnable, Object obj) {
        return (zzeu) super.submit(runnable, obj);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final /* synthetic */ Future submit(Callable callable) {
        return (zzeu) super.submit(callable);
    }
}
