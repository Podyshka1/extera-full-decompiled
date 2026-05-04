.class public final Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;


# instance fields
.field private final camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V
    .locals 1

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2MetadataProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strictMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 301
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 302
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 303
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 304
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    return-void
.end method

.method public static final synthetic access$getGraphConfig$p(Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;)Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    .line 296
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method


# virtual methods
.method public create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;
    .locals 11

    const-string v0, "cameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaces"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureSessionState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v0

    .line 313
    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 321
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionParameters()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getCamera2ExtensionMode()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    .line 320
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 327
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    .line 331
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v2

    .line 333
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 25
    const-string v10, "CXCP"

    if-nez v5, :cond_2

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " does not support extension mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Supported extensions are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getPostviewStream()Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 339
    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->awaitExtensionMetadata(I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;

    move-result-object v1

    .line 340
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraExtensionMetadata;->isPostviewSupported()Z

    move-result v1

    if-nez v1, :cond_4

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not support Postview streams"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 28
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :cond_4
    :goto_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getPostviewStream()Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Postview streams can only have one OutputStream.config object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_6
    :goto_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-static {v1, v2, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    move-result-object p2

    .line 350
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create OutputConfigurations for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->access$getGraphConfig$p(Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_7
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 353
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    return-object p1

    .line 356
    :cond_8
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getDeferred()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 358
    new-instance v8, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    invoke-direct {v8, p3}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)V

    move v1, v0

    .line 361
    new-instance v0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;

    .line 363
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getAll()Ljava/util/List;

    move-result-object v2

    .line 367
    new-instance v3, Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/camera/camera2/pipe/core/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 369
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionTemplate-fGx8uWA()I

    move-result v5

    .line 370
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionParameters()Ljava/util/Map;

    move-result-object v6

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 373
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getPostviewOutput()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object v9

    const/4 v1, 0x2

    move-object v4, p3

    .line 361
    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;)V

    .line 376
    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 377
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create ExtensionCaptureSession from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_9
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 382
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    return-object p1

    .line 385
    :cond_a
    new-instance p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getDeferred()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getOutputSurfaceMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    .line 356
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Deferred output is not supported for Extensions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Reprocessing is not supported for Extensions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The CameraPipeKeys.camera2ExtensionMode must be set in the sessionParameters of the CameraGraph.Config when creating an Extension CameraGraph."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported session mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Extension CameraGraph"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 315
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
