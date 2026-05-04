.class public final Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraBackends;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$CameraBackendContext;
    }
.end annotation


# instance fields
.field private final activeCameraBackends:Ljava/util/Map;

.field private final cameraBackends:Ljava/util/Map;

.field private final cameraPipeContext:Landroid/content/Context;

.field private final default:Landroidx/camera/camera2/pipe/CameraBackend;

.field private final defaultBackendId:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public static synthetic $r8$lambda$0KcRHolqeaFxGlSbhbjtR0oK0DQ(Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->_init_$lambda$0(Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)V
    .locals 1

    const-string v0, "defaultBackendId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraBackends"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeLifetime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->defaultBackendId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->cameraBackends:Ljava/util/Map;

    .line 36
    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->cameraPipeContext:Landroid/content/Context;

    .line 37
    iput-object p4, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 40
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->lock:Ljava/lang/Object;

    .line 43
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->activeCameraBackends:Ljava/util/Map;

    .line 46
    sget-object p3, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;->CAMERA:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;

    new-instance p4, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;)V

    invoke-virtual {p5, p3, p4}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->addShutdownAction(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->get-SG3A4s8(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p3

    if-eqz p3, :cond_0

    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->default:Landroidx/camera/camera2/pipe/CameraBackend;

    return-void

    .line 53
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to load the default backend for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "! Available backends are "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 53
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;)V
    .locals 2

    .line 47
    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$1$1;-><init>(Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get-SG3A4s8(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 5

    const-string v0, "backendId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->activeCameraBackends:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 70
    monitor-exit v0

    return-object v1

    .line 75
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->cameraBackends:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraBackendFactory;

    if-eqz v1, :cond_1

    .line 76
    new-instance v2, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$CameraBackendContext;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->cameraPipeContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-direct {v2, v3, v4, p0}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl$CameraBackendContext;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraBackends;)V

    .line 75
    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/CameraBackendFactory;->create(Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 79
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/camera/camera2/pipe/CameraBackendId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->activeCameraBackends:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackendId;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected backend id! Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but it was actually "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public getDefault()Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->default:Landroidx/camera/camera2/pipe/CameraBackend;

    return-object v0
.end method

.method public shutdown(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 64
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    .line 64
    const-string v1, "CameraBackends#shutdown"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->activeCameraBackends:Ljava/util/Map;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraBackend;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/CameraBackend;->shutdownAsync()Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 154
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {v1, p1}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
