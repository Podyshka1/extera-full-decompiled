.class final Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchingProvider"
.end annotation


# instance fields
.field private final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field private final cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

.field private final id:I

.field private final useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;I)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 253
    iput-object p2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 254
    iput-object p3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    .line 255
    iput p4, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15

    .line 261
    iget v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    .line 298
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->id:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 296
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    invoke-static {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->access$100(Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideSessionConfigAdapterFactory;->provideSessionConfigAdapter(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_1
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    invoke-static {v2}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->access$200(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;)Landroidx/camera/camera2/config/CameraAppConfig;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/camera2/config/CameraAppConfig_ProvideCameraPipeFactory;->provideCameraPipe(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    invoke-virtual {v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->inactiveSurfaceCloser()Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v4, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;-><init>(Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;Landroidx/camera/camera2/adapter/SessionConfigAdapter;)V

    return-object v0

    .line 290
    :pswitch_2
    new-instance v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v2, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineImplProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v3, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v4, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v4, v4, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/impl/TorchControl;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;)V

    return-object v0

    .line 287
    :pswitch_3
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/config/UseCaseGraphContext;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    invoke-virtual {v2}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/impl/UseCaseCameraState;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V

    return-object v0

    .line 284
    :pswitch_4
    new-instance v3, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/config/UseCaseGraphContext;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/camera2/adapter/ZslControl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;-><init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V

    return-object v3

    .line 281
    :pswitch_5
    new-instance v4, Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->captureConfigAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/camera2/impl/FlashControl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/camera/camera2/impl/TorchControl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/camera/camera2/impl/VideoUsageControl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/camera/camera2/impl/ComboRequestListener;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->useTorchAsFlash()Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;

    move-result-object v11

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/camera/camera2/impl/CameraProperties;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v13, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraStateProvider:Ldagger/internal/Provider;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-direct/range {v4 .. v14}, Landroidx/camera/camera2/impl/CapturePipelineImpl;-><init>(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;)V

    return-object v4

    .line 278
    :pswitch_6
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v1, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineImplProvider:Ldagger/internal/Provider;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->capturePipelineTorchCorrectionProvider:Ldagger/internal/Provider;

    invoke-static {v1, v0}, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;->provideCapturePipeline(Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_7
    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v2, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideCapturePipelineProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraStateProvider:Ldagger/internal/Provider;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/config/UseCaseGraphContext;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v5, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseSurfaceManagerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    invoke-static {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->access$200(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;)Landroidx/camera/camera2/config/CameraAppConfig;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/config/CameraAppConfig_ProvideCameraXConfigFactory;->provideCameraXConfig(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/core/CameraXConfig;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)V

    return-object v1

    .line 272
    :pswitch_8
    new-instance v0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraRequestControlImplProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v2, v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;)V

    return-object v0

    .line 269
    :pswitch_9
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    invoke-static {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->access$100(Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->provideSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;

    const/4 v0, 0x0

    return-object v0

    .line 266
    :pswitch_a
    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    invoke-static {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->access$100(Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    invoke-static {v0, v1}, Landroidx/camera/camera2/config/UseCaseCameraConfig_ProvideUseCaseGraphContextFactory;->provideUseCaseGraphContext(Landroidx/camera/camera2/config/UseCaseCameraConfig;Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_b
    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideUseCaseGraphContextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/config/UseCaseGraphContext;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->cameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/impl/UseCaseThreads;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionProcessorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v0, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->deferredUseCaseCameraRequestControlProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl$SwitchingProvider;->useCaseCameraComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    iget-object v6, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseSurfaceManagerProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideSessionConfigAdapterProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->provideCapturePipelineProvider:Ldagger/internal/Provider;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
