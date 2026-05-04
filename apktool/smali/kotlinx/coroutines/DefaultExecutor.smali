.class public final Lkotlinx/coroutines/DefaultExecutor;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

.field private static final KEEP_ALIVE_NANOS:J

.field private static volatile _thread:Ljava/lang/Thread;

.field private static volatile debugStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/coroutines/DefaultExecutor;

    invoke-direct {v0}, Lkotlinx/coroutines/DefaultExecutor;-><init>()V

    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-static {v0, v3, v1, v2}, Lkotlinx/coroutines/EventLoop;->incrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    .line 36
    :try_start_0
    const-string/jumbo v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/DefaultExecutor;->KEEP_ALIVE_NANOS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;-><init>()V

    return-void
.end method

.method private final declared-synchronized acknowledgeShutdownIfNeeded()V
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutdownRequested()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 182
    :try_start_1
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 183
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->resetAll()V

    .line 184
    const-string/jumbo v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final declared-synchronized createThreadSync()Ljava/lang/Thread;
    .locals 2

    monitor-enter p0

    .line 132
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 133
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 140
    sget-object v1, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final isShutDown()Z
    .locals 2

    .line 57
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isShutdownRequested()Z
    .locals 2

    .line 60
    sget v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final declared-synchronized notifyStartup()Z
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutdownRequested()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 159
    :try_start_1
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 160
    const-string/jumbo v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final shutdownError()V
    .locals 2

    .line 75
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public enqueue(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->shutdownError()V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getThread()Ljava/lang/Thread;
    .locals 1

    .line 46
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->createThreadSync()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase;->scheduleInvokeOnTimeout(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method protected reschedule(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->shutdownError()V

    return-void
.end method

.method public run()V
    .locals 12

    .line 98
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->setEventLoop$kotlinx_coroutines_core(Lkotlinx/coroutines/EventLoop;)V

    .line 99
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->notifyStartup()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 122
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 123
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 124
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 126
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    .line 104
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 105
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->processNextEvent()J

    move-result-wide v5

    cmp-long v7, v5, v1

    const-wide/16 v8, 0x0

    if-nez v7, :cond_4

    .line 108
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    cmp-long v7, v3, v1

    if-nez v7, :cond_2

    .line 109
    sget-wide v3, Lkotlinx/coroutines/DefaultExecutor;->KEEP_ALIVE_NANOS:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v10

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_1
    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_3

    .line 122
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 123
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 124
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 126
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    return-void

    .line 112
    :cond_3
    :try_start_2
    invoke-static {v5, v6, v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    goto :goto_2

    :cond_4
    move-wide v3, v1

    :goto_2
    cmp-long v7, v5, v8

    if-lez v7, :cond_1

    .line 117
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->isShutdownRequested()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    .line 122
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 123
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 124
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 126
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    :cond_5
    return-void

    .line 118
    :cond_6
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 122
    :goto_3
    sput-object v0, Lkotlinx/coroutines/DefaultExecutor;->_thread:Ljava/lang/Thread;

    .line 123
    invoke-direct {p0}, Lkotlinx/coroutines/DefaultExecutor;->acknowledgeShutdownIfNeeded()V

    .line 124
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    .line 126
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/DefaultExecutor;->getThread()Ljava/lang/Thread;

    :cond_7
    throw v1
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x4

    .line 81
    sput v0, Lkotlinx/coroutines/DefaultExecutor;->debugStatus:I

    .line 82
    invoke-super {p0}, Lkotlinx/coroutines/EventLoopImplBase;->shutdown()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 192
    const-string v0, "DefaultExecutor"

    return-object v0
.end method
