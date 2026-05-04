.class public abstract Lkotlinx/coroutines/ThreadPoolDispatcherKt;
.super Ljava/lang/Object;


# direct methods
.method public static final newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static final newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/ThreadPoolDispatcherKt__MultithreadedDispatchers_commonKt;->newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method
