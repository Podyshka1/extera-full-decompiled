package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes5.dex */
public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(I i);
}
