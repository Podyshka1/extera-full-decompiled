.class public final Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;
.implements Landroidx/camera/camera2/pipe/CaptureSequence;


# instance fields
.field private volatile _sequenceNumber:Ljava/lang/Integer;

.field private final cameraId:Ljava/lang/String;

.field private final captureMetadataList:Ljava/util/List;

.field private final captureRequestList:Ljava/util/List;

.field private final debugId:J

.field private final hasStarted:Lkotlinx/coroutines/CompletableDeferred;

.field private final listeners:Ljava/util/List;

.field private final repeating:Z

.field private final sequenceListener:Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;

.field private final streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final surfaceToOutputMap:Ljava/util/Map;

.field private final surfaceToStreamMap:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureRequestList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureMetadataList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sequenceListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceToStreamMap"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceToOutputMap"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strictMode"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->cameraId:Ljava/lang/String;

    .line 49
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    .line 50
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureRequestList:Ljava/util/List;

    .line 51
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/List;

    .line 52
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 53
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->sequenceListener:Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;

    .line 54
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->surfaceToStreamMap:Ljava/util/Map;

    .line 55
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->surfaceToOutputMap:Ljava/util/Map;

    .line 56
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    .line 57
    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 62
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->getCaptureSequenceDebugIds()Lkotlinx/atomicfu/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicLong;->incrementAndGet()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->debugId:J

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 63
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferred;

    .line 66
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CaptureRequestList and CaptureMetadataList must have a 1:1 mapping."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;)V

    return-void
.end method

.method private final getStreamId-Lfjdq8s(Landroid/view/Surface;)Landroidx/camera/camera2/pipe/StreamId;
    .locals 2

    .line 275
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->surfaceToStreamMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/StreamId;

    if-eqz v0, :cond_0

    return-object v0

    .line 281
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->surfaceToOutputMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/OutputId;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputId;->unbox-impl()I

    move-result p1

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/StreamGraph;->get-iYJqvbA(I)Landroidx/camera/camera2/pipe/OutputStream;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 282
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/OutputStream;->getStream()Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private final invokeCaptureFailure-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 4

    .line 227
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceListener()Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;->onCaptureSequenceComplete(Landroidx/camera/camera2/pipe/CaptureSequence;)V

    .line 228
    sget-object v0, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 87
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "InvokeInternalListeners"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 228
    invoke-interface {v3, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 96
    const-string v0, "InvokeRequestListeners"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 100
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 228
    invoke-interface {v2, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private final readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;
    .locals 3

    .line 330
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 334
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 335
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/RequestMetadata;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find CaptureRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCaptureRequestList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final awaitStarted$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 344
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureMetadataList()Ljava/util/List;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/List;

    return-object v0
.end method

.method public getCaptureRequestList()Ljava/util/List;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureRequestList:Ljava/util/List;

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getRepeating()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    return v0
.end method

.method public getSequenceListener()Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->sequenceListener:Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 3

    .line 81
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->_sequenceNumber:Ljava/lang/Integer;

    const/16 v1, 0x21

    if-nez v0, :cond_1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->_sequenceNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SequenceNumber has not been set for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    throw v0

    .line 87
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->_sequenceNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SequenceNumber has not been set for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 7

    const-string v0, "captureSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "surface"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p1, "onCaptureBufferLost"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 258
    invoke-static {p4, p5}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v2

    .line 259
    invoke-direct {p0, p3}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getStreamId-Lfjdq8s(Landroid/view/Surface;)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p1

    .line 260
    iget-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->surfaceToOutputMap:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/OutputId;

    .line 261
    const-string p5, " on "

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    .line 266
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object v1

    .line 268
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 72
    const-string p2, "InvokeInternalListeners"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-ge v0, p3, :cond_0

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 268
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v5

    invoke-interface {v4, v1, v2, v3, v5}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object p3, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    const-string p3, "InvokeRequestListeners"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v4, p5

    :goto_1
    if-ge v4, v0, :cond_1

    .line 100
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 268
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v6

    invoke-interface {v5, v1, v2, v3, v6}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 269
    sget-object v0, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move v6, p5

    :goto_2
    if-ge v6, p2, :cond_2

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 269
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v4

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputId;->unbox-impl()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 95
    :cond_2
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_3
    if-ge p5, p2, :cond_3

    .line 100
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 269
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v4

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputId;->unbox-impl()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    .line 103
    :cond_3
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 262
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to find the outputId for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 261
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to find the streamId for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    const-string v0, "captureSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureResult"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->onCaptureCompleted-rmrZIYk(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V

    return-void
.end method

.method public onCaptureCompleted-rmrZIYk(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V
    .locals 6

    const-string v0, "captureRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "onCaptureCompleted"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 171
    const-string v0, "onCaptureSequenceComplete"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceListener()Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;->onCaptureSequenceComplete(Landroidx/camera/camera2/pipe/CaptureSequence;)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 177
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object p1

    .line 178
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Landroidx/camera/camera2/pipe/RequestMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    const-string p2, "onTotalCaptureResult"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 181
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 72
    const-string p2, "InvokeInternalListeners"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 181
    invoke-interface {v4, p1, p3, p4, v0}, Landroidx/camera/camera2/pipe/Request$Listener;->onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    const-string v1, "InvokeRequestListeners"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    .line 100
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 181
    invoke-interface {v5, p1, p3, p4, v0}, Landroidx/camera/camera2/pipe/Request$Listener;->onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object v3, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 186
    const-string v3, "onComplete"

    .line 72
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 187
    sget-object v3, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move v3, v2

    :goto_2
    if-ge v3, p2, :cond_2

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 187
    invoke-interface {v4, p1, p3, p4, v0}, Landroidx/camera/camera2/pipe/Request$Listener;->onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 95
    :cond_2
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_3

    .line 100
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 187
    invoke-interface {v1, p1, p3, p4, v0}, Landroidx/camera/camera2/pipe/Request$Listener;->onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 103
    :cond_3
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    const-string v0, "captureSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureFailure"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p1, "onCaptureFailed"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 211
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object p1

    .line 212
    new-instance p2, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;

    invoke-direct {p2, p1, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;Landroid/hardware/camera2/CaptureFailure;)V

    .line 216
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    .line 214
    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->invokeCaptureFailure-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCaptureFailed-RuT0dZU(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 9

    const-string v0, "captureRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "onCaptureFailed"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 237
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object v3

    .line 239
    new-instance v2, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-wide v5, p2

    invoke-direct/range {v2 .. v8}, Landroidx/camera/camera2/pipe/compat/ExtensionRequestFailure;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 246
    invoke-direct {p0, v3, v5, v6, v2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->invokeCaptureFailure-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCaptureProcessProgressed(Landroid/hardware/camera2/CaptureRequest;I)V
    .locals 4

    const-string v0, "captureRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "onCaptureProcessProgressed"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object p1

    .line 197
    sget-object v0, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 87
    const-string v0, "InvokeInternalListeners"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 197
    invoke-interface {v3, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener;->onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 96
    const-string v0, "InvokeRequestListeners"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 100
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 197
    invoke-interface {v2, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener;->onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    const-string v0, "captureSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "partialCaptureResult"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    const-string v0, "captureRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partialCaptureResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "onCaptureProgressed"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    .line 131
    new-instance v2, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4}, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;-><init>(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object p1

    .line 137
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 87
    const-string p2, "InvokeInternalListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_0

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 137
    invoke-interface {v5, p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/Request$Listener;->onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 96
    const-string p2, "InvokeRequestListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_1
    if-ge v3, p2, :cond_1

    .line 100
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 137
    invoke-interface {v4, p1, v0, v1, v2}, Landroidx/camera/camera2/pipe/Request$Listener;->onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 6

    .line 314
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "onCaptureSequenceAborted"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceListener()Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;->onCaptureSequenceComplete(Landroidx/camera/camera2/pipe/CaptureSequence;)V

    .line 318
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceNumber()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureSequenceAborted was invoked on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_2
    :goto_1
    sget-object p1, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    const-string p1, "InvokeInternalListeners"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move v0, v2

    :goto_2
    if-ge v0, p1, :cond_4

    .line 59
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_3

    .line 61
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 323
    invoke-interface {v5, v1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 65
    :cond_4
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p1, "InvokeRequestListeners"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    move v0, v2

    :goto_4
    if-ge v0, p1, :cond_6

    .line 70
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_5
    if-ge v4, v3, :cond_5

    .line 72
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 323
    invoke-interface {v5, v1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 76
    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    const-string v0, "captureSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .locals 6

    .line 292
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "onCaptureSequenceCompleted"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceListener()Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;->onCaptureSequenceComplete(Landroidx/camera/camera2/pipe/CaptureSequence;)V

    .line 296
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceNumber()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureSequenceCompleted was invoked on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->getSequenceNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StrictMode;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 31
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 301
    :cond_2
    :goto_1
    invoke-static {p2, p3}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide p1

    .line 302
    sget-object p3, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    const-string p3, "InvokeInternalListeners"

    .line 72
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    move v0, v2

    :goto_2
    if-ge v0, p3, :cond_4

    .line 59
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_3

    .line 61
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 303
    invoke-interface {v5, v1, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 65
    :cond_4
    sget-object p3, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p3, "InvokeRequestListeners"

    .line 72
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    move v0, v2

    :goto_4
    if-ge v0, p3, :cond_6

    .line 70
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_5
    if-ge v4, v3, :cond_5

    .line 72
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 303
    invoke-interface {v5, v1, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 76
    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    const-string v0, "captureSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 6

    const-string v0, "captureSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-wide v4, p3

    move-wide v2, p5

    .line 98
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7

    const-string v0, "captureRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "onCaptureStarted"

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 106
    invoke-static {p4, p5}, Landroidx/camera/camera2/pipe/CameraTimestamp;->constructor-impl(J)J

    move-result-wide v5

    .line 107
    invoke-static {p2, p3}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v3

    .line 109
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferred;

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p2, p3}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 113
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object v2

    .line 115
    sget-object p1, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 87
    const-string p1, "InvokeInternalListeners"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 115
    invoke-interface/range {v1 .. v6}, Landroidx/camera/camera2/pipe/Request$Listener;->onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 96
    const-string p1, "InvokeRequestListeners"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {v2}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_1

    .line 100
    invoke-interface {v2}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 115
    invoke-interface/range {v1 .. v6}, Landroidx/camera/camera2/pipe/Request$Listener;->onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onReadoutStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 6

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "captureRequest"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p1, "onReadoutStarted"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 148
    invoke-static {p3, p4}, Landroidx/camera/camera2/pipe/SensorTimestamp;->constructor-impl(J)J

    move-result-wide v4

    .line 149
    invoke-static {p5, p6}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v2

    .line 153
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->readRequestMetadata(Landroid/hardware/camera2/CaptureRequest;)Landroidx/camera/camera2/pipe/RequestMetadata;

    move-result-object v1

    .line 155
    sget-object p1, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 87
    const-string p1, "InvokeInternalListeners"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 92
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 155
    invoke-interface/range {v0 .. v5}, Landroidx/camera/camera2/pipe/Request$Listener;->onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 96
    const-string p1, "InvokeRequestListeners"

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_1

    .line 100
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 155
    invoke-interface/range {v0 .. v5}, Landroidx/camera/camera2/pipe/Request$Listener;->onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 103
    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->_sequenceNumber:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera2CaptureSequence-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->debugId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
