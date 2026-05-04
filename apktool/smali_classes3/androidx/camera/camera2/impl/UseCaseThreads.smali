.class public final Landroidx/camera/camera2/impl/UseCaseThreads;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final isSequentialThread:Ljava/lang/ThreadLocal;

.field private final mainHandler:Landroid/os/Handler;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sequentialDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final sequentialExecutor:Ljava/util/concurrent/Executor;

.field private final sequentialExecutorDelegate:Ljava/util/concurrent/Executor;

.field private sequentialScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$Sy8e0BZ-W_MxonrOBkbBkAohDiY(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor$lambda$0$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YsXDVD6TU3Ace-IWj-1R_tsob-M(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor$lambda$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 39
    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 41
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->mainHandler:Landroid/os/Handler;

    .line 43
    invoke-static {p2}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    const-string p3, "newSequentialExecutor(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutorDelegate:Ljava/util/concurrent/Executor;

    .line 49
    new-instance p2, Ljava/lang/ThreadLocal;

    invoke-direct {p2}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    .line 63
    new-instance p2, Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/UseCaseThreads;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor:Ljava/util/concurrent/Executor;

    .line 73
    invoke-static {p2}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 75
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p3, v0, p3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private static final sequentialExecutor$lambda$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutorDelegate:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final sequentialExecutor$lambda$0$0(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V
    .locals 2

    .line 65
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 67
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    throw p1
.end method


# virtual methods
.method public final checkOnSequentialThread()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseThreads;->isOnSequentialThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread check failed: This method must be called from the UseCaseThreads sequential scope. Current thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getSequentialExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getSequentialScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final isOnSequentialThread()Z
    .locals 2

    .line 57
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
