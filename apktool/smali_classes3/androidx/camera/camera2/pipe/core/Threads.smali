.class public final Landroidx/camera/camera2/pipe/core/Threads;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _camera2Executor:Lkotlin/Lazy;

.field private final _camera2Handler:Lkotlin/Lazy;

.field private final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final blockingExecutor:Ljava/util/concurrent/Executor;

.field private final cameraPipeDispatchScope:Lkotlinx/coroutines/CoroutineScope;

.field private final cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

.field private final lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final lightweightExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$TFK4hE4yNW5J9VReSnUURt1j2uc(Lkotlin/jvm/functions/Function0;)Landroid/os/Handler;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Handler$lambda$0(Lkotlin/jvm/functions/Function0;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z326WYWokXVYn48jwdvxyCW-iTE(Lkotlin/jvm/functions/Function0;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Executor$lambda$0(Lkotlin/jvm/functions/Function0;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "cameraPipeScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeDispatchScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lightweightExecutor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lightweightDispatcher"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2Handler"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2Executor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

    .line 36
    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeDispatchScope:Lkotlinx/coroutines/CoroutineScope;

    .line 37
    iput-object p3, p0, Landroidx/camera/camera2/pipe/core/Threads;->blockingExecutor:Ljava/util/concurrent/Executor;

    .line 38
    iput-object p4, p0, Landroidx/camera/camera2/pipe/core/Threads;->blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 39
    iput-object p5, p0, Landroidx/camera/camera2/pipe/core/Threads;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 40
    iput-object p6, p0, Landroidx/camera/camera2/pipe/core/Threads;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 41
    iput-object p7, p0, Landroidx/camera/camera2/pipe/core/Threads;->lightweightExecutor:Ljava/util/concurrent/Executor;

    .line 42
    iput-object p8, p0, Landroidx/camera/camera2/pipe/core/Threads;->lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 46
    new-instance p1, Landroidx/camera/camera2/pipe/core/Threads$$ExternalSyntheticLambda0;

    invoke-direct {p1, p9}, Landroidx/camera/camera2/pipe/core/Threads$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Handler:Lkotlin/Lazy;

    .line 47
    new-instance p1, Landroidx/camera/camera2/pipe/core/Threads$$ExternalSyntheticLambda1;

    invoke-direct {p1, p10}, Landroidx/camera/camera2/pipe/core/Threads$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Executor:Lkotlin/Lazy;

    return-void
.end method

.method private static final _camera2Executor$lambda$0(Lkotlin/jvm/functions/Function0;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 47
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private static final _camera2Handler$lambda$0(Lkotlin/jvm/functions/Function0;)Landroid/os/Handler;
    .locals 0

    .line 46
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$runAsyncSupervised(Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/Threads;->runAsyncSupervised(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    return-object p0
.end method

.method private final runAsyncSupervised(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;
    .locals 6

    .line 97
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeDispatchScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;

    const/4 v1, 0x0

    invoke-direct {v3, p2, v1}, Landroidx/camera/camera2/pipe/core/Threads$runAsyncSupervised$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getBackgroundDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getBlockingDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getCamera2Executor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Executor:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getCamera2Handler()Landroid/os/Handler;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Handler:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final getCameraPipeScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getLightweightDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final getLightweightExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->lightweightExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/pipe/core/Threads$runBlockingCheckedOrNull$1;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Lkotlin/jvm/functions/Function1;JLkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 88
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 63
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "CXCP"

    .line 88
    const-string p3, "runBlockingCheckedOrNull cancelled by thread interruption"

    .line 63
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
