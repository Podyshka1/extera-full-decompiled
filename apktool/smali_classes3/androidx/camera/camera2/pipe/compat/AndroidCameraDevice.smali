.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# instance fields
.field private final _lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

.field private final cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraId:Ljava/lang/String;

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 1

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 125
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 126
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 128
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    .line 129
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    const/4 p1, 0x0

    .line 131
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 p1, 0x0

    .line 132
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/Threads;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/Threads;)V

    return-void
.end method

.method public static final synthetic access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public static final synthetic access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    return-object p0
.end method

.method public static final synthetic access$getCameraMetadata$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-object p0
.end method

.method public static final synthetic access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    .line 123
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    return-object p0
.end method

.method private final checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;
    .locals 3

    .line 535
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 537
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 539
    :cond_0
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, p1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V
    .locals 2

    .line 543
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 543
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionDisconnected()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method

.method private final onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V
    .locals 2

    .line 547
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onSessionFinalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 547
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method


# virtual methods
.method public createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 18

    .line 477
    const-string v1, "format(...)"

    const-string v2, "f ms"

    const-string v3, "%."

    const-string v4, " - "

    const-string v5, "CXCP"

    .line 528
    sget-object v6, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CXCP#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "createCaptureRequest"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v14, 0x1

    .line 72
    :try_start_0
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 529
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    move/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 57
    :try_start_3
    instance-of v15, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v15, :cond_2

    .line 58
    sget-object v15, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 58
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v13, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v13, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v12, v11, v0, v14}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v13, v0, Ljava/lang/IllegalArgumentException;

    if-nez v13, :cond_5

    .line 70
    instance-of v13, v0, Ljava/lang/SecurityException;

    if-nez v13, :cond_5

    .line 71
    instance-of v13, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v13, :cond_5

    .line 72
    instance-of v13, v0, Ljava/lang/NullPointerException;

    if-eqz v13, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v11, v0, Ljava/lang/IllegalStateException;

    if-eqz v11, :cond_4

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v0

    .line 73
    :cond_5
    :goto_1
    sget-object v13, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 73
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    .line 74
    invoke-interface {v12, v11, v0, v10}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v8

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v8

    .line 65
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    long-to-double v3, v8

    div-double v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    :catchall_1
    move-exception v0

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v8

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v8

    .line 65
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    long-to-double v3, v8

    div-double v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    throw v0
.end method

.method public createCaptureSession(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z
    .locals 27

    move-object/from16 v1, p0

    const-string v7, "format(...)"

    const-string v8, "f ms"

    const-string v9, "%."

    const-string v10, " - "

    const-string v11, "CXCP"

    const-string v0, "config"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getStateCallback()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v13, 0x0

    if-nez v2, :cond_0

    return v13

    :cond_0
    if-eqz v3, :cond_1

    .line 384
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 528
    :cond_1
    sget-object v14, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CXCP#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "createCaptureSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 58
    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 72
    :try_start_0
    invoke-static {v15}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 389
    :try_start_1
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getSessionType()I

    move-result v0

    .line 390
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getOutputConfigurations()Ljava/util/List;

    move-result-object v21

    move-object/from16 v2, v21

    check-cast v2, Ljava/lang/Iterable;

    .line 1563
    new-instance v12, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v21, v14

    const/16 v14, 0xa

    :try_start_2
    invoke-static {v2, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v4, :cond_2

    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 390
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v4

    .line 1635
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v7

    move-object v12, v8

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 391
    :cond_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    move v4, v0

    .line 392
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;

    move-object v5, v2

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getStateCallback()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    move-result-object v2

    move/from16 v23, v4

    .line 396
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4

    move-object/from16 v24, v5

    .line 397
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    .line 398
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v25
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v26, v6

    move-object/from16 v22, v7

    move/from16 v14, v23

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    move-object/from16 v23, v8

    const/4 v8, 0x1

    .line 392
    :try_start_5
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V

    .line 388
    invoke-static {v14, v12, v7, v0}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->newSessionConfiguration(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object v0

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getInputConfiguration()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 403
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_3

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getInputConfiguration()Ljava/util/List;

    move-result-object v2

    .line 408
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-static {v2, v4}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->newInputConfiguration(Ljava/util/List;Ljava/lang/String;)Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v2

    .line 404
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setInputConfiguration(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/params/InputConfiguration;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v6, v22

    move-object/from16 v12, v23

    const/4 v7, 0x0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_9

    .line 414
    :cond_3
    new-instance v2, Landroid/hardware/camera2/params/InputConfiguration;

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getInputConfiguration()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getWidth()I

    move-result v4

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getInputConfiguration()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getHeight()I

    move-result v5

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getInputConfiguration()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getFormat()I

    move-result v6

    .line 414
    invoke-direct {v2, v4, v5, v6}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 412
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setInputConfiguration(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/params/InputConfiguration;)V

    .line 424
    :cond_4
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getSessionColorSpace-dxVZaPA()Ljava/lang/String;

    move-result-object v2

    .line 425
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_6

    if-eqz v2, :cond_6

    .line 426
    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraColorSpace;->toColorSpaceNamed-impl(Ljava/lang/String;)Landroid/graphics/ColorSpace$Named;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 428
    invoke-static {v0, v4}, Landroidx/camera/camera2/pipe/compat/Api34Compat;->setColorSpace(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/graphics/ColorSpace$Named;)V

    goto :goto_5

    .line 431
    :cond_5
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provided session color space "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    .line 436
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set session color space to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", at least API level 34 is required"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_7
    :goto_5
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v2, "createCaptureRequest"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    :try_start_6
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 443
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getSessionTemplateId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 79
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 442
    const-string/jumbo v4, "trace(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraMetadata$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v4

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/CameraMetadata;->getSessionKeys()Ljava/util/Set;

    move-result-object v4

    .line 1563
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 449
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1635
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 453
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/SessionConfigData;->getSessionParameters()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 454
    instance-of v12, v7, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v12, :cond_9

    .line 455
    move-object v12, v7

    check-cast v12, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v12}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 456
    invoke-static {v2, v7, v6}, Landroidx/camera/camera2/pipe/RequestsKt;->writeParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 459
    :cond_a
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const-string v4, "build(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setSessionParameters(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest;)V

    .line 460
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v2, "Api28Compat.createCaptureSession"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 72
    :try_start_8
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 461
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->createCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 462
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 79
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 463
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v0

    :catchall_3
    move-exception v0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_4
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    :goto_8
    const/4 v8, 0x1

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v21, v14

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v26, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v21, v14

    goto/16 :goto_2

    .line 57
    :goto_9
    :try_start_a
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_d

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_b
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    move-object/from16 v2, v26

    .line 59
    invoke-interface {v13, v2, v0, v8}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_c
    :goto_a
    const/4 v5, 0x0

    goto :goto_c

    :cond_d
    move-object/from16 v2, v26

    .line 69
    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    if-nez v4, :cond_10

    .line 70
    instance-of v4, v0, Ljava/lang/SecurityException;

    if-nez v4, :cond_10

    .line 71
    instance-of v4, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v4, :cond_10

    .line 72
    instance-of v4, v0, Ljava/lang/NullPointerException;

    if-eqz v4, :cond_e

    goto :goto_b

    .line 81
    :cond_e
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_f

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 85
    :cond_f
    throw v0

    .line 73
    :cond_10
    :goto_b
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_11
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v4, 0x0

    .line 74
    invoke-interface {v13, v2, v0, v4}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    .line 79
    :goto_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v6

    sub-long v6, v6, v16

    .line 29
    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v6

    .line 65
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v23

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    long-to-double v6, v6

    div-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v6, v7, v20

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, v22

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-nez v5, :cond_14

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create capture session from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Finalizing previous session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-eqz v3, :cond_14

    .line 471
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_14
    if-eqz v5, :cond_15

    move v13, v8

    goto :goto_d

    :cond_15
    const/4 v13, 0x0

    :goto_d
    return v13

    :catchall_6
    move-exception v0

    move-object v6, v7

    move-object v12, v8

    move-object/from16 v21, v14

    goto/16 :goto_1

    .line 79
    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 65
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    long-to-double v2, v2

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v3, v20

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_16
    throw v0
.end method

.method public createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    const-string v8, "format(...)"

    const-string v9, "f ms"

    const-string v10, "%."

    const-string v11, " - "

    const-string v12, "CXCP"

    const-string v0, "outputs"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v13, 0x0

    if-nez v3, :cond_0

    return v13

    :cond_0
    if-eqz v4, :cond_1

    .line 140
    invoke-direct {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 528
    :cond_1
    sget-object v14, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CXCP#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "createCaptureSession"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 58
    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 72
    :try_start_0
    invoke-static {v15}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v21, v14

    :try_start_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 146
    :try_start_2
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    move-object/from16 v22, v0

    .line 148
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v23, v3

    move-object v3, v4

    .line 152
    :try_start_3
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v24, v5

    .line 153
    :try_start_4
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    .line 154
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v25
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v22

    move/from16 v9, v24

    move-object/from16 v6, v25

    .line 148
    :try_start_5
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V

    .line 156
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v2

    .line 146
    invoke-virtual {v8, v7, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 158
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v8, v23

    move-object/from16 v5, v26

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move/from16 v9, v24

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move/from16 v9, v24

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move v9, v5

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_1
    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move v9, v5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v3, v4

    goto :goto_1

    .line 57
    :goto_2
    :try_start_6
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_4

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v14, v13, v0, v9}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_3
    :goto_3
    const/4 v6, 0x0

    goto :goto_5

    .line 69
    :cond_4
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_7

    .line 70
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_7

    .line 71
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_7

    .line 72
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_5

    goto :goto_4

    .line 81
    :cond_5
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_6

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    :cond_6
    throw v0

    .line 73
    :cond_7
    :goto_4
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_8
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v2, 0x0

    .line 74
    invoke-interface {v14, v13, v0, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 79
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v4

    sub-long v4, v4, v16

    .line 29
    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    .line 65
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-double v4, v4

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v5, v20

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v26

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v6, :cond_b

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create capture session from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Finalizing previous session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v3, :cond_b

    .line 166
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_b
    if-eqz v6, :cond_c

    move v13, v9

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :goto_6
    return v13

    :catchall_3
    move-exception v0

    move-object/from16 v27, v9

    move v9, v5

    move-object v5, v8

    move-object/from16 v8, v27

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v21, v9

    move v9, v5

    move-object v5, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v14

    .line 79
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 65
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v2, v2

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v3, v20

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_d
    throw v0
.end method

.method public createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v7, "format(...)"

    const-string v8, "f ms"

    const-string v9, "%."

    const-string v10, " - "

    const-string v11, "CXCP"

    const-string v3, "outputConfigurations"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "stateCallback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v12, 0x0

    if-nez v4, :cond_0

    return v12

    :cond_0
    if-eqz v3, :cond_1

    .line 308
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 528
    :cond_1
    sget-object v13, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CXCP#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "createCaptureSessionByOutputConfigurations"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 58
    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v15

    const-wide v17, 0x412e848000000000L    # 1000000.0

    const/4 v6, 0x0

    .line 72
    :try_start_0
    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v20, v13

    :try_start_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-wide/from16 v21, v15

    .line 315
    :try_start_2
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v15

    .line 316
    check-cast v0, Ljava/lang/Iterable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v16, v7

    .line 1563
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 316
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v4

    .line 1635
    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v6

    move-object v12, v8

    move-object/from16 v7, v16

    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :goto_2
    move-object/from16 v23, v8

    const/4 v8, 0x1

    goto :goto_5

    .line 317
    :cond_2
    :try_start_5
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;

    .line 321
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4

    .line 322
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    .line 323
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v24
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v23, v8

    move-object/from16 v6, v24

    const/4 v8, 0x1

    .line 317
    :try_start_6
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V

    .line 325
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v2

    .line 314
    invoke-static {v15, v7, v0, v2}, Landroidx/camera/camera2/pipe/compat/Api24Compat;->createCaptureSessionByOutputConfigurations(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 327
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v7, v16

    :goto_4
    move-object/from16 v12, v23

    const/4 v5, 0x0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v23, v8

    const/4 v8, 0x1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v23, v8

    const/4 v8, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_2

    .line 57
    :goto_5
    :try_start_7
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_5

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v13, v12, v0, v8}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_4
    :goto_6
    const/4 v6, 0x0

    goto :goto_8

    .line 69
    :cond_5
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_8

    .line 70
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_8

    .line 71
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_8

    .line 72
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_6

    goto :goto_7

    .line 81
    :cond_6
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_7

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 85
    :cond_7
    throw v0

    .line 73
    :cond_8
    :goto_7
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_9
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v2, 0x0

    .line 74
    invoke-interface {v13, v12, v0, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 79
    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v20 .. v20}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v4

    sub-long v4, v4, v21

    .line 29
    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    .line 65
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v23

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-double v4, v4

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v4, v5, v19

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v16

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-nez v6, :cond_c

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create capture session from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Finalizing previous session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v3, :cond_c

    .line 335
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_c
    if-eqz v6, :cond_d

    move v12, v8

    goto :goto_9

    :cond_d
    const/4 v12, 0x0

    :goto_9
    return v12

    :catchall_4
    move-exception v0

    move-object v5, v6

    move-object v12, v8

    :goto_a
    move-wide/from16 v21, v15

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v5, v6

    move-object v12, v8

    move-object/from16 v20, v13

    goto :goto_a

    .line 79
    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v20 .. v20}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long v2, v2, v21

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 65
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v2, v2

    div-double v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v3, v19

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_e
    throw v0
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    const-string v8, "format(...)"

    const-string v9, "f ms"

    const-string v10, "%."

    const-string v11, " - "

    const-string v12, "CXCP"

    const-string v0, "outputs"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v13, 0x0

    if-nez v3, :cond_0

    return v13

    :cond_0
    if-eqz v4, :cond_1

    .line 270
    invoke-direct {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 528
    :cond_1
    sget-object v14, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CXCP#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "createConstrainedHighSpeedCaptureSession"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 58
    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 72
    :try_start_0
    invoke-static {v15}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v21, v14

    :try_start_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 276
    :try_start_2
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    move-object/from16 v22, v0

    .line 278
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v23, v3

    move-object v3, v4

    .line 282
    :try_start_3
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v24, v5

    .line 283
    :try_start_4
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    .line 284
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v25
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v22

    move/from16 v9, v24

    move-object/from16 v6, v25

    .line 278
    :try_start_5
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V

    .line 286
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v2

    .line 276
    invoke-virtual {v8, v7, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 288
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v8, v23

    move-object/from16 v5, v26

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move/from16 v9, v24

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move/from16 v9, v24

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move v9, v5

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_1
    move-object/from16 v26, v8

    move-object/from16 v23, v9

    move v9, v5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v3, v4

    goto :goto_1

    .line 57
    :goto_2
    :try_start_6
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_4

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v14, v13, v0, v9}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_3
    :goto_3
    const/4 v6, 0x0

    goto :goto_5

    .line 69
    :cond_4
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_7

    .line 70
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_7

    .line 71
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_7

    .line 72
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_5

    goto :goto_4

    .line 81
    :cond_5
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_6

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    :cond_6
    throw v0

    .line 73
    :cond_7
    :goto_4
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_8
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v2, 0x0

    .line 74
    invoke-interface {v14, v13, v0, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 79
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v4

    sub-long v4, v4, v16

    .line 29
    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    .line 65
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-double v4, v4

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v5, v20

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v26

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v6, :cond_b

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create capture session from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Finalizing previous session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v3, :cond_b

    .line 296
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_b
    if-eqz v6, :cond_c

    move v13, v9

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :goto_6
    return v13

    :catchall_3
    move-exception v0

    move-object/from16 v27, v9

    move v9, v5

    move-object v5, v8

    move-object/from16 v8, v27

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v21, v9

    move v9, v5

    move-object v5, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v14

    .line 79
    :goto_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 65
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v2, v2

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v3, v20

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_d
    throw v0
.end method

.method public createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z
    .locals 27

    move-object/from16 v1, p0

    const-string v7, "format(...)"

    const-string v8, "f ms"

    const-string v9, "%."

    const-string v10, " - "

    const-string v11, "CXCP"

    const-string v0, "config"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getExtensionStateCallback()Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 177
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getExtensionMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 180
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v13, 0x0

    if-nez v3, :cond_0

    return v13

    :cond_0
    if-eqz v4, :cond_1

    .line 182
    invoke-direct {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 528
    :cond_1
    sget-object v14, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CXCP#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "createExtensionSession"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 58
    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    .line 72
    :try_start_0
    invoke-static {v15}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 187
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getExtensionMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getOutputConfigurations()Ljava/util/List;

    move-result-object v21

    move-object/from16 v3, v21

    check-cast v3, Ljava/lang/Iterable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v21, v14

    .line 1563
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1635
    check-cast v5, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 188
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    .line 1635
    invoke-interface {v14, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v7

    move-object v13, v8

    move-object v8, v9

    :goto_1
    const/4 v9, 0x1

    :goto_2
    const/4 v12, 0x3

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v3, v4

    :goto_3
    move-object/from16 v26, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_8

    .line 189
    :cond_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    move v5, v0

    .line 190
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v3

    move-object v3, v4

    .line 194
    :try_start_5
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4

    move/from16 v24, v5

    .line 195
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    move-object/from16 v25, v6

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v26, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v7, v24

    move-object/from16 v8, v25

    const/4 v9, 0x1

    .line 190
    :try_start_6
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljava/util/concurrent/Executor;)V

    .line 186
    invoke-static {v7, v14, v8, v0}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->newExtensionSessionConfiguration(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)Landroid/hardware/camera2/params/ExtensionSessionConfiguration;

    move-result-object v0

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getPostviewOutputConfiguration()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v2, v4, :cond_4

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->getPostviewOutputConfiguration()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object v2

    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v2, v4}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 207
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api34Compat;->setPostviewOutputConfiguration(Landroid/hardware/camera2/params/ExtensionSessionConfiguration;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v13, v22

    move-object/from16 v8, v23

    move-object/from16 v5, v26

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_8

    .line 206
    :cond_3
    const-string v0, "Failed to unwrap Postview OutputConfiguration"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_4
    :goto_6
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/camera/camera2/pipe/compat/Api31Compat;->createExtensionCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V

    .line 211
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    :goto_7
    const/4 v9, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v21, v14

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v3, v4

    move-object/from16 v26, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v21, v14

    goto/16 :goto_4

    .line 57
    :goto_8
    :try_start_7
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_7

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_5
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v12, v13, v0, v9}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_6
    :goto_9
    const/4 v6, 0x0

    goto :goto_b

    .line 69
    :cond_7
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_a

    .line 70
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_a

    .line 71
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_a

    .line 72
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_8

    goto :goto_a

    .line 81
    :cond_8
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_9

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 85
    :cond_9
    throw v0

    .line 73
    :cond_a
    :goto_a
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_b
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v2, 0x0

    .line 74
    invoke-interface {v12, v13, v0, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    .line 79
    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v4

    sub-long v4, v4, v16

    .line 29
    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    .line 65
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v22

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-double v4, v4

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v5, v20

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v26

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez v6, :cond_e

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create extension session from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Finalizing previous session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v3, :cond_e

    .line 219
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_e
    if-eqz v6, :cond_f

    move v13, v9

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    return v13

    :catchall_4
    move-exception v0

    move-object v5, v7

    move-object v13, v8

    move-object v8, v9

    move-object/from16 v21, v14

    goto/16 :goto_1

    .line 79
    :goto_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 65
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v2, v2

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v3, v20

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_10
    throw v0

    .line 177
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "extensionMode must be set to create Extension session"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "extensionStateCallback must be set to create Extension session"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "format(...)"

    const-string v2, "f ms"

    const-string v3, "%."

    const-string v4, " - "

    const-string v5, "CXCP"

    const-string v6, "inputResult"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    sget-object v6, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CXCP#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "createReprocessCaptureRequest"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v14, 0x1

    .line 72
    :try_start_0
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 529
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 57
    :try_start_3
    instance-of v15, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v15, :cond_2

    .line 58
    sget-object v15, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 58
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v13, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v13, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v12, v11, v0, v14}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v13, v0, Ljava/lang/IllegalArgumentException;

    if-nez v13, :cond_5

    .line 70
    instance-of v13, v0, Ljava/lang/SecurityException;

    if-nez v13, :cond_5

    .line 71
    instance-of v13, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v13, :cond_5

    .line 72
    instance-of v13, v0, Ljava/lang/NullPointerException;

    if-eqz v13, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v11, v0, Ljava/lang/IllegalStateException;

    if-eqz v11, :cond_4

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v0

    .line 73
    :cond_5
    :goto_1
    sget-object v13, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 73
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    .line 74
    invoke-interface {v12, v11, v0, v10}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v8

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v8

    .line 65
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    long-to-double v3, v8

    div-double v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    :catchall_1
    move-exception v0

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v8

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v8

    .line 65
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    long-to-double v3, v8

    div-double v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    throw v0
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    const-string v9, "format(...)"

    const-string v10, "f ms"

    const-string v11, "%."

    const-string v12, " - "

    const-string v13, "CXCP"

    const-string v0, "input"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputs"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v14, 0x0

    if-nez v3, :cond_0

    return v14

    :cond_0
    if-eqz v4, :cond_1

    .line 232
    invoke-direct {v1, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 528
    :cond_1
    sget-object v15, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CXCP#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "createReprocessableCaptureSession"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 72
    :try_start_0
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v21, v15

    :try_start_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 237
    :try_start_2
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    move-object/from16 v22, v0

    .line 240
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v23, v3

    move-object v3, v4

    .line 244
    :try_start_3
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4

    move/from16 v24, v5

    .line 245
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    .line 246
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v25
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v26, v22

    move-object/from16 v22, v10

    move-object/from16 v10, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v23

    move-object/from16 v23, v11

    move v11, v6

    move-object/from16 v6, v25

    .line 240
    :try_start_4
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V

    .line 248
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v2

    .line 237
    invoke-virtual {v10, v7, v8, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 250
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v14, v22

    move-object/from16 v8, v23

    move-object/from16 v5, v26

    const/4 v10, 0x3

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    move-object/from16 v9, v23

    move-object/from16 v23, v11

    :goto_1
    move v11, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    move-object/from16 v9, v23

    move-object/from16 v23, v11

    :goto_2
    move v11, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v9, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object v9, v3

    move-object v3, v4

    goto :goto_2

    .line 57
    :goto_3
    :try_start_5
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_4

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v15, v14, v0, v11}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_3
    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    .line 69
    :cond_4
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_7

    .line 70
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_7

    .line 71
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_7

    .line 72
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_5

    goto :goto_5

    .line 81
    :cond_5
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_6

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 85
    :cond_6
    throw v0

    .line 73
    :cond_7
    :goto_5
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_8
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v2, 0x0

    .line 74
    invoke-interface {v15, v14, v0, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 79
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v4

    sub-long v4, v4, v16

    .line 29
    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    .line 65
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v22

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-double v4, v4

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v5, v20

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v26

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v0, :cond_b

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create reprocess session from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Finalizing previous session"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v3, :cond_b

    .line 258
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_b
    if-eqz v0, :cond_c

    move v14, v11

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    :goto_7
    return v14

    :catchall_3
    move-exception v0

    move-object v14, v10

    move-object v8, v11

    :goto_8
    move v10, v5

    move v11, v6

    move-object v5, v9

    move-object v9, v3

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v14, v10

    move-object v8, v11

    move-object/from16 v21, v15

    goto :goto_8

    .line 79
    :goto_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v21 .. v21}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 65
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v2, v2

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v2, v3, v20

    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_d
    throw v0
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v7, "format(...)"

    const-string v8, "f ms"

    const-string v9, "%."

    const-string v10, " - "

    const-string v11, "CXCP"

    const-string v3, "inputConfig"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "outputs"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "stateCallback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->checkAndSetStateCallback(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    const/4 v12, 0x0

    if-nez v5, :cond_0

    return v12

    :cond_0
    if-eqz v3, :cond_1

    .line 348
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    .line 528
    :cond_1
    sget-object v13, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CXCP#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "createReprocessableCaptureSessionByConfigurations"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 58
    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v15

    const-wide v17, 0x412e848000000000L    # 1000000.0

    .line 72
    :try_start_0
    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v20, v13

    :try_start_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-wide/from16 v21, v15

    .line 354
    :try_start_2
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v16, v7

    .line 355
    :try_start_3
    new-instance v7, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->getFormat()I

    move-result v4

    invoke-direct {v7, v5, v6, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 356
    check-cast v0, Ljava/lang/Iterable;

    .line 1563
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_2

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1635
    check-cast v5, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 356
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v5

    .line 1635
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v13, v8

    move-object v8, v9

    move-object/from16 v5, v16

    :goto_1
    const/4 v9, 0x1

    :goto_2
    const/4 v12, 0x3

    goto/16 :goto_b

    :catch_0
    move-exception v0

    :goto_3
    move-object/from16 v25, v8

    move-object/from16 v23, v9

    const/4 v9, 0x1

    goto :goto_6

    .line 357
    :cond_2
    :try_start_5
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;

    move-object v5, v4

    .line 361
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v4

    move-object v6, v5

    .line 362
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getInteropCaptureSessionListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    move-result-object v5

    .line 363
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v24
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v25, v8

    move-object/from16 v23, v9

    const/4 v9, 0x1

    move-object v8, v6

    move-object/from16 v6, v24

    .line 357
    :try_start_6
    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V

    .line 365
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getThreads$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    move-result-object v2

    .line 353
    invoke-static {v15, v7, v8, v0, v2}, Landroidx/camera/camera2/pipe/compat/Api24Compat;->createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 367
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    :goto_4
    move-object/from16 v5, v16

    move-object/from16 v8, v23

    move-object/from16 v13, v25

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v25, v8

    move-object/from16 v23, v9

    const/4 v9, 0x1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_3

    .line 57
    :goto_6
    :try_start_7
    instance-of v2, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v2, :cond_5

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v13, v12, v0, v9}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_4
    :goto_7
    const/4 v0, 0x0

    goto :goto_9

    .line 69
    :cond_5
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_8

    .line 70
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_8

    .line 71
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_8

    .line 72
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_6

    goto :goto_8

    .line 81
    :cond_6
    instance-of v2, v0, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_7

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 85
    :cond_7
    throw v0

    .line 73
    :cond_8
    :goto_8
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_9
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v2, 0x0

    .line 74
    invoke-interface {v13, v12, v0, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 79
    :goto_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v20 .. v20}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v4

    sub-long v4, v4, v21

    .line 29
    invoke-static {v4, v5}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v4

    .line 65
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v25

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    long-to-double v4, v4

    div-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v4, v5, v19

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v16

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-nez v0, :cond_c

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create reprocess session from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Finalizing previous session"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v3, :cond_c

    .line 375
    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_c
    if-eqz v0, :cond_d

    move v12, v9

    goto :goto_a

    :cond_d
    const/4 v12, 0x0

    :goto_a
    return v12

    :catchall_4
    move-exception v0

    move-object v5, v7

    move-object v13, v8

    move-object v8, v9

    move-wide/from16 v21, v15

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v5, v7

    move-object/from16 v20, v13

    move-wide/from16 v21, v15

    const/4 v12, 0x3

    move-object v13, v8

    move-object v8, v9

    const/4 v9, 0x1

    .line 79
    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual/range {v20 .. v20}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v2

    sub-long v2, v2, v21

    .line 29
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v2

    .line 65
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v2, v2

    div-double v2, v2, v17

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v3, v19

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_e
    throw v0
.end method

.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public onCameraAudioRestrictionUpdated-LwUUkyU(I)V
    .locals 5

    .line 496
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string/jumbo v0, "setCameraAudioRestriction"

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :try_start_1
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->access$getCameraDevice$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/compat/Api30Compat;->setCameraAudioRestriction(Landroid/hardware/camera2/CameraDevice;I)V

    .line 499
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    instance-of v2, p1, Landroid/hardware/camera2/CameraAccessException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "CXCP"

    if-eqz v2, :cond_1

    .line 58
    :try_start_3
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p1

    const/4 v2, 0x1

    .line 59
    invoke-interface {v1, v0, p1, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 69
    :cond_1
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_4

    .line 70
    instance-of v2, p1, Ljava/lang/SecurityException;

    if-nez v2, :cond_4

    .line 71
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_4

    .line 72
    instance-of v2, p1, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    .line 82
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 82
    const-string p1, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :cond_3
    throw p1

    .line 73
    :cond_4
    :goto_0
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_5
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p1

    const/4 v2, 0x0

    .line 74
    invoke-interface {v1, v0, p1, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method

.method public onDeviceClosed()V
    .locals 2

    .line 511
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    if-eqz v0, :cond_0

    .line 513
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionFinalizedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_0
    return-void

    .line 511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDeviceClosing()V
    .locals 3

    .line 504
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onSessionDisconnectedWithTrace(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidCameraDevice(camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    const-class v0, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const-string v0, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.AndroidCameraDevice.unwrapAs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
