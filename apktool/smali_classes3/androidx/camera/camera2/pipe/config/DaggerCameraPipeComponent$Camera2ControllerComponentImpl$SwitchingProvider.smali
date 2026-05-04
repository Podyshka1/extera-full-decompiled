.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchingProvider"
.end annotation


# instance fields
.field private final camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field private final id:I


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;I)V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 508
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    .line 509
    iput p3, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 515
    iget v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->id:I

    packed-switch v1, :pswitch_data_0

    .line 543
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->id:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 541
    :pswitch_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v5

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideStreamGraphFactory;->provideStreamGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object v6

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/camera/camera2/pipe/StrictMode;

    invoke-direct/range {v3 .. v8}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V

    return-object v3

    .line 538
    :pswitch_1
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v3, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v3

    iget-object v4, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideStreamGraphFactory;->provideStreamGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)V

    return-object v1

    .line 535
    :pswitch_2
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v3, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideStreamGraphFactory;->provideStreamGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object v3

    iget-object v4, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;)V

    return-object v1

    .line 532
    :pswitch_3
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideStreamGraphFactory;->provideStreamGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object v2

    iget-object v3, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/core/Threads;

    invoke-direct {v1, v2, v3}, Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-object v1

    .line 529
    :pswitch_4
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v3, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideStreamGraphFactory;->provideStreamGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object v3

    iget-object v4, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v4}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;)V

    return-object v1

    .line 526
    :pswitch_5
    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidMSessionFactoryProvider:Ldagger/internal/Provider;

    iget-object v3, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidMHighSpeedSessionFactoryProvider:Ldagger/internal/Provider;

    iget-object v4, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidNSessionFactoryProvider:Ldagger/internal/Provider;

    iget-object v5, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidPSessionFactoryProvider:Ldagger/internal/Provider;

    iget-object v6, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->androidExtensionSessionFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;->provideSessionFactory(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    move-result-object v1

    return-object v1

    .line 523
    :pswitch_6
    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v3, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v3

    iget-object v4, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v4, v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-static {v2, v1, v3, v4}, Landroidx/camera/camera2/pipe/config/Camera2ControllerModule_Companion_ProvideCameraStatusMonitorFactory;->provideCameraStatusMonitor(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlinx/coroutines/Job;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    move-result-object v1

    return-object v1

    .line 520
    :pswitch_7
    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v2, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/config/Camera2ControllerModule_Companion_ProvideCoroutineScopeFactory;->provideCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    return-object v1

    .line 517
    :pswitch_8
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->provideCoroutineScopeProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/camera/camera2/pipe/StrictMode;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;->provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v6

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;->provideGraphListener(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object v7

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideSurfaceGraphFactory;->provideSurfaceGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/SurfaceTracker;

    move-result-object v8

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->provideCameraStatusMonitorProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->provideSessionFactoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->standardCamera2CaptureSequenceProcessorFactory()Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;

    move-result-object v11

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->pruningCamera2DeviceManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/camera/camera2/pipe/core/TimeSource;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphIdFactory;->provideCameraGraphId(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v16

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideShutdownListenerFactory;->provideShutdownListener(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    move-result-object v17

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->camera2ControllerComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;->access$300(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl;)Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideStreamGraphFactory;->provideStreamGraph(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    move-result-object v18

    iget-object v1, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Camera2ControllerComponentImpl$SwitchingProvider;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->concurrentSessionSequencersProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;

    invoke-direct/range {v2 .. v19}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
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
