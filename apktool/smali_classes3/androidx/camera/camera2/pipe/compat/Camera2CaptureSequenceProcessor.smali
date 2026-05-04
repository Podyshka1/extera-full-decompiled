.class public final Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;


# instance fields
.field private final awaitRepeatingRequestOnDisconnect:Z

.field private final debugId:I

.field private disconnected:Z

.field private final imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

.field private lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

.field private final lock:Ljava/lang/Object;

.field private final outputToSurfaceMap:Ljava/util/Map;

.field private final session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

.field private final streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

.field private final streamToSurfaceMap:Ljava/util/Map;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final template:I

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Z)V
    .locals 8

    const-string v1, "CXCP"

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamToSurfaceMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToSurfaceMap"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strictMode"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 102
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 103
    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->template:I

    .line 104
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamToSurfaceMap:Ljava/util/Map;

    .line 105
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->outputToSurfaceMap:Ljava/util/Map;

    .line 106
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    .line 107
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    move/from16 p3, p8

    .line 108
    iput-boolean p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    .line 110
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->getCaptureSequenceProcessorDebugIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p3

    invoke-virtual {p3}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p3

    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->debugId:I

    .line 111
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    .line 408
    invoke-interface {p6}, Landroidx/camera/camera2/pipe/StreamGraph;->getInputs()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_2

    .line 409
    invoke-interface {p6}, Landroidx/camera/camera2/pipe/StreamGraph;->getInputs()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/InputStream;

    .line 410
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 416
    :try_start_0
    sget-object v2, Landroidx/camera/camera2/pipe/media/AndroidImageWriter;->Companion:Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;

    .line 418
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/InputStream;->getId-m1bwn9M()I

    move-result v4

    .line 419
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/InputStream;->getMaxImages()I

    move-result v5

    .line 420
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/InputStream;->getFormat-8FPWQzE()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamFormat;->box-impl(I)Landroidx/camera/camera2/pipe/StreamFormat;

    move-result-object v6

    .line 421
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v7

    .line 416
    invoke-virtual/range {v2 .. v7}, Landroidx/camera/camera2/pipe/media/AndroidImageWriter$Companion;->create-U86x6Zg(Landroid/view/Surface;IILandroidx/camera/camera2/pipe/StreamFormat;Landroid/os/Handler;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 424
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 86
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 425
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create ImageWriter for session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "! Reprocessing will not be supported!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 431
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Created ImageWriter "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for session "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 411
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "inputSurface is required to create instance of imageWriter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_2
    :goto_1
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Z)V

    return-void
.end method

.method public static final synthetic access$awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V

    return-void
.end method

.method public static final synthetic access$getAwaitRepeatingRequestOnDisconnect$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    return p0
.end method

.method public static final synthetic access$getDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    return p0
.end method

.method public static final synthetic access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    return-object p0
.end method

.method public static final synthetic access$getLastSingleRepeatingRequestSequence$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Ljava/lang/Object;
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    return-object p0
.end method

.method public static final synthetic access$getStreamGraph$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/StreamGraph;
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    return-object p0
.end method

.method public static final synthetic access$setDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    return-void
.end method

.method private final awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V
    .locals 6

    .line 387
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    const-string v2, "CXCP"

    if-eqz v1, :cond_0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for the last repeating request sequence: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor$awaitRepeatingRequestStarted$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;Lkotlin/coroutines/Continuation;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5, v3}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private final buildCaptureRequestBuilder-0UCm73U(Landroidx/camera/camera2/pipe/Request;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3

    .line 587
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/InputRequest;->getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to unwrap FrameInfo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/InputRequest;->getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as TotalCaptureResult"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 596
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 600
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    const/16 v1, 0x21

    const-string v2, "CXCP"

    if-eqz v0, :cond_2

    .line 601
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 602
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create a ReprocessingCaptureRequest.Builder from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/InputRequest;->getFrameInfo()Landroidx/camera/camera2/pipe/FrameInfo;

    move-result-object p1

    .line 602
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 606
    :cond_2
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create a CaptureRequest.Builder from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_4
    return-object v0
.end method

.method private final buildSurfaceMaps(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 9

    .line 524
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 528
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/Request;

    .line 532
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v5

    .line 533
    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v6

    invoke-interface {p4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v1

    goto :goto_1

    .line 538
    :cond_2
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamToSurfaceMap:Ljava/util/Map;

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    if-eqz v6, :cond_0

    .line 542
    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {p2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {p4, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v4, v5}, Landroidx/camera/camera2/pipe/StreamGraph;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v4

    const-string v5, "Required value was null."

    if-eqz v4, :cond_4

    .line 545
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/OutputStream;

    .line 546
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->outputToSurfaceMap:Ljava/util/Map;

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v8

    invoke-static {v8}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    check-cast v7, Landroid/view/Surface;

    .line 547
    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v6

    invoke-static {v6}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v6

    invoke-interface {p3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 546
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 544
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-nez v4, :cond_7

    .line 564
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Failed to bind any surfaces for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v3

    :cond_7
    if-eqz v4, :cond_8

    goto/16 :goto_0

    .line 571
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return v1

    .line 524
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "build(...) should never be called with an empty request list!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final validateRequestList(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)Z
    .locals 13

    .line 442
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 447
    instance-of p2, p2, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    .line 452
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v1, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request;

    .line 459
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1761
    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v3, v5

    goto/16 :goto_6

    .line 1762
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    .line 460
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1761
    instance-of v6, v4, Ljava/util/Collection;

    if-eqz v6, :cond_4

    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    goto :goto_5

    .line 1762
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/OutputStream;

    .line 461
    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v7

    sget-object v8, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getPREVIEW-vrKr8v8()J

    move-result-wide v8

    if-nez v7, :cond_6

    move v7, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v7

    :goto_1
    if-nez v7, :cond_9

    .line 462
    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v7

    sget-object v8, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getDEFAULT-4VYZOf8()J

    move-result-wide v8

    if-nez v7, :cond_7

    move v7, v5

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v7

    :goto_2
    if-nez v7, :cond_9

    .line 463
    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v0

    :goto_4
    if-eqz v6, :cond_5

    move v4, v0

    :goto_5
    if-eqz v4, :cond_2

    move v3, v0

    .line 1763
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v6, 0x2e

    .line 468
    const-string v7, "CXCP"

    if-eqz p2, :cond_a

    .line 469
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 470
    sget-object v8, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The previous high speed request and the current high speed request must both have a preview stream use case or hint. Previous request contains preview stream use case or hint: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 471
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 474
    const-string p2, ". Current request contains preview stream use case or hint: "

    .line 471
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-static {v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_a
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1761
    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_c

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move p2, v5

    goto/16 :goto_c

    .line 1762
    :cond_c
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    .line 483
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1761
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_f

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    move v2, v5

    goto :goto_b

    .line 1762
    :cond_f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/OutputStream;

    .line 484
    invoke-interface {v3}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v8

    sget-object v9, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getVIDEO_RECORD-vrKr8v8()J

    move-result-wide v9

    if-nez v8, :cond_11

    move v8, v5

    goto :goto_7

    :cond_11
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v8

    :goto_7
    if-nez v8, :cond_14

    .line 485
    invoke-interface {v3}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v3

    sget-object v8, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getVIDEO_RECORD-4VYZOf8()J

    move-result-wide v8

    if-nez v3, :cond_12

    move v3, v5

    goto :goto_8

    :cond_12
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_13

    goto :goto_9

    :cond_13
    move v3, v5

    goto :goto_a

    :cond_14
    :goto_9
    move v3, v0

    :goto_a
    if-eqz v3, :cond_10

    move v2, v0

    :goto_b
    if-eqz v2, :cond_d

    move p2, v0

    .line 1763
    :goto_c
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v1, :cond_15

    .line 491
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 492
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The previous high speed request and the current high speed request do not have the same video stream use case. Previous request contains video stream use case: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 493
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, ". Current request contains video stream use case: "

    .line 493
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-static {v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_15
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1740
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_17

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    move p2, v0

    goto :goto_d

    .line 1741
    :cond_17
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStream;

    .line 504
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/OutputStream;->isValidForHighSpeedOperatingMode()Z

    move-result v1

    if-nez v1, :cond_18

    move p2, v5

    :goto_d
    if-nez p2, :cond_1a

    .line 507
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 508
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getStreamGraph$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object p2

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object p2

    .line 508
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return v5

    :cond_1a
    move-object v1, v2

    move-object p2, v4

    goto/16 :goto_0

    :cond_1b
    return v0

    .line 442
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "build(...) should never be called with an empty request list!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abortCaptures()V
    .locals 4

    .line 346
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#abortCaptures"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 348
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->abortCaptures()Z

    .line 349
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/CaptureSequence;
    .locals 0

    .line 100
    invoke-virtual/range {p0 .. p7}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    move-result-object p1

    return-object p1
.end method

.method public build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    const-string v2, "requests"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultParameters"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "graphParameters"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requiredParameters"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "sequenceListener"

    move-object/from16 v15, p6

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listeners"

    move-object/from16 v3, p7

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 131
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 132
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 134
    iget-object v11, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-direct {v1, v0, v11}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->validateRequestList(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)Z

    move-result v11

    const/16 v16, 0x0

    if-nez v11, :cond_0

    return-object v16

    .line 139
    :cond_0
    invoke-direct {v1, v0, v8, v9, v10}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->buildSurfaceMaps(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_1

    return-object v16

    .line 144
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/Request;

    .line 145
    sget-object v12, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "CXCP"

    .line 145
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Building CaptureRequest for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 50
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v12

    goto :goto_1

    :cond_3
    iget v12, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->template:I

    .line 148
    :goto_1
    invoke-direct {v1, v11, v12}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->buildCaptureRequestBuilder-0UCm73U(Landroidx/camera/camera2/pipe/Request;I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v13

    if-nez v13, :cond_4

    return-object v16

    .line 151
    :cond_4
    sget-object v14, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    move-object/from16 p2, v0

    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getCamera2CaptureRequestTag()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 152
    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->getCamera2CaptureRequestTag()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    :cond_5
    invoke-virtual {v13, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0x1

    if-ge v14, v0, :cond_7

    move/from16 v20, v0

    .line 158
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    if-eqz v0, :cond_6

    .line 160
    invoke-virtual {v13, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    move/from16 v18, v19

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v20

    goto :goto_2

    :cond_7
    if-eqz v18, :cond_1e

    .line 170
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 171
    iget-object v0, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    if-nez v0, :cond_9

    .line 172
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "CXCP"

    .line 173
    const-string v2, "Failed to queue request to ImageWriter - No ImageWriter available!"

    .line 82
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v16

    .line 177
    :cond_9
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/InputRequest;->getImage()Landroidx/camera/camera2/pipe/media/ImageWrapper;

    move-result-object v0

    .line 178
    iget-object v14, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v14

    move-object/from16 v18, v2

    .line 179
    :try_start_0
    iget-boolean v2, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    if-eqz v2, :cond_b

    .line 180
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "CXCP"

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " disconnected. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be queued to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 178
    :cond_a
    :goto_3
    monitor-exit v14

    return-object v16

    .line 183
    :cond_b
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit v14

    .line 184
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "CXCP"

    move-object/from16 v20, v2

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queuing image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for reprocessing to ImageWriter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    move-object/from16 v20, v2

    .line 186
    :goto_4
    iget-object v2, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    invoke-interface {v2, v0}, Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;->queueInputImage(Landroidx/camera/camera2/pipe/media/ImageWrapper;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 50
    invoke-virtual/range {v20 .. v20}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "CXCP"

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to queue image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for reprocessing to ImageWriter "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-object v16

    .line 194
    :cond_e
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v13, v0}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    :goto_5
    move-object v0, v9

    move v9, v12

    move-object v2, v13

    goto :goto_7

    .line 178
    :goto_6
    monitor-exit v14

    throw v0

    :cond_f
    move-object/from16 v18, v2

    .line 197
    invoke-static {v13, v5}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    .line 200
    invoke-static {v13, v6}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    .line 203
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v13, v0}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    .line 215
    invoke-static {v13, v7}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    goto :goto_5

    .line 217
    :goto_7
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->nextRequestNumber()J

    move-result-wide v12

    .line 220
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v3, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    instance-of v14, v3, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    if-eqz v14, :cond_1d

    .line 225
    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    invoke-interface {v3, v2}, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_10

    return-object v16

    .line 229
    :cond_10
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/Request;->getStreams()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1761
    instance-of v14, v3, Ljava/util/Collection;

    if-eqz v14, :cond_12

    move-object v14, v3

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_11
    move-object/from16 v20, v0

    move-object/from16 v23, v4

    const/16 v19, 0x0

    goto/16 :goto_f

    .line 1762
    :cond_12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    .line 230
    iget-object v14, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v14}, Landroidx/camera/camera2/pipe/StreamGraph;->getOutputs()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    move-object/from16 v20, v0

    .line 1761
    instance-of v0, v14, Ljava/util/Collection;

    if-eqz v0, :cond_14

    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    const/4 v0, 0x0

    goto :goto_e

    .line 1762
    :cond_14
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/camera/camera2/pipe/OutputStream;

    .line 231
    invoke-interface {v14}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v21

    sget-object v22, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v22}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getVIDEO_RECORD-vrKr8v8()J

    move-result-wide v3

    if-nez v21, :cond_15

    const/4 v3, 0x0

    goto :goto_a

    :cond_15
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v3

    :goto_a
    if-nez v3, :cond_18

    .line 232
    invoke-interface {v14}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v3

    sget-object v4, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getVIDEO_RECORD-4VYZOf8()J

    move-result-wide v4

    if-nez v3, :cond_16

    const/4 v3, 0x0

    goto :goto_b

    :cond_16
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v3

    :goto_b
    if-eqz v3, :cond_17

    goto :goto_c

    :cond_17
    const/4 v3, 0x0

    goto :goto_d

    :cond_18
    :goto_c
    move/from16 v3, v19

    :goto_d
    if-eqz v3, :cond_19

    move/from16 v0, v19

    goto :goto_e

    :cond_19
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    goto :goto_9

    :goto_e
    if-eqz v0, :cond_1a

    goto :goto_f

    :cond_1a
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v0, v20

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    goto/16 :goto_8

    :goto_f
    if-nez v19, :cond_1b

    .line 243
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    .line 244
    iget-object v3, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    const/4 v4, 0x0

    .line 245
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest;

    const/4 v14, 0x0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v15, v2

    move-object/from16 v17, v8

    move-object v8, v10

    move-object/from16 v1, v23

    move/from16 v10, p1

    move-object v2, v0

    move v0, v4

    move-object v4, v5

    move-object/from16 v5, p3

    .line 243
    invoke-direct/range {v2 .. v14}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 255
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v18

    .line 256
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    :goto_10
    move-object/from16 v15, p6

    move-object v4, v1

    move-object v2, v3

    move-object v10, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v20

    move-object/from16 v1, p0

    move-object/from16 v3, p7

    goto/16 :goto_0

    :cond_1b
    move-object v15, v2

    move-object/from16 v17, v8

    move-object v8, v10

    move-object/from16 v3, v18

    move-object/from16 v1, v23

    const/4 v0, 0x0

    .line 260
    move-object v2, v15

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_11
    if-ge v0, v2, :cond_1c

    move v4, v2

    .line 262
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    move-object/from16 v5, p0

    move-object/from16 v18, v3

    .line 263
    iget-object v3, v5, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 264
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CaptureRequest;

    const/4 v14, 0x0

    move/from16 v10, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v25, v18

    move/from16 v18, v4

    move-object v4, v6

    move-object/from16 v6, p4

    .line 262
    invoke-direct/range {v2 .. v14}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 275
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v25

    .line 276
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    move/from16 v2, v18

    goto :goto_11

    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    goto :goto_10

    :cond_1d
    move-object/from16 v20, v0

    move-object v1, v4

    move-object/from16 v17, v8

    move-object v8, v10

    move-object v4, v2

    .line 281
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    const/4 v14, 0x0

    move/from16 v10, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v0, v18

    invoke-direct/range {v2 .. v14}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZLandroidx/camera/camera2/pipe/Request;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 293
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p6

    move-object/from16 v3, p7

    move-object v2, v0

    move-object v4, v1

    move-object v10, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    goto/16 :goto_0

    .line 168
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object v0, v2

    move-object v1, v4

    move-object/from16 v17, v8

    move-object/from16 v20, v9

    .line 299
    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    move-object/from16 v2, p0

    .line 300
    iget-object v4, v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    .line 308
    iget-object v12, v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    .line 309
    iget-object v13, v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    const/4 v14, 0x0

    move/from16 v5, p1

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move-object v7, v0

    move-object v6, v1

    move-object/from16 v10, v17

    move-object/from16 v11, v20

    .line 299
    invoke-direct/range {v3 .. v14}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public final disconnect$camera_camera2_pipe()V
    .locals 2

    .line 363
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 365
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 367
    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$setDisconnected$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Z)V

    .line 368
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getImageWriter$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 369
    :cond_0
    :goto_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getSession$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 370
    :cond_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getLastSingleRepeatingRequestSequence$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 365
    :goto_1
    :try_start_2
    monitor-exit v0

    .line 376
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$getAwaitRepeatingRequestOnDisconnect$p(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 377
    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 379
    :cond_3
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 365
    :goto_3
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v0
.end method

.method public shutdown(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 358
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnect$camera_camera2_pipe()V

    .line 359
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public stopRepeating()V
    .locals 4

    .line 352
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#stopRepeating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 354
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->stopRepeating()Z

    .line 355
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic submit(Landroidx/camera/camera2/pipe/CaptureSequence;)Ljava/lang/Integer;
    .locals 0

    .line 100
    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->submit(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public submit(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "captureSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    if-eqz v1, :cond_1

    .line 316
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " disconnected. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " won\'t be submitted"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 314
    :cond_0
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    .line 322
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 323
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    instance-of v1, v1, Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;

    if-nez v1, :cond_4

    .line 325
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getRepeating()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 326
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    if-eqz v1, :cond_2

    .line 327
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    .line 329
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 330
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    .line 329
    invoke-interface {v1, v2, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 334
    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {v1, v2, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 337
    :cond_4
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getRepeating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 338
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 340
    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :goto_1
    monitor-exit v0

    return-object p1

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera2CaptureSequenceProcessor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
