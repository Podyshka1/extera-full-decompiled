.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/config/UseCaseCameraComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UseCaseCameraComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field private final cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

.field captureConfigAdapterProvider:Ldagger/internal/Provider;

.field capturePipelineImplProvider:Ldagger/internal/Provider;

.field capturePipelineTorchCorrectionProvider:Ldagger/internal/Provider;

.field deferredUseCaseCameraRequestControlProvider:Ldagger/internal/Provider;

.field provideCapturePipelineProvider:Ldagger/internal/Provider;

.field provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

.field provideSessionProcessorProvider:Ldagger/internal/Provider;

.field provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

.field private final useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

.field private final useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

.field useCaseCameraImplProvider:Ldagger/internal/Provider;

.field useCaseCameraRequestControlImplProvider:Ldagger/internal/Provider;

.field useCaseCameraStateProvider:Ldagger/internal/Provider;

.field useCaseSurfaceManagerProvider:Ldagger/internal/Provider;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    .line 207
    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 208
    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 209
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 210
    invoke-direct {p0, p3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->initialize(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 0

    .line 172
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraConfig:Landroidx/camera/camera2/config/UseCaseCameraConfig;

    return-object p0
.end method

.method private initialize(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V
    .locals 4

    .line 216
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    .line 217
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x2

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionProcessorProvider:Ldagger/internal/Provider;

    .line 218
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x7

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->captureConfigAdapterProvider:Ldagger/internal/Provider;

    .line 219
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0x8

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraStateProvider:Ldagger/internal/Provider;

    .line 220
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x6

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineImplProvider:Ldagger/internal/Provider;

    .line 221
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0x9

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineTorchCorrectionProvider:Ldagger/internal/Provider;

    .line 222
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x5

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideCapturePipelineProvider:Ldagger/internal/Provider;

    .line 223
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0xb

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

    .line 224
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/16 v3, 0xa

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 225
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x4

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraRequestControlImplProvider:Ldagger/internal/Provider;

    .line 226
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x3

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->deferredUseCaseCameraRequestControlProvider:Ldagger/internal/Provider;

    .line 227
    new-instance p1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraImplProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getUseCaseCamera()Landroidx/camera/camera2/impl/UseCaseCamera;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraImplProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCamera;

    return-object v0
.end method
