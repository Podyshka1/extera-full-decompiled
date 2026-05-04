.class public final Landroidx/camera/camera2/adapter/CameraFactoryAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraFactory;
.implements Landroidx/camera/core/impl/CameraFactory$Interrogator;


# instance fields
.field private final appComponent$delegate:Lkotlin/Lazy;

.field private availableCameraIds:Ljava/util/Set;

.field private final availableCamerasSelector:Landroidx/camera/core/CameraSelector;

.field private final cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

.field private final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field private final isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lazyCameraPipe:Lkotlin/Lazy;

.field private final lock:Ljava/lang/Object;

.field private final pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

.field private final streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;


# direct methods
.method public static synthetic $r8$lambda$XdM0ky82a6o_01qy6QMeRMWkwsQ(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/config/CameraAppComponent;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->appComponent_delegate$lambda$0(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lkotlin/Lazy;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/internal/StreamSpecsCalculator;Landroidx/camera/core/CameraXConfig;)V
    .locals 1

    const-string v0, "lazyCameraPipe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2InteropCallbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamSpecsCalculator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraXConfig"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lkotlin/Lazy;

    .line 57
    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCamerasSelector:Landroidx/camera/core/CameraSelector;

    .line 58
    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    .line 59
    iput-object p7, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 62
    new-instance p5, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraPipe;->cameras()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p1

    invoke-direct {p5, p6, p1}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;-><init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/pipe/CameraDevices;)V

    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 64
    new-instance p1, Landroidx/camera/camera2/adapter/CameraFactoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p3, p0, p4}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->appComponent$delegate:Lkotlin/Lazy;

    .line 87
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    .line 88
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lock:Ljava/lang/Object;

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/config/CameraAppComponent;->getCameraDevices()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p1

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-static {p1, p4, p5, p4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 1563
    new-instance p6, Ljava/util/ArrayList;

    const/16 p7, 0xa

    invoke-static {p1, p7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p7

    invoke-direct {p6, p7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    .line 1635
    check-cast p7, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {p7}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object p7

    invoke-interface {p6, p7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    .line 95
    :cond_1
    new-instance p1, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    .line 96
    iget-object p7, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lkotlin/Lazy;

    invoke-interface {p7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {p7}, Landroidx/camera/camera2/pipe/CameraPipe;->cameras()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object p7

    invoke-static {p7, p4, p5, p4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->cameraIdsFlow-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    .line 98
    invoke-virtual {p3}, Landroidx/camera/core/impl/CameraThreadConfig;->getCameraExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    const-string p5, "getCameraExecutor(...)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    .line 95
    invoke-direct {p1, p4, p3, p6, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Landroid/content/Context;)V

    .line 94
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    .line 102
    invoke-virtual {p0, p6}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->onCameraIdsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getAvailableCameraIds$p(Landroidx/camera/camera2/adapter/CameraFactoryAdapter;)Ljava/util/Set;
    .locals 0

    .line 52
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    return-object p0
.end method

.method private static final appComponent_delegate$lambda$0(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/config/CameraAppComponent;
    .locals 11

    .line 65
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "CameraFactoryAdapter#appComponent"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;-><init>()V

    .line 67
    sget-object v1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 70
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v1

    .line 69
    invoke-static {}, Landroidx/camera/camera2/config/DaggerCameraAppComponent;->builder()Landroidx/camera/camera2/config/CameraAppComponent$Builder;

    move-result-object v3

    .line 71
    new-instance v4, Landroidx/camera/camera2/config/CameraAppConfig;

    .line 74
    iget-object v5, p2, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/camera/camera2/pipe/CameraPipe;

    .line 76
    iget-object v9, p2, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 77
    iget-object v10, p2, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    move-object v5, p0

    move-object v6, p1

    move-object v8, p3

    .line 71
    invoke-direct/range {v4 .. v10}, Landroidx/camera/camera2/config/CameraAppConfig;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/CameraXConfig;)V

    .line 70
    invoke-interface {v3, v4}, Landroidx/camera/camera2/config/CameraAppComponent$Builder;->config(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/camera2/config/CameraAppComponent$Builder;

    move-result-object p0

    .line 80
    invoke-interface {p0}, Landroidx/camera/camera2/config/CameraAppComponent$Builder;->build()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p0

    .line 81
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Created CameraFactoryAdapter in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 29
    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    .line 75
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "f ms"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "format(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0
.end method

.method private final calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/Set;
    .locals 4

    .line 138
    sget-object v0, Landroidx/camera/camera2/internal/CameraSelectionOptimizer;->Companion:Landroidx/camera/camera2/internal/CameraSelectionOptimizer$Companion;

    .line 139
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object v1

    .line 140
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCamerasSelector:Landroidx/camera/core/CameraSelector;

    .line 141
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 142
    iget-object v3, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    .line 138
    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/camera/camera2/internal/CameraSelectionOptimizer$Companion;->getSelectedAvailableCameraIds(Landroidx/camera/camera2/config/CameraAppComponent;Landroidx/camera/core/CameraSelector;Ljava/util/List;Landroidx/camera/core/internal/StreamSpecsCalculator;)Ljava/util/List;

    move-result-object p1

    .line 145
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 147
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/camera2/config/CameraAppComponent;->getCameraDevices()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object v1

    .line 146
    invoke-static {v1, p1}, Landroidx/camera/camera2/internal/CameraCompatibilityFilter;->getBackwardCompatibleCameraIds(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 145
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private final getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->appComponent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/config/CameraAppComponent;

    return-object v0
.end method


# virtual methods
.method public getAvailableCameraIds(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "cameraIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableCameraIds()Ljava/util/Set;
    .locals 3

    .line 172
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 177
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroidx/camera/camera2/config/CameraAppComponent;->cameraBuilder()Landroidx/camera/camera2/config/CameraComponent$Builder;

    move-result-object v0

    .line 164
    new-instance v1, Landroidx/camera/camera2/config/CameraConfig;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/camera/camera2/config/CameraConfig;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/config/CameraComponent$Builder;->config(Landroidx/camera/camera2/config/CameraConfig;)Landroidx/camera/camera2/config/CameraComponent$Builder;

    move-result-object p1

    .line 165
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    invoke-interface {p1, v0}, Landroidx/camera/camera2/config/CameraComponent$Builder;->streamSpecsCalculator(Landroidx/camera/core/internal/StreamSpecsCalculator;)Landroidx/camera/camera2/config/CameraComponent$Builder;

    move-result-object p1

    .line 166
    invoke-interface {p1}, Landroidx/camera/camera2/config/CameraComponent$Builder;->build()Landroidx/camera/camera2/config/CameraComponent;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Landroidx/camera/camera2/config/CameraComponent;->getCameraInternal()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p1

    return-object p1

    .line 159
    :cond_0
    new-instance p1, Landroidx/camera/core/impl/CameraUpdateException;

    const-string v0, "CameraFactory has been shut down."

    invoke-direct {p1, v0}, Landroidx/camera/core/impl/CameraUpdateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    return-object v0
.end method

.method public getCameraManager()Ljava/lang/Object;
    .locals 1

    .line 185
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->getAppComponent()Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object v0

    return-object v0
.end method

.method public getCameraPresenceSource()Landroidx/camera/core/impl/Observable;
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    return-object v0
.end method

.method public onCameraIdsUpdated(Ljava/util/List;)V
    .locals 4

    const-string v0, "cameraIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 112
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 112
    monitor-exit v0

    return-void

    .line 116
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 112
    monitor-exit v0

    return-void

    .line 119
    :cond_2
    :try_start_2
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated available camera list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->access$getAvailableCameraIds$p(Landroidx/camera/camera2/adapter/CameraFactoryAdapter;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 122
    :cond_3
    :goto_0
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->availableCameraIds:Ljava/util/Set;

    .line 123
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public shutdown()V
    .locals 2

    .line 192
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->shutdown()V

    .line 196
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->pipeCameraPresenceObservable:Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;

    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;->stopMonitoring()V

    .line 197
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->lazyCameraPipe:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipe;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraPipe;->shutdown()V

    :cond_1
    :goto_0
    return-void
.end method
