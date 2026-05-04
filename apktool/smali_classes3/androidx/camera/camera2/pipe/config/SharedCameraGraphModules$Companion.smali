.class public final Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCameraGraphCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeJob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    .line 142
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "CXCP-Graph"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 141
    invoke-interface {p2, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    return-object p1
.end method

.method public final provideFrameDistributor(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/core/SystemClockOffsets;)Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 7

    const-string/jumbo v0, "streamGraphImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameCaptureQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraMetadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClockOffsets"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "SENSOR_INFO_TIMESTAMP_SOURCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    :goto_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :goto_2
    new-instance v1, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    .line 200
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToMonotonicNs()J

    move-result-wide v5

    move-object v2, p1

    move-object v3, p2

    .line 196
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;ZJ)V

    return-object v1
.end method

.method public final provideRequestListeners(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Landroidx/camera/camera2/pipe/internal/FrameDistributor;)Ljava/util/List;
    .locals 2

    const-string v0, "graphConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener3A"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameDistributor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 154
    new-array v0, v0, [Landroidx/camera/camera2/pipe/Request$Listener;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getDefaultListeners()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final provideSurfaceGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraSurfaceManager;)Landroidx/camera/camera2/pipe/graph/SurfaceGraph;
    .locals 2

    const-string/jumbo v0, "streamGraphImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraSurfaceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 180
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getImageSourceMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v1

    .line 176
    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Ljava/util/Map;)V

    return-object v0
.end method

.method public final provideSystemClockOffsets()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
    .locals 1

    .line 204
    sget-object v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->Companion:Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimate()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    move-result-object v0

    return-object v0
.end method
