.class abstract synthetic Lkotlinx/coroutines/ThreadPoolDispatcherKt__MultithreadedDispatchers_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-static {v0, p0}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method
