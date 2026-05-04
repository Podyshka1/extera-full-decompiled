.class public final Landroidx/camera/camera2/pipe/compat/Camera2Backend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraBackend;
.implements Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;


# instance fields
.field private final activeCameraControllers:Ljava/util/Set;

.field private final camera2CameraControllerComponent:Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

.field private final camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

.field private final camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

.field private final camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

.field private final cameraPipeContext:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2DeviceCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2MetadataCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2DeviceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2CameraControllerComponent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraPipeContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 55
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 56
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 57
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    .line 58
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2CameraControllerComponent:Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

    .line 59
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->cameraPipeContext:Landroid/content/Context;

    .line 61
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    .line 62
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getActiveCameraControllers$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/util/Set;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getCamera2DeviceManager$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method private final buildOutputConfiguration(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Ljava/util/List;
    .locals 19

    .line 152
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 154
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 155
    sget-object v4, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    .line 157
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getFormat-8FPWQzE()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 158
    sget-object v5, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v7

    .line 159
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v8

    .line 160
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    .line 161
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v10

    .line 162
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v11

    .line 163
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSensorPixelModes()Ljava/util/List;

    move-result-object v12

    .line 164
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v13

    .line 166
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getCamera-1LO98Z0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v5, v9}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    :goto_1
    if-nez v5, :cond_3

    .line 167
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getCamera-1LO98Z0()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object/from16 v16, v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    const/16 v17, 0x600

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 155
    invoke-static/range {v4 .. v18}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->create-gWWoySg$default(Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 172
    invoke-interface {v3, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 173
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public awaitCameraIds()Ljava/util/List;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->awaitCameraIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object p1

    return-object p1
.end method

.method public awaitConcurrentCameraIds()Ljava/util/Set;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->awaitConcurrentCameraIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createCameraController(Landroidx/camera/camera2/pipe/CameraContext;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;)Landroidx/camera/camera2/pipe/CameraController;
    .locals 8

    const-string v0, "cameraContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "graphId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "graphConfig"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "graphListener"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "streamGraph"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "surfaceTracker"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2CameraControllerComponent:Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

    .line 212
    new-instance v0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    .line 217
    move-object v5, p5

    check-cast v5, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-object v7, p0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 212
    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;-><init>(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;)V

    .line 211
    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;->camera2ControllerConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;

    move-result-object p1

    .line 222
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerComponent;->cameraController()Landroidx/camera/camera2/pipe/CameraController;

    move-result-object p1

    .line 226
    iget-object p2, v1, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, v1, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2

    throw p1
.end method

.method public getCameraIds()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getCameraIds()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getId-QwmhuAM()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "CXCP-Camera2"

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraBackendId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$2:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object p1

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-ge p2, v2, :cond_4

    .line 106
    sget-object p1, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getUNKNOWN-Xp6DSB4()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p1

    return-object p1

    .line 111
    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    invoke-virtual {p2, v2, v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getOrInitializeDeviceSetupCompat-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto/16 :goto_3

    .line 104
    :cond_5
    :goto_1
    check-cast p2, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    .line 113
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v2

    .line 114
    sget-object v5, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v6

    invoke-static {v2, v6}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    .line 115
    :cond_6
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v6

    invoke-static {v2, v6}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 116
    :cond_7
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v4

    invoke-static {v2, v4}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 117
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported session mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_8
    sget-object p1, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getUNKNOWN-Xp6DSB4()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p1

    return-object p1

    .line 120
    :cond_9
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v4

    .line 125
    :goto_2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->buildOutputConfiguration(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Ljava/util/List;

    move-result-object v2

    .line 123
    invoke-static {v4, v2}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->newSessionConfiguration(ILjava/util/List;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object v2

    .line 129
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    invoke-virtual {v4, v5, v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getOrInitializeDeviceSetupWrapper-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a

    :goto_3
    return-object v1

    :cond_a
    move-object v1, p2

    move-object p2, v0

    move-object v0, p1

    move-object p1, v2

    .line 104
    :goto_4
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    .line 131
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionTemplate-fGx8uWA()I

    move-result v3

    invoke-interface {p2, v3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    goto :goto_5

    :cond_b
    move-object p2, v2

    :goto_5
    if-eqz p2, :cond_f

    .line 134
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 136
    instance-of v5, v4, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v5, :cond_d

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_7

    :cond_d
    move-object v4, v2

    :goto_7
    if-eqz v4, :cond_c

    invoke-virtual {p2, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    .line 138
    :cond_e
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    const-string v0, "build(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setSessionParameters(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest;)V

    :cond_f
    if-eqz v1, :cond_10

    .line 141
    invoke-interface {v1, p1}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat$SupportQueryResult;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat$SupportQueryResult;->getSupported()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_10
    if-eqz v2, :cond_11

    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->constructor-impl(I)I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p1

    return-object p1

    .line 145
    :cond_11
    sget-object p1, Landroidx/camera/camera2/pipe/ConfigQueryResult;->Companion:Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult$Companion;->getUNKNOWN-Xp6DSB4()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;->box-impl(I)Landroidx/camera/camera2/pipe/ConfigQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public onControllerClosed(Landroidx/camera/camera2/pipe/CameraController;)V
    .locals 3

    const-string v0, "cameraController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " finalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public shutdownAsync()Lkotlinx/coroutines/Deferred;
    .locals 7

    .line 184
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    .line 184
    const-string v1, "Camera2Backend#shutdownAsync"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->shutdown()V

    .line 186
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Threads;->getCameraPipeScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0
.end method
