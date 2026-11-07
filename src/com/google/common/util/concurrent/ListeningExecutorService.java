package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes5.dex */
public interface ListeningExecutorService extends ExecutorService, AutoCloseable {
    ListenableFuture<?> submit(Runnable runnable);

    <T> ListenableFuture<T> submit(Callable<T> callable);
}
