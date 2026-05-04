.class public final Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;,
        Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;,
        Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;


# instance fields
.field private _cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private _surfaceMap:Ljava/util/Map;

.field private final _surfaceTokenMap:Ljava/util/Map;

.field private final activeOutputSurfaceMap:Ljava/util/Map;

.field private final activeStreamSurfaceMap:Ljava/util/Map;

.field private cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

.field private final cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

.field private final cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

.field private final captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

.field private final captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

.field private final captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

.field private final concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

.field private final debugId:I

.field private final finalized:Lkotlinx/atomicfu/AtomicRef;

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private hasAttemptedCaptureSession:Z

.field private final lock:Ljava/lang/Object;

.field private pendingOutputMap:Ljava/util/Map;

.field private pendingSurfaceMap:Ljava/util/Map;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field private final sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

.field private final sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

.field private state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field private final streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->Companion:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "graphListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureSessionFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureSequenceProcessorFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraSurfaceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraGraphFlags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strictMode"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 70
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 71
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    .line 72
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 73
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 74
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 75
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    .line 76
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    .line 77
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 78
    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 79
    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 81
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/CaptureSessionStateKt;->getCaptureSessionDebugIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->debugId:I

    .line 82
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 83
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalized:Lkotlinx/atomicfu/AtomicRef;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    if-eqz p7, :cond_0

    .line 89
    new-instance p1, Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    invoke-direct {p1, p7}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;-><init>(Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    .line 113
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 123
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    .line 126
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    .line 131
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCaptureSessionAttemptCompleted$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getCaptureSessionFactory$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    return-object p0
.end method

.method public static final synthetic access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object p0
.end method

.method public static final synthetic access$getSessionCreatingTimestamp$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimestampNs;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

    return-object p0
.end method

.method public static final synthetic access$getSessionDisconnected$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    return-object p0
.end method

.method public static final synthetic access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimeSource;
    .locals 0

    .line 68
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    return-object p0
.end method

.method public static final synthetic access$tryCreateCaptureSession(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->tryCreateCaptureSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 11

    .line 243
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 246
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    .line 248
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    const-string v4, "activeStreamSurfaceMap"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    const-string v5, "activeOutputSurfaceMap"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-interface {v1, p1, v3, v4}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;->create(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    move-result-object v1

    .line 251
    instance-of v3, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    if-eqz v3, :cond_0

    .line 253
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 255
    sget-object v4, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->Companion:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;

    invoke-virtual {v4, v1}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;->from(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v4

    .line 256
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 253
    invoke-direct {v3, p1, v4, v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V

    :goto_0
    move-object v1, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 260
    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 262
    sget-object v4, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->Companion:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;

    invoke-virtual {v4, v1}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;->from(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v1

    .line 260
    invoke-direct {v3, p1, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V

    goto :goto_0

    .line 266
    :goto_1
    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 271
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne p1, v3, :cond_6

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 276
    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v4

    .line 279
    :goto_2
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v0

    if-eqz p1, :cond_4

    .line 282
    invoke-direct {p0, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeOutputsIfAvailable(Z)V

    .line 285
    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 287
    :try_start_1
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CXCP"

    .line 288
    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object v5

    .line 70
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v5

    .line 288
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getSessionCreatingTimestamp$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 29
    invoke-static {v5, v6}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v5

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configured "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "f ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    long-to-double v5, v5

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v4

    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 292
    :cond_5
    :goto_3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getProcessor()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStarted(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1

    throw v0

    .line 243
    :cond_6
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0

    throw p1
.end method

.method private final finalizeOutputsIfAvailable(Z)V
    .locals 11

    .line 494
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 496
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    .line 497
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    .line 498
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 494
    monitor-exit v0

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 501
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#finalizeOutputConfigurations"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 502
    sget-object v0, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v4

    .line 503
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 506
    invoke-static {v7}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Landroid/view/Surface;

    .line 507
    invoke-interface {v6, v7}, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;->addSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 506
    :cond_0
    const-string p1, "Required value was null."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 153
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 513
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 154
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getSession()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v6

    invoke-interface {v6, v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->finalizeOutputConfigurations(Ljava/util/List;)Z

    .line 517
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_1
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_8

    .line 519
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 520
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 521
    iget-object v10, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    invoke-interface {v10, v9}, Landroidx/camera/camera2/pipe/StreamGraph;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 522
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_3

    .line 525
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    const-string v10, "activeOutputSurfaceMap"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v9}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v9

    invoke-static {v9}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v9

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 523
    :cond_3
    const-string p1, "Cannot finalize a multi-output stream!"

    .line 522
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_4
    const-string p1, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    :cond_5
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "CXCP"

    .line 528
    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getTimeSource$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/core/TimeSource;

    move-result-object v6

    .line 70
    invoke-interface {v6}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v9

    sub-long/2addr v9, v4

    .line 29
    invoke-static {v9, v10}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    .line 529
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finalized "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v10

    .line 154
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 529
    :cond_6
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    sget-object v2, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "f ms"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    long-to-double v4, v4

    const-wide v9, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v8, v7

    .line 534
    :cond_8
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    monitor-exit v0

    if-eqz v8, :cond_9

    if-eqz p1, :cond_9

    .line 537
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getProcessor()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphModified(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    .line 539
    :cond_9
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 517
    :goto_4
    monitor-exit v0

    throw p1

    :cond_a
    return-void

    :catchall_1
    move-exception p1

    .line 494
    monitor-exit v0

    throw p1
.end method

.method static synthetic finalizeOutputsIfAvailable$default(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 490
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeOutputsIfAvailable(Z)V

    return-void
.end method

.method private final tryCreateCaptureSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 543
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 544
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 545
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 546
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 547
    :try_start_0
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v5, v6, :cond_3

    .line 548
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    monitor-exit v4

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    .line 551
    :cond_3
    :try_start_1
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    iput-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 552
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 553
    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v6, :cond_17

    if-nez v5, :cond_4

    goto/16 :goto_9

    .line 557
    :cond_4
    sget-object v5, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 558
    iput-boolean v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    .line 559
    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/camera/camera2/pipe/core/TimestampNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object v5

    .line 559
    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 560
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    monitor-exit v4

    .line 565
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz v4, :cond_7

    .line 566
    sget-object v5, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "CXCP"

    .line 566
    const-string v6, "Awaiting session lock"

    .line 50
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_5
    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    invoke-virtual {v4, v0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->awaitSessionLock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p1

    move-object v1, v2

    :goto_1
    move-object p1, v0

    move-object v2, v1

    .line 572
    :cond_7
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    const-string v1, "CXCP"

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating CameraCaptureSession from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_9

    const-string v5, "null"

    goto :goto_3

    :cond_9
    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_a
    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraDevice-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_b
    move-object v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#createCaptureSession"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    :try_start_2
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 577
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getCaptureSessionFactory$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    move-result-object v1

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object v4, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/util/Map;

    invoke-interface {v1, v2, v4, p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;->create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 579
    instance-of v2, v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    if-nez v2, :cond_d

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "CXCP"

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create capture session for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 584
    :cond_d
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 585
    :try_start_3
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v5, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v4, v5, :cond_15

    sget-object v5, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v4, v5, :cond_e

    goto/16 :goto_7

    .line 589
    :cond_e
    sget-object v5, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v4, v5, :cond_14

    .line 590
    sget-object v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 592
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    iget-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 593
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    move-object v5, v1

    check-cast v5, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;->getOutputSurfaceMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 595
    check-cast v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;->getDeferred()Ljava/util/Map;

    move-result-object v1

    .line 596
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "CXCP"

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Waiting to finalize "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 598
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    .line 601
    :cond_f
    :goto_5
    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    .line 603
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    if-eqz p1, :cond_11

    .line 841
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 523
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 844
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    move-object v0, v3

    :cond_12
    if-eqz v0, :cond_13

    .line 607
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne p1, v1, :cond_13

    .line 609
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    .line 612
    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 584
    monitor-exit v2

    .line 617
    invoke-direct {p0, v3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 618
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 589
    :cond_14
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_15
    :goto_7
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "CXCP"

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getState$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while configuration was in progress."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 584
    monitor-exit v2

    return-object p1

    :goto_8
    monitor-exit v2

    throw p1

    :catchall_2
    move-exception p1

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1

    .line 554
    :cond_17
    :goto_9
    :try_start_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 546
    monitor-exit v4

    return-object p1

    :goto_a
    monitor-exit v4

    throw p1
.end method

.method private final updateTrackedSurfaces(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    .line 625
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 626
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 629
    invoke-static {p1, p2}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 630
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 631
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_0

    .line 632
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Surface "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t have a matching surface token!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 636
    :cond_2
    invoke-static {p2, p1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 637
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    .line 638
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->registerSurface$camera_camera2_pipe(Landroid/view/Surface;)Ljava/lang/AutoCloseable;

    move-result-object v0

    .line 639
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public final configureSurfaceMap(Ljava/util/Map;)V
    .locals 10

    const-string/jumbo v0, "surfaces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v0, v2, :cond_5

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    .line 139
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->updateTrackedSurfaces(Ljava/util/Map;Ljava/util/Map;)V

    .line 140
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    .line 142
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 143
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 659
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 523
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 662
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 152
    iput-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/Map;

    .line 153
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$1;

    invoke-direct {v7, p0, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4
    move-object p1, v2

    .line 156
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$2;

    invoke-direct {v5, p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$configureSurfaceMap$1$2;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 157
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1

    throw p1
.end method

.method public final disconnect()V
    .locals 10

    .line 307
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v1, v2, :cond_c

    sget-object v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v1, v3, :cond_0

    goto/16 :goto_3

    .line 311
    :cond_0
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 313
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 315
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 317
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getCloseCaptureSessionOnDisconnect()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    move-object v1, v2

    .line 326
    :goto_0
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit v0

    .line 331
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    :cond_3
    const-wide/16 v4, 0xbb8

    if-eqz v3, :cond_6

    .line 334
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CXCP"

    .line 334
    const-string v3, "Waiting for CameraCaptureSession configuration"

    .line 50
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$3;

    invoke-direct {v3, p0, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$3;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v4, v5, v3}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    if-nez v1, :cond_5

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CXCP"

    .line 341
    const-string v1, "Waiting for CameraCaptureSession configuration timed out"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 345
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 349
    :cond_6
    :goto_1
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#onGraphStopping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopping()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v1, :cond_b

    .line 355
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getProcessor()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v0

    .line 366
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "CXCP"

    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Shutdown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "#shutdown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 376
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getAbortCapturesOnStop()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 377
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$9;

    invoke-direct {v7, p0, v0, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$9;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Lkotlin/coroutines/Continuation;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9, v7}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Unit;

    if-nez v6, :cond_8

    .line 82
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "CXCP"

    .line 380
    const-string v7, "Failed to abort captures in 2000ms"

    .line 82
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "#disconnect"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getCaptureSequenceProcessor()Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnect$camera_camera2_pipe()V

    .line 79
    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 404
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getCloseCaptureSessionOnDisconnect()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 405
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;

    invoke-direct {v7, p0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v4, v5, v7}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    if-nez v1, :cond_a

    .line 82
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "CXCP"

    .line 412
    const-string v2, "Failed to close the capture session in 3000ms"

    .line 82
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#onGraphStopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopped(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 424
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getGraphListener$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onGraphStopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    invoke-interface {v0, v2}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopped(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 430
    :goto_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 307
    :cond_c
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw v1
.end method

.method public final finalizeSession$camera_camera2_pipe(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$finalizeSession$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p0, v0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$finalizeSession$1;-><init>(JLandroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 479
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CXCP"

    .line 479
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finalizing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 482
    :try_start_0
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 483
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p1

    .line 486
    check-cast p2, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/AutoCloseable;

    .line 486
    invoke-static {p2}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 481
    monitor-exit p1

    throw p2
.end method

.method public onActive(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Active"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCaptureQueueEmpty(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " CaptureQueueEmpty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Closed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#onClosed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 176
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 4

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Configuration Failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#onConfigureFailed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 185
    new-instance v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    .line 187
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 188
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 189
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Configured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#configure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 197
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 198
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onReady(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Ready"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSessionDisconnected()V
    .locals 2

    .line 211
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " session disconnecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->disconnect()V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionDisconnected Await"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 220
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->access$getSessionDisconnected$p(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v0
.end method

.method public onSessionFinalized()V
    .locals 3

    .line 226
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalized:Lkotlinx/atomicfu/AtomicRef;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " session finalizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionFinalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    const-wide/16 v0, 0x0

    .line 230
    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void
.end method

.method public final setCameraDevice(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
    .locals 9

    .line 95
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    if-eqz p1, :cond_1

    .line 102
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 104
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v1

    return-void

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1

    throw p1
.end method

.method public final shutdown()V
    .locals 8

    .line 439
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->disconnect()V

    .line 443
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 448
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getFinalizeSessionOnCloseBehavior-Bm6Tfm4()I

    move-result v1

    .line 452
    sget-object v6, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getIMMEDIATE-Bm6Tfm4()I

    move-result v7

    invoke-static {v1, v7}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->equals-impl0(II)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getTIMEOUT-Bm6Tfm4()I

    move-result v6

    invoke-static {v1, v6}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x7d0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 462
    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 463
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 464
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit v0

    if-eqz v5, :cond_4

    .line 467
    invoke-virtual {p0, v3, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    :cond_4
    return-void

    .line 443
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureSessionState-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
