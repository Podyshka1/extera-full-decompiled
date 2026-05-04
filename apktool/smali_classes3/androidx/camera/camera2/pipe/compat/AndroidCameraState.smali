.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;
    }
.end annotation


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;

.field private final attemptNumber:I

.field private final attemptTimestampNanos:J

.field private final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

.field private final camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private final cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraId:Ljava/lang/String;

.field private final debugId:I

.field private final interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

.field private final lock:Ljava/lang/Object;

.field private final metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field private opening:Z

.field private pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

.field private final requestTimestampNanos:J

.field private shouldDelayFinalizing:Z

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field private final timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;)V
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeSource"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2DeviceCloser"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2Quirks"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioRestrictionController"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 243
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 245
    iput p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    .line 246
    iput-wide p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    .line 247
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 248
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 249
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    .line 250
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 251
    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 252
    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    .line 253
    iput-object p12, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 254
    iput-object p13, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    .line 256
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->getAndroidCameraDebugIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->debugId:I

    .line 257
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    .line 265
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    .line 270
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 275
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Opening "

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string p7, "CXCP"

    invoke-static {p7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p3, p2, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 70
    invoke-interface {p6}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide p4

    .line 276
    :goto_0
    iput-wide p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/TimeSource;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;)V

    return-void
.end method

.method public static final synthetic access$getAttemptNumber$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)I
    .locals 0

    .line 242
    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    return p0
.end method

.method public static final synthetic access$getAttemptTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J
    .locals 2

    .line 242
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    return-wide v0
.end method

.method public static final synthetic access$getRequestTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J
    .locals 2

    .line 242
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    return-wide v0
.end method

.method private final closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V
    .locals 10

    .line 465
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 467
    instance-of v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 468
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->getCameraDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 474
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 476
    :try_start_1
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 477
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_4

    :cond_1
    move-object p2, v2

    .line 474
    :goto_1
    monitor-exit v1

    if-eqz p2, :cond_5

    .line 486
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    if-eq v0, v1, :cond_2

    .line 487
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 488
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 489
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v3

    const/4 v5, 0x0

    .line 487
    invoke-interface {v0, v1, v3, v5}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    .line 493
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    if-eq v0, v1, :cond_4

    .line 497
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 499
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldDelayFinalizing:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1

    .line 502
    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    .line 506
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    .line 508
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 509
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 510
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v2

    .line 508
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v9

    move-object v6, p0

    move-object v5, p1

    .line 502
    invoke-interface/range {v3 .. v9}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;->closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZ)V

    goto :goto_3

    :cond_4
    move-object v6, p0

    .line 515
    :goto_3
    iget-object p1, v6, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v6, p0

    return-void

    :catchall_2
    move-exception v0

    move-object v6, p0

    move-object p1, v0

    .line 474
    :goto_4
    monitor-exit v1

    throw p1
.end method

.method private final closeWith-8PWMtlg(Ljava/lang/Throwable;I)V
    .locals 8

    .line 456
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 457
    sget-object v1, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 458
    invoke-static {p2}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    move-object v5, p1

    .line 456
    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    .line 454
    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    return-void
.end method

.method private final computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;
    .locals 19

    move-object/from16 v0, p0

    .line 520
    sget-object v1, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v1

    .line 521
    iget-object v3, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 522
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getClosingTimestamp-vQl9yQU()J

    move-result-wide v4

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 523
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    sub-long/2addr v7, v9

    .line 29
    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v7

    .line 523
    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v7

    move-object v12, v7

    goto :goto_0

    :cond_0
    move-object v12, v6

    :goto_0
    if-eqz v3, :cond_1

    .line 524
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    sub-long/2addr v7, v9

    .line 29
    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v7

    .line 524
    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v7

    move-object v14, v7

    goto :goto_1

    :cond_1
    move-object v14, v6

    :goto_1
    if-nez v3, :cond_2

    :goto_2
    move-object v15, v6

    goto :goto_3

    .line 530
    :cond_2
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/TimestampNs;->unbox-impl()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 29
    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v6

    goto :goto_2

    :goto_3
    sub-long/2addr v1, v4

    .line 29
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v1

    .line 536
    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getReason()Landroidx/camera/camera2/pipe/compat/ClosedReason;

    move-result-object v10

    .line 538
    iget v3, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    add-int/lit8 v3, v3, -0x1

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v17

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getException()Ljava/lang/Throwable;

    move-result-object v13

    .line 535
    new-instance v8, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 538
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 542
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/DurationNs;

    move-result-object v16

    const/16 v18, 0x0

    .line 535
    invoke-direct/range {v8 .. v18}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method private final shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z
    .locals 0

    .line 581
    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCreateEmptyCaptureSessionBeforeClosing-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z
    .locals 0

    .line 567
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 568
    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final awaitCameraDeviceClosed$camera_camera2_pipe(J)Z
    .locals 2

    .line 301
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 297
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$awaitClosed$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$awaitClosed$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final close()V
    .locals 11

    .line 285
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 287
    instance-of v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->getCameraDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 293
    const-class v1, Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/CameraDevice;

    :cond_1
    new-instance v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v4, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v2, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    return-void
.end method

.method public final closeWith$camera_camera2_pipe(Ljava/lang/Throwable;)V
    .locals 2

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Ljava/lang/Throwable;)I

    move-result v1

    .line 447
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_UNDETERMINED-v7Vf74A()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/CameraError;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith-8PWMtlg(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public final getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 272
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    const-string v0, "cameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onClosed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 425
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldDelayFinalizing:Z

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CXCP"

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#onClosed: Delaying finalizing."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 425
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 430
    :cond_2
    :try_start_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit v1

    .line 431
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V

    return-void

    .line 425
    :goto_1
    monitor-exit v1

    throw p1

    .line 421
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9

    const-string v0, "cameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 392
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 397
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 398
    sget-object v2, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 399
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_DISCONNECTED-v7Vf74A()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 397
    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 395
    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    .line 402
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 390
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 9

    const-string v0, "cameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onError-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 409
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 414
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v2, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_ERROR:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(I)I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 412
    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    .line 416
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 407
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10

    const-string v0, "cameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#onFinalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 436
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onFinalized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    new-instance v2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    sget-object v3, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;JLandroidx/camera/camera2/pipe/CameraError;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    .line 439
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 79
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 16

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    const-string v0, "cameraDevice"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    sget-object v0, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/TimeSource;

    .line 70
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/TimeSource;->now-vQl9yQU()J

    move-result-wide v0

    .line 306
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->box-impl(J)Landroidx/camera/camera2/pipe/core/TimestampNs;

    move-result-object v4

    iput-object v4, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 308
    sget-object v4, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#onOpened"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 309
    sget-object v4, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v4, "CXCP"

    .line 310
    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getRequestTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 29
    invoke-static {v6, v7}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v6

    .line 311
    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getAttemptTimestampNanos$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)J

    move-result-wide v10

    sub-long/2addr v0, v10

    .line 29
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v0

    .line 312
    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getAttemptNumber$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)I

    move-result v10

    const-wide v11, 0x412e848000000000L    # 1000000.0

    const/4 v13, 0x3

    if-ne v10, v5, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "f ms"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    long-to-double v6, v6

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "format(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 315
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Opened "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "%."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "f ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    long-to-double v6, v6

    div-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v6, v7, v8

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v14, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "format(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "f ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    long-to-double v0, v0

    div-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v8

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, " total) after "

    .line 315
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->access$getAttemptNumber$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)I

    move-result v0

    .line 315
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, " attempts."

    .line 315
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    if-nez v0, :cond_2

    .line 325
    iput-boolean v5, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 323
    :cond_2
    :goto_1
    monitor-exit v1

    .line 329
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    :cond_3
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 331
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    .line 334
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    .line 336
    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 337
    iget-object v6, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 338
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v7

    .line 336
    invoke-direct {v3, v5, v6, v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v5

    .line 341
    iget-object v6, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 342
    iget-object v7, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 343
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    .line 341
    invoke-direct {v3, v6, v7, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 331
    invoke-static/range {v0 .. v8}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser$-CC;->closeCamera$default(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZILjava/lang/Object;)V

    move-object v10, v3

    return-void

    :cond_4
    move-object v10, v3

    .line 352
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 353
    iget-object v1, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 355
    iget-object v3, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 356
    iget-object v4, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 357
    iget-object v5, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    .line 358
    iget-object v6, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    const/4 v7, 0x0

    move-object/from16 v2, p1

    .line 352
    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/Threads;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 360
    iget-object v1, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->addListener(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;)V

    .line 361
    iget-object v1, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    invoke-direct {v2, v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 365
    iget-object v1, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_1
    iput-boolean v8, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z

    .line 367
    iget-object v7, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    monitor-exit v1

    if-eqz v7, :cond_5

    .line 370
    iget-object v1, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object v1, v0

    .line 371
    iget-object v0, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;

    .line 375
    iget-object v4, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;

    .line 377
    iget-object v2, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    iget-object v3, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v5

    invoke-direct {v10, v2, v3, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldReopenCameraWhenClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v5

    .line 379
    iget-object v2, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 380
    iget-object v3, v10, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 381
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v6

    .line 379
    invoke-direct {v10, v2, v3, v6}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    move-result v6

    move-object/from16 v2, p1

    move-object v3, v10

    .line 371
    invoke-interface/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;->closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZ)V

    .line 384
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-direct {v3, v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-object v3, v10

    .line 79
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v10

    .line 365
    monitor-exit v1

    throw v0

    .line 323
    :goto_3
    monitor-exit v1

    throw v0

    .line 304
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraState-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
