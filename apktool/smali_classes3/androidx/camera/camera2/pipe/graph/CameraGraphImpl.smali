.class public final Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraGraph;


# instance fields
.field private final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

.field private final cameraController:Landroidx/camera/camera2/pipe/CameraController;

.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field private final frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

.field private final frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final graphScope:Lkotlinx/coroutines/CoroutineScope;

.field private final id:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private isForeground:Z

.field private final listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

.field private final parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

.field private final sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/graph/Controller3A;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "graphConfig"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphProcessor"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphListener"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceGraph"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraController"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameDistributor"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameCaptureQueue"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioRestrictionController"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionLock"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphScope"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller3A"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 67
    iput-object v3, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    .line 68
    iput-object v4, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 69
    iput-object v5, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 70
    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 71
    iput-object v7, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    .line 72
    iput-object v8, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    .line 73
    iput-object v9, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 74
    iput-object v10, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    .line 75
    iput-object v11, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->id:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 76
    iput-object v12, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    .line 77
    iput-object v13, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    .line 78
    iput-object v14, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 79
    iput-object v15, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Lkotlinx/coroutines/CoroutineScope;

    .line 80
    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    const/4 v1, 0x0

    .line 82
    invoke-static {v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 86
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3, v0}, Landroidx/camera/camera2/pipe/core/Debug;->formatCameraGraphProperties(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraph;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "CXCP"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    .line 89
    :goto_0
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v1

    sget-object v2, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 93
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    .line 100
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1740
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 1741
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/OutputStream;

    .line 100
    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->isValidForHighSpeedOperatingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a HIGH_SPEED CameraGraph with more than two outputs. Configured outputs are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputs()Ljava/util/List;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a HIGH_SPEED CameraGraph without outputs."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_5
    :goto_2
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 109
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 112
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-ge v1, v4, :cond_8

    .line 113
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multi resolution reprocessing not supported under Android S"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "At least one InputConfiguration is required for reprocessing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_8
    :goto_3
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getImageSourceMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 122
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->maybeUpdateSurfaces$camera_camera2_pipe()V

    .line 146
    :cond_9
    iput-boolean v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->isForeground:Z

    return-void
.end method

.method public static final synthetic access$getController3A$p(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;)Landroidx/camera/camera2/pipe/graph/Controller3A;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    return-object p0
.end method

.method private final createSessionFromToken(Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;
    .locals 7

    .line 324
    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    .line 326
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    .line 327
    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 328
    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 329
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getParameters()Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    move-result-object v5

    .line 330
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getListeners()Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    move-result-object v6

    move-object v1, p1

    .line 324
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;-><init>(Landroidx/camera/camera2/pipe/core/Token;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)V

    return-object v0
.end method

.method private final withSessionLockAsync(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;
    .locals 4

    .line 344
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$withSessionLockAsync$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$withSessionLockAsync$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->withTokenInAsync$camera_camera2_pipe(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public acquireSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 172
    iget v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    iput v3, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$acquireSession$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->acquireToken$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 172
    :cond_3
    :goto_1
    check-cast p1, Landroidx/camera/camera2/pipe/core/Token;

    .line 179
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->createSessionFromToken(Landroidx/camera/camera2/pipe/core/Token;)Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 3

    .line 306
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 308
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->close()V

    .line 310
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraController;->close()V

    .line 311
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameDistributor:Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->close()V

    .line 312
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->close()V

    .line 313
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->close()V

    .line 314
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->close()V

    .line 315
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->removeCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph;)V

    .line 316
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void
.end method

.method public getId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->id:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object v0
.end method

.method public getListeners()Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    return-object v0
.end method

.method public getParameters()Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    return-object v0
.end method

.method public getStreams()Landroidx/camera/camera2/pipe/StreamGraph;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    return-object v0
.end method

.method public setForeground(Z)V
    .locals 1

    .line 148
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->isForeground:Z

    .line 149
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/CameraController;->setForeground(Z)V

    return-void
.end method

.method public setSurface-NYG5g8E(ILandroid/view/Surface;)V
    .locals 2

    .line 210
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#setSurface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#setSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->surfaceGraph:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->set-NYG5g8E(ILandroid/view/Surface;)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 153
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 156
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStarting()V

    .line 158
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraController;->start()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after calling close()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 321
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->getId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraphId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;
    .locals 9

    .line 231
    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->withSessionLockAsync(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method
