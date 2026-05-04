.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;,
        Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

.field private static final PRIORITIES_CHANGED_THRESHOLD_NS:J


# instance fields
.field private _isForeground:Z

.field private final camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

.field private cameraAvailabilityJob:Lkotlinx/coroutines/Job;

.field private final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private cameraPrioritiesJob:Lkotlinx/coroutines/Job;

.field private final cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

.field private final cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

.field private final captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

.field private final captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

.field private final closedDeferred:Lkotlinx/coroutines/CompletableDeferred;

.field private final concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

.field private controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

.field private currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

.field private currentCameraStateJob:Lkotlinx/coroutines/Job;

.field private currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

.field private currentSurfaceMap:Ljava/util/Map;

.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

.field private lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field private final lock:Ljava/lang/Object;

.field private restartJob:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field private final surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method public static synthetic $r8$lambda$8pmWcPJwfGYerhscAozQzB2p3_o(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera$lambda$0(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PloLbSpMiWE7AtJf4WvxN0sjfEY(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/Unit;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked$lambda$2(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/Unit;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

    const-wide/32 v0, 0xbebc200

    .line 459
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->PRIORITIES_CHANGED_THRESHOLD_NS:J

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V
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

    const-string v0, "scope"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strictMode"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphListener"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceTracker"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraStatusMonitor"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureSessionFactory"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureSequenceProcessorFactory"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2DeviceManager"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraSurfaceManager"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2Quirks"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraGraphId"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shutdownListener"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concurrentSessionSequencers"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 65
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 66
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 67
    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 68
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 69
    iput-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 70
    iput-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    .line 71
    iput-object v7, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    .line 72
    iput-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 73
    iput-object v9, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    .line 74
    iput-object v10, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    .line 75
    iput-object v11, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 76
    iput-object v12, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 77
    iput-object v13, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 78
    iput-object v14, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    move-object/from16 v2, p15

    .line 79
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    move-object/from16 v2, p16

    .line 80
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 83
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    const/4 v2, 0x1

    .line 92
    iput-boolean v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z

    .line 96
    sget-object v3, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 99
    new-instance v3, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 107
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getConcurrentCameraGraphs$camera_camera2_pipe()Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v4

    invoke-virtual {v15, v4, v3}, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->getSequencer(Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 107
    :goto_0
    iput-object v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    .line 111
    invoke-static {v6, v2, v6}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lkotlinx/coroutines/CompletableDeferred;

    .line 123
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;

    invoke-direct {v2, v0, v6}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 p2, v1

    move-object/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v7

    invoke-static/range {p2 .. p7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 122
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lkotlinx/coroutines/Job;

    .line 139
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2;

    invoke-direct {v1, v0, v6}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 p2, p1

    move-object/from16 p5, v1

    move/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    invoke-static/range {p2 .. p7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 138
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$bindSessionToCamera(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->bindSessionToCamera(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    return-object p0
.end method

.method public static final synthetic access$getCameraStatusMonitor$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    return-object p0
.end method

.method public static final synthetic access$getLastCameraError$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/CameraError;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    return-object p0
.end method

.method public static final synthetic access$getLastCameraPrioritiesChangedTs$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/core/TimestampNs;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Ljava/lang/Object;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getPRIORITIES_CHANGED_THRESHOLD_NS$cp()J
    .locals 2

    .line 61
    sget-wide v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->PRIORITIES_CHANGED_THRESHOLD_NS:J

    return-wide v0
.end method

.method public static final synthetic access$getSurfaceTracker$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/SurfaceTracker;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    return-object p0
.end method

.method public static final synthetic access$isClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->onCameraStatusChanged(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V

    return-void
.end method

.method public static final synthetic access$onStateClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->onStateClosed(Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V

    return-void
.end method

.method public static final synthetic access$startLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked()V

    return-void
.end method

.method public static final synthetic access$stopLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->stopLocked()V

    return-void
.end method

.method private final bindSessionToCamera(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 372
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 374
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    .line 376
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 377
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit v1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 380
    invoke-interface {v2}, Landroidx/camera/camera2/pipe/compat/VirtualCamera;->getState()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$bindSessionToCamera$3;

    invoke-direct {v2, v0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$bindSessionToCamera$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    invoke-interface {v1, v2, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 398
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 374
    monitor-exit v1

    throw p1
.end method

.method private final detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V
    .locals 6

    .line 426
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 430
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 431
    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_0
    return-void
.end method

.method private static final detachSessionAndCamera$lambda$0(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 3

    .line 432
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 433
    :try_start_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 434
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 435
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p1

    .line 437
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;->onControllerClosed(Landroidx/camera/camera2/pipe/CameraController;)V

    .line 438
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 439
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object v0

    .line 432
    :goto_1
    monitor-exit p1

    throw p0
.end method

.method private final isClosed()Z
    .locals 2

    .line 446
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final onCameraStatusChanged(Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V
    .locals 3

    .line 279
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") camera status changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 280
    monitor-exit v0

    return-void

    .line 285
    :cond_1
    :try_start_1
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    if-eqz v1, :cond_2

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 286
    :cond_2
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    if-eqz v1, :cond_3

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    goto :goto_0

    .line 287
    :cond_3
    instance-of p1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    if-eqz p1, :cond_4

    .line 288
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/TimestampNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 290
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V

    .line 291
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private final onStateClosed(Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V
    .locals 4

    .line 401
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 401
    monitor-exit v0

    return-void

    .line 405
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 406
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 407
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->isDisconnected-impl(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    sget-object p1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$DISCONNECTED;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 409
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CXCP"

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 411
    :cond_1
    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 412
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CXCP"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " encountered error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_2
    sget-object p1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 418
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/SurfaceTracker;->unregisterAllSurfaces()V

    .line 419
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V

    .line 420
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private final startLocked()V
    .locals 19

    move-object/from16 v0, p0

    .line 199
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1

    const-string v2, "Ignoring start(): "

    const-string v3, "CXCP"

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STARTED;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 206
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 207
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    .line 208
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getConcurrentCameraGraphs$camera_camera2_pipe()Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->getCameraIds()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 210
    :cond_3
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    .line 212
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 213
    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 210
    new-instance v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    const/4 v9, 0x0

    invoke-interface/range {v5 .. v10}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->open-zDSwpeU(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLkotlin/jvm/functions/Function1;)Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    move-result-object v2

    if-nez v2, :cond_5

    .line 219
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Open request submission failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 223
    :cond_5
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    const-string v6, "Check failed."

    if-nez v5, :cond_a

    .line 224
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    if-nez v5, :cond_9

    .line 226
    iput-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    .line 228
    new-instance v7, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 229
    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 230
    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 231
    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSequenceProcessorFactory:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;

    .line 232
    iget-object v11, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 233
    iget-object v12, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 234
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v13

    .line 235
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->concurrentSessionSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    .line 236
    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 237
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 238
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 239
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 228
    invoke-direct/range {v7 .. v18}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;-><init>(Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/CoroutineScope;)V

    .line 241
    iput-object v7, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 243
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSurfaceMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 245
    invoke-virtual {v7, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configureSurfaceMap(Ljava/util/Map;)V

    .line 248
    :cond_6
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 249
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Started "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_7
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 251
    :cond_8
    iget-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$startLocked$5;

    invoke-direct {v7, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$startLocked$5;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/Job;

    return-void

    .line 224
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final startLocked$lambda$2(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/Unit;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isForeground()Z

    move-result p0

    return p0
.end method

.method private final stopLocked()V
    .locals 5

    .line 256
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v0

    const-string v1, "Ignoring stop(): "

    const-string v2, "CXCP"

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v3, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPING;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$STOPPED;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    .line 268
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    const/4 v4, 0x0

    .line 270
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    .line 271
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 273
    iput-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 274
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2
    invoke-direct {p0, v1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V

    return-void

    .line 263
    :cond_3
    :goto_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already stopping or stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private final tryRestart()V
    .locals 11

    .line 156
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v6

    .line 158
    sget-object v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;

    .line 159
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 160
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 161
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 162
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 158
    invoke-virtual/range {v1 .. v7}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$Companion;->shouldRestart-X9Wt83s$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraController$ControllerState;Landroidx/camera/camera2/pipe/CameraError;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;Landroidx/camera/camera2/pipe/core/TimestampNs;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Not restarting. Controller state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", last camera error = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getLastCameraError$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", camera availability = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getCameraAvailability$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", last camera priorities changed = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$getLastCameraPrioritiesChangedTs$p(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", current timestamp = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/TimestampNs;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getEnableRestartDelays()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2bc

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 178
    :goto_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 180
    :cond_3
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;

    invoke-direct {v8, v0, v1, p0, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$tryRestart$2;-><init>(JLandroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 179
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 327
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CXCP"

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#awaitClosed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSED;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CXCP"

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#awaitClosed: Controller is already closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 332
    :cond_4
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit v2

    return-object p1

    .line 335
    :cond_5
    :try_start_1
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    sget-object v5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "CXCP"

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#awaitClosed: Controller isn\'t closing!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p1, 0x0

    .line 337
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    monitor-exit v2

    return-object p1

    .line 339
    :cond_7
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    monitor-exit v2

    .line 340
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lkotlinx/coroutines/CompletableDeferred;

    iput v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 341
    :cond_8
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 329
    :goto_3
    monitor-exit v2

    throw p1
.end method

.method public close()V
    .locals 7

    .line 295
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 295
    monitor-exit v0

    return-void

    .line 299
    :cond_0
    :try_start_1
    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$CLOSING;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    .line 300
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CXCP"

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 302
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    .line 303
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    const/4 v4, 0x0

    .line 305
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    .line 306
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 308
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lkotlinx/coroutines/Job;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-static {v5, v4, v6, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 309
    :cond_2
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_3

    invoke-static {v5, v4, v6, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 310
    :cond_3
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/Job;

    .line 311
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_4

    invoke-static {v5, v4, v6, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 312
    :cond_4
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lkotlinx/coroutines/Job;

    .line 313
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_5

    invoke-static {v5, v4, v6, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 314
    :cond_5
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lkotlinx/coroutines/Job;

    .line 315
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor;

    invoke-static {v4}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    .line 317
    invoke-direct {p0, v3, v2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V

    .line 319
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->getCloseCameraDeviceOnClose()Z

    move-result v2

    if-nez v2, :cond_6

    .line 320
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 50
    :cond_6
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CXCP"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quirk: Closing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " during "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "#close"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->close-EfqyGwQ(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    .line 325
    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public getCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object v0
.end method

.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getControllerState$camera_camera2_pipe()Landroidx/camera/camera2/pipe/CameraController$ControllerState;
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/camera/camera2/pipe/CameraController$ControllerState;

    return-object v0
.end method

.method public isForeground()Z
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setForeground(Z)V
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public start()V
    .locals 2

    .line 147
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera2CameraController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->getCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSurfaceMap(Ljava/util/Map;)V
    .locals 2

    const-string/jumbo v0, "surfaceMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 346
    monitor-exit v0

    return-void

    .line 350
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSurfaceMap:Ljava/util/Map;

    .line 351
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configureSurfaceMap(Ljava/util/Map;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 346
    monitor-exit v0

    throw p1
.end method
