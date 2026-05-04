.class public final Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;


# instance fields
.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)V
    .locals 1

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 230
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 231
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    return-void
.end method

.method public static final synthetic access$getGraphConfig$p(Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;)Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    .line 225
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

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

    .line 240
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v0

    .line 241
    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_1

    .line 242
    :cond_0
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_b

    .line 247
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v0

    goto :goto_0

    .line 250
    :goto_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-static {v0, v2, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    move-result-object p2

    .line 251
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v10, "CXCP"

    if-eqz v0, :cond_3

    .line 252
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create OutputConfigurations for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->access$getGraphConfig$p(Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 254
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    return-object p1

    .line 258
    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Landroidx/camera/camera2/pipe/InputStream$Config;

    .line 259
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/InputStream$Config;->getStream()Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 260
    new-instance v6, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 261
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 262
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 263
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getFormat-8FPWQzE()I

    move-result v4

    .line 260
    invoke-direct {v6, v7, v8, v4}, Landroidx/camera/camera2/pipe/compat/InputConfigData;-><init>(III)V

    .line 1635
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-eqz v2, :cond_8

    .line 1740
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 1741
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v3

    :goto_3
    if-ge v4, v0, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 268
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getFormat()I

    move-result v6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getFormat()I

    move-result v7

    if-ne v6, v7, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All InputStream.Config objects must have the same format for multi resolution"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_8
    :goto_4
    new-instance v0, Landroidx/camera/camera2/pipe/compat/SessionConfigData;

    .line 277
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getAll()Ljava/util/List;

    move-result-object v3

    .line 278
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Executor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 280
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionTemplate-fGx8uWA()I

    move-result v6

    .line 281
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionParameters()Ljava/util/Map;

    move-result-object v7

    .line 282
    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionColorSpace-dxVZaPA()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, p3

    .line 274
    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 285
    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 286
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create capture session from "

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

    .line 289
    :cond_9
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 290
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    return-object p1

    .line 292
    :cond_a
    new-instance p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getDeferred()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getOutputSurfaceMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    .line 244
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported session mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 244
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
