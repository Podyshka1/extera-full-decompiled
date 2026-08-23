package com.google.firebase.concurrent;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;
import com.google.firebase.concurrent.DelegatingScheduledFuture;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class DelegatingScheduledExecutorService implements ScheduledExecutorService, AutoCloseable {
    private final ExecutorService delegate;
    private final ScheduledExecutorService scheduler;

    @Override // java.lang.AutoCloseable
    public /* synthetic */ void close() {
        UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1.m23m(this);
    }

    DelegatingScheduledExecutorService(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.delegate = executorService;
        this.scheduler = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public List shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.delegate.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.delegate.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.delegate.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Callable callable) {
        return this.delegate.submit(callable);
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable, Object obj) {
        return this.delegate.submit(runnable, obj);
    }

    @Override // java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable) {
        return this.delegate.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public List invokeAll(Collection collection) {
        return this.delegate.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public List invokeAll(Collection collection, long j, TimeUnit timeUnit) {
        return this.delegate.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public Object invokeAny(Collection collection) {
        return this.delegate.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public Object invokeAny(Collection collection, long j, TimeUnit timeUnit) {
        return this.delegate.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.delegate.execute(runnable);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Runnable runnable, final long j, final TimeUnit timeUnit) {
        return new DelegatingScheduledFuture(new DelegatingScheduledFuture.Resolver() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda0
            @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
            public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
                DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.f$0;
                return delegatingScheduledExecutorService.scheduler.schedule(new Runnable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        delegatingScheduledExecutorService.delegate.execute(new Runnable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                DelegatingScheduledExecutorService.$r8$lambda$eeSfYQ6BJhS7zSXRLrNL2MRv5Cc(runnable, completer);
                            }
                        });
                    }
                }, j, timeUnit);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$eeSfYQ6BJhS7zSXRLrNL2MRv5Cc(Runnable runnable, DelegatingScheduledFuture.Completer completer) {
        try {
            runnable.run();
            completer.set(null);
        } catch (Exception e) {
            completer.setException(e);
        }
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture schedule(final Callable callable, final long j, final TimeUnit timeUnit) {
        return new DelegatingScheduledFuture(new DelegatingScheduledFuture.Resolver() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda3
            @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
            public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
                DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.f$0;
                return delegatingScheduledExecutorService.scheduler.schedule(new Callable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda6
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return delegatingScheduledExecutorService.delegate.submit(new Runnable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda9
                            @Override // java.lang.Runnable
                            public final void run() {
                                DelegatingScheduledExecutorService.$r8$lambda$DPkf5Azy2quQUi97kfFjV0McX98(callable, completer);
                            }
                        });
                    }
                }, j, timeUnit);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$DPkf5Azy2quQUi97kfFjV0McX98(Callable callable, DelegatingScheduledFuture.Completer completer) {
        try {
            completer.set(callable.call());
        } catch (Exception e) {
            completer.setException(e);
        }
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleAtFixedRate(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new DelegatingScheduledFuture(new DelegatingScheduledFuture.Resolver() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda1
            @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
            public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
                DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.f$0;
                return delegatingScheduledExecutorService.scheduler.scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        delegatingScheduledExecutorService.delegate.execute(new Runnable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda10
                            @Override // java.lang.Runnable
                            public final void run() throws Exception {
                                DelegatingScheduledExecutorService.$r8$lambda$EbEzOZCjWOxrxgoPIN3wANG2ziw(runnable, completer);
                            }
                        });
                    }
                }, j, j2, timeUnit);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$EbEzOZCjWOxrxgoPIN3wANG2ziw(Runnable runnable, DelegatingScheduledFuture.Completer completer) throws Exception {
        try {
            runnable.run();
        } catch (Exception e) {
            completer.setException(e);
            throw e;
        }
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleWithFixedDelay(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new DelegatingScheduledFuture(new DelegatingScheduledFuture.Resolver() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda2
            @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Resolver
            public final ScheduledFuture addCompleter(DelegatingScheduledFuture.Completer completer) {
                DelegatingScheduledExecutorService delegatingScheduledExecutorService = this.f$0;
                return delegatingScheduledExecutorService.scheduler.scheduleWithFixedDelay(new Runnable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        delegatingScheduledExecutorService.delegate.execute(new Runnable() { // from class: com.google.firebase.concurrent.DelegatingScheduledExecutorService$$ExternalSyntheticLambda11
                            @Override // java.lang.Runnable
                            public final void run() {
                                DelegatingScheduledExecutorService.$r8$lambda$M3Tx009A2yliSiUlG7LADIaVIu4(runnable, completer);
                            }
                        });
                    }
                }, j, j2, timeUnit);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$M3Tx009A2yliSiUlG7LADIaVIu4(Runnable runnable, DelegatingScheduledFuture.Completer completer) {
        try {
            runnable.run();
        } catch (Exception e) {
            completer.setException(e);
        }
    }
}
