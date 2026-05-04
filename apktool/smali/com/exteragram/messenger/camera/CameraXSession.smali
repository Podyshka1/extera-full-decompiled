.class public Lcom/exteragram/messenger/camera/CameraXSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;
    }
.end annotation


# static fields
.field private static final fpsRangesCache:Ljava/util/Map;

.field private static isSeamlessSwitchingAvailableDefaultCache:Ljava/lang/Boolean;

.field private static final stabilizationCache:Ljava/util/Map;

.field private static final videoSizesCache:Ljava/util/Map;


# instance fields
.field private camera:Landroidx/camera/core/Camera;

.field private cameraBack:Landroidx/camera/core/Camera;

.field private cameraControl:Landroidx/camera/core/CameraControl;

.field private cameraControlBack:Landroidx/camera/core/CameraControl;

.field private cameraControlFront:Landroidx/camera/core/CameraControl;

.field private cameraFront:Landroidx/camera/core/Camera;

.field private cameraSelector:Landroidx/camera/core/CameraSelector;

.field private isBinding:Z

.field private isDualMode:Z

.field private isFrontface:Z

.field private isInitiated:Z

.field private isTorchOn:Z

.field private final lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

.field private final meteringPointFactory:Landroidx/camera/core/MeteringPointFactory;

.field private previewUseCase:Landroidx/camera/core/Preview;

.field private previewUseCaseBack:Landroidx/camera/core/Preview;

.field private provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private final surfaceProviderPrimary:Landroidx/camera/core/Preview$SurfaceProvider;

.field private surfaceProviderSecondary:Landroidx/camera/core/Preview$SurfaceProvider;

.field private videoCapture:Landroidx/camera/video/VideoCapture;

.field private videoCaptureBack:Landroidx/camera/video/VideoCapture;


# direct methods
.method public static synthetic $r8$lambda$01A6A-phNT0-EZ3ty8WLlv6PKG4(Landroidx/camera/core/CameraInfo;Landroidx/camera/video/Quality;)Landroid/util/Size;
    .locals 1

    .line 679
    invoke-static {p0, p1}, Landroidx/camera/video/QualitySelector;->getResolution(Landroidx/camera/core/CameraInfo;Landroidx/camera/video/Quality;)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    new-instance p1, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    .line 680
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static synthetic $r8$lambda$ObvWR0kql5zK_bEzJdqCswEhh3Y(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 712
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Qnp3tdnCGXipnx_Ppj86SLGYoAY(Lcom/exteragram/messenger/camera/CameraXSession;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->lambda$initCamera$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T4tWowZgGUKCS8bI_KCHpQKUyOM(I)Z
    .locals 0

    .line 704
    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$WFM3GZVFUtiOPET-ySK3lZGOOCA(Landroidx/camera/core/CameraInfo;)Ljava/util/LinkedHashMap;
    .locals 4

    .line 675
    invoke-static {p0}, Landroidx/camera/video/Recorder;->getVideoCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/video/VideoCapabilities;

    move-result-object v0

    .line 676
    sget-object v1, Landroidx/camera/core/DynamicRange;->UNSPECIFIED:Landroidx/camera/core/DynamicRange;

    invoke-interface {v0, v1}, Landroidx/camera/video/VideoCapabilities;->getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;

    move-result-object v0

    .line 677
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 678
    invoke-static {}, Lj$/util/function/Function$-CC;->identity()Ljava/util/function/Function;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/core/CameraInfo;)V

    new-instance p0, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda10;

    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda10;-><init>()V

    new-instance v3, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda11;-><init>()V

    .line 677
    invoke-static {v1, v2, p0, v3}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object p0

    invoke-interface {v0, p0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static synthetic $r8$lambda$dyA7yjAykSpQeQnKvqQ-HTLzp7s(Lcom/exteragram/messenger/camera/CameraXSession;Lcom/google/common/util/concurrent/ListenableFuture;ZLandroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/camera/CameraXSession;->lambda$initCamera$1(Lcom/google/common/util/concurrent/ListenableFuture;ZLandroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fBxSD1FV2tUKCceSHJQOCC_V3Bo(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    .line 729
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 730
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 731
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.concurrent"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 728
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/exteragram/messenger/camera/CameraXSession;->isSeamlessSwitchingAvailableDefaultCache:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$tZn9Vw-7ajOvMRMMd42QgG7wMV8(Landroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 682
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Duplicate key %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$vGDHxvnfSRLnK1Y72oTpmRqaYLU(II)Z
    .locals 0

    .line 702
    if-lez p1, :cond_0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/camera/CameraXSession;->stabilizationCache:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/camera/CameraXSession;->fpsRangesCache:Ljava/util/Map;

    .line 666
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/camera/CameraXSession;->videoSizesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;Landroidx/camera/core/MeteringPointFactory;Landroidx/camera/core/Preview$SurfaceProvider;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isInitiated:Z

    .line 82
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    .line 83
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isBinding:Z

    .line 256
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isTorchOn:Z

    .line 143
    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    .line 144
    iput-object p2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->meteringPointFactory:Landroidx/camera/core/MeteringPointFactory;

    .line 145
    iput-object p3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->surfaceProviderPrimary:Landroidx/camera/core/Preview$SurfaceProvider;

    return-void
.end method

.method private applyFpsRange(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview$Builder;)V
    .locals 3

    .line 392
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->extendedFramesPerSecond:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->getFpsRanges(Landroidx/camera/core/CameraSelector;)[Landroid/util/Range;

    move-result-object p1

    .line 396
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->isRangeSupported([Landroid/util/Range;Landroid/util/Range;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 400
    new-instance p1, Landroidx/camera/camera2/interop/Camera2Interop$Extender;

    invoke-direct {p1, p2}, Landroidx/camera/camera2/interop/Camera2Interop$Extender;-><init>(Landroidx/camera/core/ExtendableBuilder;)V

    .line 401
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2, v0}, Landroidx/camera/camera2/interop/Camera2Interop$Extender;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/interop/Camera2Interop$Extender;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 406
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private bindDualUseCases()V
    .locals 5

    .line 482
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->bindDualUseCasesFallback()V

    return-void

    .line 488
    :cond_0
    :try_start_0
    new-instance v0, Landroidx/camera/core/UseCaseGroup$Builder;

    invoke-direct {v0}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCase:Landroidx/camera/core/Preview;

    .line 489
    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->videoCapture:Landroidx/camera/video/VideoCapture;

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 495
    :cond_1
    :goto_0
    new-instance v1, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    sget-object v2, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 497
    invoke-virtual {v0}, Landroidx/camera/core/UseCaseGroup$Builder;->build()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-direct {v1, v2, v0, v3}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;-><init>(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;Landroidx/lifecycle/LifecycleOwner;)V

    .line 501
    new-instance v0, Landroidx/camera/core/UseCaseGroup$Builder;

    invoke-direct {v0}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    iget-object v2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCaseBack:Landroidx/camera/core/Preview;

    .line 502
    invoke-virtual {v0, v2}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v0

    .line 504
    iget-object v2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->videoCaptureBack:Landroidx/camera/video/VideoCapture;

    if-eqz v2, :cond_2

    .line 505
    invoke-virtual {v0, v2}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    .line 508
    :cond_2
    new-instance v2, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    sget-object v3, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 510
    invoke-virtual {v0}, Landroidx/camera/core/UseCaseGroup$Builder;->build()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    iget-object v4, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-direct {v2, v3, v0, v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;-><init>(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;Landroidx/lifecycle/LifecycleOwner;)V

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v1, v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Ljava/util/List;)Landroidx/camera/core/ConcurrentCamera;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Landroidx/camera/core/ConcurrentCamera;->getCameras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/Camera;

    .line 521
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 522
    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraFront:Landroidx/camera/core/Camera;

    .line 523
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlFront:Landroidx/camera/core/CameraControl;

    .line 524
    invoke-interface {v1, v3}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 526
    :cond_3
    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraBack:Landroidx/camera/core/Camera;

    .line 527
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlBack:Landroidx/camera/core/CameraControl;

    .line 528
    invoke-interface {v1, v3}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 531
    :cond_4
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isFrontface:Z

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateActiveControl(Z)V

    .line 532
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateTorchState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 534
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 535
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->bindDualUseCasesFallback()V

    return-void
.end method

.method private bindDualUseCasesFallback()V
    .locals 5

    .line 541
    :try_start_0
    new-instance v0, Landroidx/camera/core/UseCaseGroup$Builder;

    invoke-direct {v0}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCase:Landroidx/camera/core/Preview;

    .line 542
    invoke-virtual {v0, v1}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroidx/camera/core/UseCaseGroup$Builder;->build()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    .line 545
    new-instance v1, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    sget-object v2, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    iget-object v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-direct {v1, v2, v0, v3}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;-><init>(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;Landroidx/lifecycle/LifecycleOwner;)V

    .line 551
    new-instance v0, Landroidx/camera/core/UseCaseGroup$Builder;

    invoke-direct {v0}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    iget-object v2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCaseBack:Landroidx/camera/core/Preview;

    .line 552
    invoke-virtual {v0, v2}, Landroidx/camera/core/UseCaseGroup$Builder;->addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroidx/camera/core/UseCaseGroup$Builder;->build()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    .line 555
    new-instance v2, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    sget-object v3, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    iget-object v4, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-direct {v2, v3, v0, v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;-><init>(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;Landroidx/lifecycle/LifecycleOwner;)V

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v1, v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Ljava/util/List;)Landroidx/camera/core/ConcurrentCamera;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroidx/camera/core/ConcurrentCamera;->getCameras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/Camera;

    .line 568
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    .line 569
    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraFront:Landroidx/camera/core/Camera;

    .line 570
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlFront:Landroidx/camera/core/CameraControl;

    .line 571
    invoke-interface {v1, v3}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 573
    :cond_0
    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraBack:Landroidx/camera/core/Camera;

    .line 574
    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlBack:Landroidx/camera/core/CameraControl;

    .line 575
    invoke-interface {v1, v3}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 578
    :cond_1
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isFrontface:Z

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateActiveControl(Z)V

    .line 579
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateTorchState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 581
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    .line 583
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->bindSingleUseCases()V

    return-void
.end method

.method private bindSingleUseCases()V
    .locals 8

    const/4 v0, 0x0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraSelector:Landroidx/camera/core/CameraSelector;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v2, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->videoCapture:Landroidx/camera/video/VideoCapture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 460
    :try_start_1
    iget-object v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v4, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    iget-object v5, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraSelector:Landroidx/camera/core/CameraSelector;

    iget-object v6, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCase:Landroidx/camera/core/Preview;

    const/4 v7, 0x2

    new-array v7, v7, [Landroidx/camera/core/UseCase;

    aput-object v6, v7, v0

    aput-object v1, v7, v2

    invoke-virtual {v3, v4, v5, v7}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 462
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 463
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    iget-object v4, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraSelector:Landroidx/camera/core/CameraSelector;

    iget-object v5, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCase:Landroidx/camera/core/Preview;

    new-array v2, v2, [Landroidx/camera/core/UseCase;

    aput-object v5, v2, v0

    invoke-virtual {v1, v3, v4, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    iget-object v4, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraSelector:Landroidx/camera/core/CameraSelector;

    iget-object v5, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCase:Landroidx/camera/core/Preview;

    new-array v2, v2, [Landroidx/camera/core/UseCase;

    aput-object v5, v2, v0

    invoke-virtual {v1, v3, v4, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    invoke-interface {v1}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 470
    invoke-interface {v1, v2}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 471
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateTorchState()V

    goto :goto_2

    .line 473
    :cond_1
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isInitiated:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 476
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 477
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isInitiated:Z

    :goto_2
    return-void
.end method

.method private buildPreview(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/Preview;
    .locals 4

    .line 324
    new-instance v0, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    .line 325
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_16_9_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_4_3_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setAspectRatioStrategy(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v0

    .line 328
    new-instance v1, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v1}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/camera/core/Preview$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/Preview$Builder;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    sget-object v1, Lcom/exteragram/messenger/camera/CameraXSession;->stabilizationCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v2, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/core/Preview;->getPreviewCapabilities(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/PreviewCapabilities;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/PreviewCapabilities;->isStabilizationSupported()Z

    move-result v2

    .line 337
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 340
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->cameraStabilization:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setPreviewStabilizationEnabled(Z)Landroidx/camera/core/Preview$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 345
    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 348
    :cond_2
    :goto_3
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->cameraMirrorMode:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview$Builder;->setMirrorMode(I)Landroidx/camera/core/Preview$Builder;

    .line 352
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->applyFpsRange(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview$Builder;)V

    .line 354
    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object p1

    return-object p1
.end method

.method private buildVideoCapture(Landroidx/camera/core/CameraSelector;)Landroidx/camera/video/VideoCapture;
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->getVideoQuality(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;)Landroidx/camera/video/Quality;

    move-result-object v0

    .line 363
    invoke-static {v0}, Landroidx/camera/video/FallbackStrategy;->higherQualityOrLowerThan(Landroidx/camera/video/Quality;)Landroidx/camera/video/FallbackStrategy;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Landroidx/camera/video/QualitySelector;->from(Landroidx/camera/video/Quality;Landroidx/camera/video/FallbackStrategy;)Landroidx/camera/video/QualitySelector;

    move-result-object v0

    .line 366
    new-instance v1, Landroidx/camera/video/Recorder$Builder;

    invoke-direct {v1}, Landroidx/camera/video/Recorder$Builder;-><init>()V

    .line 367
    invoke-virtual {v1, v0}, Landroidx/camera/video/Recorder$Builder;->setQualitySelector(Landroidx/camera/video/QualitySelector;)Landroidx/camera/video/Recorder$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroidx/camera/video/Recorder$Builder;->build()Landroidx/camera/video/Recorder;

    move-result-object v0

    .line 370
    new-instance v1, Landroidx/camera/video/VideoCapture$Builder;

    invoke-direct {v1, v0}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/video/VideoOutput;)V

    .line 372
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->extendedFramesPerSecond:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->hasCamera(Landroidx/camera/core/CameraSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/camera/CameraXSession;->getFpsRanges(Landroidx/camera/core/CameraSelector;)[Landroid/util/Range;

    move-result-object p1

    .line 376
    new-instance v0, Landroid/util/Range;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 378
    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->isRangeSupported([Landroid/util/Range;Landroid/util/Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    new-instance p1, Landroidx/camera/camera2/interop/Camera2Interop$Extender;

    invoke-direct {p1, v1}, Landroidx/camera/camera2/interop/Camera2Interop$Extender;-><init>(Landroidx/camera/core/ExtendableBuilder;)V

    .line 380
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v0}, Landroidx/camera/camera2/interop/Camera2Interop$Extender;->setCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/interop/Camera2Interop$Extender;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 384
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 387
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/camera/video/VideoCapture$Builder;->build()Landroidx/camera/video/VideoCapture;

    move-result-object p1

    return-object p1
.end method

.method private checkConcurrentSupport(Z)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 201
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    return-void

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz p1, :cond_5

    .line 205
    invoke-virtual {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getAvailableConcurrentCameraInfos()Ljava/util/List;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraInfo;

    .line 210
    invoke-interface {v4}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result v6

    if-nez v6, :cond_3

    move v2, v5

    .line 211
    :cond_3
    invoke-interface {v4}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v3, v5

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 214
    iput-boolean v5, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    return-void

    .line 219
    :cond_5
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    return-void
.end method

.method public static getAvailableVideoSizes(Landroidx/camera/core/CameraSelector;Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/Map;
    .locals 2

    .line 669
    sget-object v0, Lcom/exteragram/messenger/camera/CameraXSession;->videoSizesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 672
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getAvailableCameraInfos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/CameraSelector;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 673
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda8;-><init>()V

    .line 674
    invoke-virtual {p1, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 687
    invoke-virtual {p1, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 688
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private getFpsRanges(Landroidx/camera/core/CameraSelector;)[Landroid/util/Range;
    .locals 3

    .line 412
    sget-object v0, Lcom/exteragram/messenger/camera/CameraXSession;->fpsRangesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Range;

    return-object p1

    .line 416
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v1, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v1

    .line 417
    invoke-static {v1}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->from(Landroidx/camera/core/CameraInfo;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

    move-result-object v1

    .line 418
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/interop/Camera2CameraInfo;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    .line 419
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 422
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getSuggestedResolution()I
    .locals 3

    .line 719
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/16 v1, 0x2d0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x870

    return v0

    :cond_1
    const/16 v0, 0x438

    return v0

    :cond_2
    return v1
.end method

.method public static getVideoQuality(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;)Landroidx/camera/video/Quality;
    .locals 2

    .line 693
    invoke-static {p1, p0}, Lcom/exteragram/messenger/camera/CameraXSession;->getAvailableVideoSizes(Landroidx/camera/core/CameraSelector;Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/Map;

    move-result-object p0

    .line 695
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 696
    sget-object p0, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    return-object p0

    .line 699
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/camera/CameraXSession;->getSuggestedResolution()I

    move-result p1

    .line 700
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda1;-><init>()V

    .line 701
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda2;-><init>(I)V

    .line 702
    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;

    move-result-object p1

    .line 703
    invoke-interface {p1}, Lj$/util/stream/IntStream;->max()Lj$/util/OptionalInt;

    move-result-object p1

    .line 704
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->min()Lj$/util/OptionalInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/OptionalInt;->orElse(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lj$/util/OptionalInt;->orElse(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 707
    sget-object p0, Landroidx/camera/video/Quality;->LOWEST:Landroidx/camera/video/Quality;

    return-object p0

    .line 711
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda4;-><init>(I)V

    .line 712
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda5;-><init>()V

    .line 713
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 714
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    sget-object p1, Landroidx/camera/video/Quality;->HIGHEST:Landroidx/camera/video/Quality;

    .line 715
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/Quality;

    return-object p0
.end method

.method private isRangeSupported([Landroid/util/Range;Landroid/util/Range;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 429
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 430
    invoke-virtual {v3, p2}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isSeamlessSwitchingAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 728
    sget-object v0, Lcom/exteragram/messenger/camera/CameraXSession;->isSeamlessSwitchingAvailableDefaultCache:Ljava/lang/Boolean;

    new-instance v1, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initCamera$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->prepareUseCases()V

    .line 186
    invoke-virtual {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->bindUseCases()V

    .line 187
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;->start()V

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isInitiated:Z

    return-void
.end method

.method private synthetic lambda$initCamera$1(Lcom/google/common/util/concurrent/ListenableFuture;ZLandroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 176
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 178
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/camera/CameraXSession;->checkConcurrentSupport(Z)V

    .line 180
    iget-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-static {p3, p1}, Landroidx/camera/extensions/ExtensionsManager;->getInstanceAsync(Landroid/content/Context;Landroidx/camera/core/CameraProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 181
    new-instance p2, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p4}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/camera/CameraXSession;Ljava/lang/Runnable;)V

    .line 192
    invoke-static {p3}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 181
    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 194
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private prepareDualUseCases()V
    .locals 3

    .line 309
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 310
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->buildPreview(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/Preview;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCase:Landroidx/camera/core/Preview;

    .line 311
    iget-object v2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->surfaceProviderPrimary:Landroidx/camera/core/Preview$SurfaceProvider;

    invoke-virtual {v1, v2}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 312
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->buildVideoCapture(Landroidx/camera/core/CameraSelector;)Landroidx/camera/video/VideoCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->videoCapture:Landroidx/camera/video/VideoCapture;

    .line 314
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    .line 315
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->buildPreview(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/Preview;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCaseBack:Landroidx/camera/core/Preview;

    .line 316
    iget-object v2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->surfaceProviderSecondary:Landroidx/camera/core/Preview$SurfaceProvider;

    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v1, v2}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 319
    :cond_0
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->buildVideoCapture(Landroidx/camera/core/CameraSelector;)Landroidx/camera/video/VideoCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->videoCaptureBack:Landroidx/camera/video/VideoCapture;

    return-void
.end method

.method private prepareSingleUseCases()V
    .locals 2

    .line 300
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isFrontface:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    :goto_0
    iput-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraSelector:Landroidx/camera/core/CameraSelector;

    .line 301
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->buildPreview(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/Preview;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCase:Landroidx/camera/core/Preview;

    .line 302
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->surfaceProviderPrimary:Landroidx/camera/core/Preview$SurfaceProvider;

    invoke-virtual {v0, v1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 304
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraSelector:Landroidx/camera/core/CameraSelector;

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->buildVideoCapture(Landroidx/camera/core/CameraSelector;)Landroidx/camera/video/VideoCapture;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->videoCapture:Landroidx/camera/video/VideoCapture;

    return-void
.end method

.method private updateActiveControl(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraFront:Landroidx/camera/core/Camera;

    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    .line 236
    iget-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlFront:Landroidx/camera/core/CameraControl;

    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    return-void

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraBack:Landroidx/camera/core/Camera;

    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    .line 239
    iget-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlBack:Landroidx/camera/core/CameraControl;

    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    return-void
.end method

.method private updateTorchState()V
    .locals 4

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlFront:Landroidx/camera/core/CameraControl;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, v2}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlBack:Landroidx/camera/core/CameraControl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraBack:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControlBack:Landroidx/camera/core/CameraControl;

    iget-boolean v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isTorchOn:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isFrontface:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    if-eqz v3, :cond_4

    .line 274
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->isFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    iget-boolean v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isTorchOn:Z

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->isFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    invoke-interface {v0, v2}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 285
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bindUseCases()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isBinding:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 439
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isBinding:Z

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    const/4 v0, 0x0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 445
    iget-boolean v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    if-eqz v1, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->bindDualUseCases()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->bindSingleUseCases()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :goto_0
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isBinding:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isBinding:Z

    .line 452
    throw v1

    :cond_2
    :goto_2
    return-void
.end method

.method public closeCamera()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->provider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->lifecycle:Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;

    invoke-virtual {v0}, Lcom/exteragram/messenger/camera/CameraXSession$CameraLifecycle;->stop()V

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isInitiated:Z

    return-void
.end method

.method public focusToPoint(FF)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->meteringPointFactory:Landroidx/camera/core/MeteringPointFactory;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/MeteringPointFactory;->createPoint(FF)Landroidx/camera/core/MeteringPoint;

    move-result-object p1

    .line 645
    new-instance p2, Landroidx/camera/core/FocusMeteringAction$Builder;

    const/4 v0, 0x7

    invoke-direct {p2, p1, v0}, Landroidx/camera/core/FocusMeteringAction$Builder;-><init>(Landroidx/camera/core/MeteringPoint;I)V

    .line 647
    invoke-virtual {p2}, Landroidx/camera/core/FocusMeteringAction$Builder;->build()Landroidx/camera/core/FocusMeteringAction;

    move-result-object p1

    .line 649
    iget-object p2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    invoke-interface {p2, p1}, Landroidx/camera/core/CameraControl;->startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public getDisplayOrientation()I
    .locals 3

    .line 653
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 654
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0

    :cond_3
    return v1
.end method

.method public getLinearZoom()F
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 589
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    if-eqz v0, :cond_1

    .line 590
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getLinearZoom()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getMaxZoomRatio()F
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 633
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    if-eqz v0, :cond_0

    .line 635
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMaxZoomRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMinZoomRatio()F
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    if-eqz v0, :cond_0

    .line 625
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMinZoomRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getZoomRatio()F
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 612
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    if-eqz v0, :cond_1

    .line 613
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public initCamera(Landroid/content/Context;ZZLjava/lang/Runnable;)V
    .locals 6

    .line 172
    iput-boolean p2, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isFrontface:Z

    .line 173
    invoke-static {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 174
    new-instance v0, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v4, p1

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/camera/CameraXSession$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/camera/CameraXSession;Lcom/google/common/util/concurrent/ListenableFuture;ZLandroid/content/Context;Ljava/lang/Runnable;)V

    .line 196
    invoke-static {v4}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 174
    invoke-interface {v2, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public isDualMode()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    return v0
.end method

.method public isFlashAvailable()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isInitiated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isBinding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareUseCases()V
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->prepareDualUseCases()V

    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->prepareSingleUseCases()V

    return-void
.end method

.method public setSecondSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->surfaceProviderSecondary:Landroidx/camera/core/Preview$SurfaceProvider;

    .line 150
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isInitiated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->previewUseCaseBack:Landroidx/camera/core/Preview;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    :cond_0
    return-void
.end method

.method public setTorchEnabled(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isTorchOn:Z

    .line 260
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateTorchState()V

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->camera:Landroidx/camera/core/Camera;

    if-nez v0, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/ZoomState;

    if-nez v0, :cond_1

    goto :goto_0

    .line 604
    :cond_1
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result v1

    mul-float/2addr v1, p1

    .line 605
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMaxZoomRatio()F

    move-result p1

    .line 606
    invoke-interface {v0}, Landroidx/camera/core/ZoomState;->getMinZoomRatio()F

    move-result v0

    .line 604
    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    .line 607
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraControl:Landroidx/camera/core/CameraControl;

    if-nez v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-interface {v0, p1}, Landroidx/camera/core/CameraControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public switchCamera()V
    .locals 2

    .line 223
    iget-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isFrontface:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isFrontface:Z

    .line 224
    iget-boolean v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->isDualMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraFront:Landroidx/camera/core/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/exteragram/messenger/camera/CameraXSession;->cameraBack:Landroidx/camera/core/Camera;

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateActiveControl(Z)V

    .line 226
    invoke-direct {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->updateTorchState()V

    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->prepareUseCases()V

    .line 229
    invoke-virtual {p0}, Lcom/exteragram/messenger/camera/CameraXSession;->bindUseCases()V

    return-void
.end method
