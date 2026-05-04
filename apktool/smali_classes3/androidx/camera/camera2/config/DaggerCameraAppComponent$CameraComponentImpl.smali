.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/config/CameraComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field camera2CameraControlCompatImplProvider:Ldagger/internal/Provider;

.field private final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field cameraCallbackMapProvider:Ldagger/internal/Provider;

.field private final cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

.field private final cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

.field cameraControlAdapterProvider:Ldagger/internal/Provider;

.field cameraControlStateAdapterProvider:Ldagger/internal/Provider;

.field cameraGraphConfigProvider:Ldagger/internal/Provider;

.field cameraInfoAdapterProvider:Ldagger/internal/Provider;

.field cameraInternalAdapterProvider:Ldagger/internal/Provider;

.field cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

.field cameraQuirksProvider:Ldagger/internal/Provider;

.field cameraStateAdapterProvider:Ldagger/internal/Provider;

.field comboRequestListenerProvider:Ldagger/internal/Provider;

.field evCompControlProvider:Ldagger/internal/Provider;

.field evCompImplProvider:Ldagger/internal/Provider;

.field flashControlProvider:Ldagger/internal/Provider;

.field focusMeteringControlProvider:Ldagger/internal/Provider;

.field intrinsicZoomCalculatorImplProvider:Ldagger/internal/Provider;

.field lowLightBoostControlProvider:Ldagger/internal/Provider;

.field outputSizesCorrectorProvider:Ldagger/internal/Provider;

.field provideCamera2CameraControlProvider:Ldagger/internal/Provider;

.field provideCameraIdStringProvider:Ldagger/internal/Provider;

.field provideCameraMetadataProvider:Ldagger/internal/Provider;

.field provideEncoderProfilesProvider:Ldagger/internal/Provider;

.field provideStreamConfigurationMapProvider:Ldagger/internal/Provider;

.field provideUseCaseThreadsProvider:Ldagger/internal/Provider;

.field provideZslControlProvider:Ldagger/internal/Provider;

.field state3AControlProvider:Ldagger/internal/Provider;

.field stillCaptureRequestControlProvider:Ldagger/internal/Provider;

.field streamConfigurationMapCompatProvider:Ldagger/internal/Provider;

.field private final streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

.field torchControlProvider:Ldagger/internal/Provider;

.field useCaseManagerProvider:Ldagger/internal/Provider;

.field videoUsageControlProvider:Ldagger/internal/Provider;

.field zoomControlProvider:Ldagger/internal/Provider;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 379
    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 380
    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    .line 381
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    .line 382
    invoke-direct {p0, p2, p3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->initialize(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    .line 383
    invoke-direct {p0, p2, p3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->initialize2(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;)Landroidx/camera/camera2/config/CameraConfig;
    .locals 0

    .line 304
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;)Landroidx/camera/core/internal/StreamSpecsCalculator;
    .locals 0

    .line 304
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamSpecsCalculator:Landroidx/camera/core/internal/StreamSpecsCalculator;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 2

    .line 436
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x4

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 437
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x3

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 438
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x2

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Ldagger/internal/Provider;

    .line 439
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x9

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideStreamConfigurationMapProvider:Ldagger/internal/Provider;

    .line 440
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xa

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->outputSizesCorrectorProvider:Ldagger/internal/Provider;

    .line 441
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x8

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamConfigurationMapCompatProvider:Ldagger/internal/Provider;

    .line 442
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x7

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 443
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xb

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 444
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x6

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    .line 445
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xc

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    .line 446
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x5

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Ldagger/internal/Provider;

    .line 447
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xe

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompImplProvider:Ldagger/internal/Provider;

    .line 448
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xd

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Ldagger/internal/Provider;

    .line 449
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x10

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 450
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0xf

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    .line 451
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x11

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Ldagger/internal/Provider;

    .line 452
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x12

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->stillCaptureRequestControlProvider:Ldagger/internal/Provider;

    .line 453
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x13

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Ldagger/internal/Provider;

    .line 454
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x14

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Ldagger/internal/Provider;

    .line 455
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x16

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->camera2CameraControlCompatImplProvider:Ldagger/internal/Provider;

    .line 456
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x15

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCamera2CameraControlProvider:Ldagger/internal/Provider;

    .line 457
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x17

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Ldagger/internal/Provider;

    .line 458
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Ldagger/internal/Provider;

    .line 459
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x19

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlStateAdapterProvider:Ldagger/internal/Provider;

    .line 460
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1a

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraCallbackMapProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize2(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 3

    .line 466
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1c

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraIdStringProvider:Ldagger/internal/Provider;

    .line 467
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1b

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideEncoderProfilesProvider:Ldagger/internal/Provider;

    .line 468
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1d

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->intrinsicZoomCalculatorImplProvider:Ldagger/internal/Provider;

    .line 469
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x18

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInfoAdapterProvider:Ldagger/internal/Provider;

    .line 470
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1e

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraGraphConfigProvider:Ldagger/internal/Provider;

    .line 471
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->useCaseManagerProvider:Ldagger/internal/Provider;

    .line 472
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/16 v1, 0x1f

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlAdapterProvider:Ldagger/internal/Provider;

    .line 473
    iget-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Ldagger/internal/Provider;

    new-instance p2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;I)V

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    invoke-static {p1, p2}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-void
.end method


# virtual methods
.method autoFlashAEModeDisabler()Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;
    .locals 1

    .line 388
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {v0}, Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory;->provideAEModeDisabler(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;

    move-result-object v0

    return-object v0
.end method

.method public getCameraInternal()Landroidx/camera/core/impl/CameraInternal;
    .locals 1

    .line 478
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    return-object v0
.end method

.method inactiveSurfaceCloser()Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {v0}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser_Bindings_Companion_ProvideInactiveSurfaceCloserFactory;->provideInactiveSurfaceCloser(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    move-result-object v0

    return-object v0
.end method

.method meteringRegionCorrection()Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;
    .locals 1

    .line 396
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {v0}, Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection_Bindings_Companion_ProvideMeteringRegionCorrectionFactory;->provideMeteringRegionCorrection(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;

    move-result-object v0

    return-object v0
.end method

.method setOfUseCaseCameraControl()Ljava/util/Set;
    .locals 1

    .line 418
    invoke-virtual {p0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->setOfUseCaseCameraControlBuilder()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method setOfUseCaseCameraControlBuilder()Ljava/util/Set;
    .locals 2

    const/16 v0, 0x9

    .line 404
    invoke-static {v0}, Ldagger/internal/SetBuilder;->newSetBuilder(I)Ldagger/internal/SetBuilder;

    move-result-object v0

    .line 405
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 406
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 407
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 408
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 409
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->stillCaptureRequestControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 410
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 411
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 412
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 413
    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)Ldagger/internal/SetBuilder;

    .line 414
    invoke-virtual {v0}, Ldagger/internal/SetBuilder;->build()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;
    .locals 1

    .line 422
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {v0}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory;->provideTemplateParamsOverride(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    move-result-object v0

    return-object v0
.end method

.method useFlashModeTorchFor3aUpdate()Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;
    .locals 1

    .line 392
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-static {v0}, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate_Bindings_Companion_ProvideUseFlashModeTorchFor3aUpdateFactory;->provideUseFlashModeTorchFor3aUpdate(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;

    move-result-object v0

    return-object v0
.end method

.method useTorchAsFlash()Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;
    .locals 3

    .line 426
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->intrinsicZoomCalculatorImplProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

    invoke-static {v0, v1, v2}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory;->provideUseTorchAsFlash(Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/pipe/CameraDevices;Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;)Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

    move-result-object v0

    return-object v0
.end method

.method zoomCompat()Landroidx/camera/camera2/compat/ZoomCompat;
    .locals 1

    .line 400
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/CameraProperties;

    invoke-static {v0}, Landroidx/camera/camera2/compat/ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory;->provideZoomCompat(Landroidx/camera/camera2/impl/CameraProperties;)Landroidx/camera/camera2/compat/ZoomCompat;

    move-result-object v0

    return-object v0
.end method
