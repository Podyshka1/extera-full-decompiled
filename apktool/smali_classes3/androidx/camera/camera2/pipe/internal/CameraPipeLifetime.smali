.class public final Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;,
        Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;,
        Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;


# instance fields
.field private final cameraLock:Ljava/lang/Object;

.field private final cameraPipeJob:Lkotlinx/coroutines/Job;

.field private final cameraShutdownActions:Ljava/util/List;

.field private isCameraShutdown:Z

.field private isScopeShutdown:Z

.field private isThreadShutdown:Z

.field private final scopeLock:Ljava/lang/Object;

.field private final scopeShutdownActions:Ljava/util/List;

.field private final threadLock:Ljava/lang/Object;

.field private final threadShutdownActions:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->Companion:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "cameraPipeJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraPipeJob:Lkotlinx/coroutines/Job;

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraLock:Ljava/lang/Object;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraShutdownActions:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeLock:Ljava/lang/Object;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeShutdownActions:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadLock:Ljava/lang/Object;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadShutdownActions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCameraPipeJob$p(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraPipeJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method private final addCameraShutdownAction(Ljava/lang/Runnable;)Z
    .locals 2

    .line 72
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->isCameraShutdown:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraShutdownActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final addScopeShutdownAction(Ljava/lang/Runnable;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->isScopeShutdown:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeShutdownActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final addThreadShutdownAction(Ljava/lang/Runnable;)Z
    .locals 2

    .line 90
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->isThreadShutdown:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadShutdownActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final shutdownCamera()V
    .locals 3

    .line 105
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 106
    const-string v2, "Shutting down cameras..."

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 107
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraShutdownActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 108
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 110
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method private final shutdownScope()Lkotlin/Unit;
    .locals 4

    .line 113
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 114
    const-string v2, "Shutting down scopes..."

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 115
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->scopeShutdownActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 116
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 118
    :cond_1
    new-instance v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;-><init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method private final shutdownThread()V
    .locals 3

    .line 127
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 128
    const-string v2, "Shutting down threads..."

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 129
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->threadShutdownActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 130
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 132
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V
    .locals 2

    const-string/jumbo v0, "shutdownType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shutdownAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 60
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addThreadShutdownAction(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 59
    :cond_1
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addScopeShutdownAction(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addCameraShutdownAction(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    .line 63
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraPipeLifetime already shut down. This is unexpected. Executing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string p1, " shutdown action immediately..."

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public final shutdown()V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdownCamera()V

    .line 100
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdownScope()Lkotlin/Unit;

    .line 101
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdownThread()V

    return-void
.end method
