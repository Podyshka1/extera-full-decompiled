.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/CameraGraphComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraGraphComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

.field private final cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

.field cameraGraphImplProvider:Ldagger/internal/Provider;

.field cameraGraphParametersImplProvider:Ldagger/internal/Provider;

.field cameraGraphRequestListenersImplProvider:Ldagger/internal/Provider;

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field controller3AProvider:Ldagger/internal/Provider;

.field frameCaptureQueueProvider:Ldagger/internal/Provider;

.field graphProcessorImplProvider:Ldagger/internal/Provider;

.field graphSessionLockProvider:Ldagger/internal/Provider;

.field graphState3AProvider:Ldagger/internal/Provider;

.field listener3AProvider:Ldagger/internal/Provider;

.field provideCameraBackendProvider:Ldagger/internal/Provider;

.field provideCameraControllerProvider:Ldagger/internal/Provider;

.field provideCameraGraphCoroutineScopeProvider:Ldagger/internal/Provider;

.field provideCameraMetadataProvider:Ldagger/internal/Provider;

.field provideFrameDistributorProvider:Ldagger/internal/Provider;

.field provideRequestListenersProvider:Ldagger/internal/Provider;

.field provideSurfaceGraphProvider:Ldagger/internal/Provider;

.field provideSystemClockOffsetsProvider:Ldagger/internal/Provider;

.field streamGraphImplProvider:Ldagger/internal/Provider;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 237
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 238
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    .line 239
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->initialize(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;)Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;
    .locals 0

    .line 192
    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)V
    .locals 4

    .line 245
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraBackendProvider:Ldagger/internal/Provider;

    .line 246
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 247
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->listener3AProvider:Ldagger/internal/Provider;

    .line 248
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Ldagger/internal/Provider;

    .line 249
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Ldagger/internal/Provider;

    .line 250
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Ldagger/internal/Provider;

    .line 251
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0x9

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSurfaceGraphProvider:Ldagger/internal/Provider;

    .line 252
    iget-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Ldagger/internal/Provider;

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    .line 253
    iget-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Ldagger/internal/Provider;

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    .line 254
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xa

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->frameCaptureQueueProvider:Ldagger/internal/Provider;

    .line 255
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xb

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSystemClockOffsetsProvider:Ldagger/internal/Provider;

    .line 256
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x6

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideFrameDistributorProvider:Ldagger/internal/Provider;

    .line 257
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x5

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideRequestListenersProvider:Ldagger/internal/Provider;

    .line 258
    iget-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Ldagger/internal/Provider;

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    .line 259
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xd

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphSessionLockProvider:Ldagger/internal/Provider;

    .line 260
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xe

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraGraphCoroutineScopeProvider:Ldagger/internal/Provider;

    .line 261
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xc

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphParametersImplProvider:Ldagger/internal/Provider;

    .line 262
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0xf

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphRequestListenersImplProvider:Ldagger/internal/Provider;

    .line 263
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0x11

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphState3AProvider:Ldagger/internal/Provider;

    .line 264
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/16 v2, 0x10

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->controller3AProvider:Ldagger/internal/Provider;

    .line 265
    new-instance p1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphImplProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public cameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 1

    .line 270
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object v0
.end method
