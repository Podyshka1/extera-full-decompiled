.class public Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private final cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private final id:I


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraCaptureSession"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 253
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 254
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 255
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->callbackHandler:Landroid/os/Handler;

    .line 297
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraInterop;->nextCameraCaptureSessionId-159jkk4$camera_camera2_pipe()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->id:I

    return-void
.end method

.method public static final synthetic access$getCallbackHandler$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/os/Handler;
    .locals 0

    .line 251
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->callbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 251
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public static final synthetic access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;
    .locals 0

    .line 251
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    return-object p0
.end method


# virtual methods
.method public abortCaptures()Z
    .locals 18

    .line 259
    const-string v1, "format(...)"

    const-string v2, "f ms"

    const-string v3, "%."

    const-string v4, " - "

    const-string v5, "CXCP"

    .line 337
    sget-object v6, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CXCP#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "abortCaptures"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v7

    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v8

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 72
    :try_start_0
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    :try_start_1
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
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

    const-string v12, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 71
    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v12, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v12, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v11, v10, v0, v14}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v12, v0, Ljava/lang/IllegalArgumentException;

    if-nez v12, :cond_5

    .line 70
    instance-of v12, v0, Ljava/lang/SecurityException;

    if-nez v12, :cond_5

    .line 71
    instance-of v12, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v12, :cond_5

    .line 72
    instance-of v12, v0, Ljava/lang/NullPointerException;

    if-eqz v12, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v10, v0, Ljava/lang/IllegalStateException;

    if-eqz v10, :cond_4

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
    sget-object v12, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 73
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    .line 74
    invoke-interface {v11, v10, v0, v13}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
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

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 29
    invoke-static {v10, v11}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

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

    aput-object v3, v4, v13

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
    if-eqz v0, :cond_8

    move v13, v14

    :cond_8
    return v13

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

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 29
    invoke-static {v10, v11}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v8

    .line 65
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_9

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

    aput-object v3, v4, v13

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
    :cond_9
    throw v0
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "format(...)"

    const-string v3, "f ms"

    const-string v4, "%."

    const-string v5, " - "

    const-string v6, "CXCP"

    const-string v7, "request"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "listener"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sget-object v7, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CXCP#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "capture"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v9

    invoke-interface {v9}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v9

    const/4 v15, 0x1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 72
    :try_start_0
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v13

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCallbackHandler$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v14, v0, v1, v11}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 57
    :try_start_2
    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v12, v13, v0, v15}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_5

    .line 70
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_5

    .line 71
    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v1, :cond_5

    .line 72
    instance-of v1, v0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v0

    .line 73
    :cond_5
    :goto_1
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v1, 0x0

    .line 74
    invoke-interface {v12, v13, v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    throw v0
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "format(...)"

    const-string v3, "f ms"

    const-string v4, "%."

    const-string v5, " - "

    const-string v6, "CXCP"

    const-string v7, "requests"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "listener"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sget-object v7, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CXCP#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "captureBurst"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v9

    invoke-interface {v9}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v9

    const/4 v15, 0x1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 72
    :try_start_0
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v13

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCallbackHandler$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v14, v0, v1, v11}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 57
    :try_start_2
    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v12, v13, v0, v15}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_5

    .line 70
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_5

    .line 71
    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v1, :cond_5

    .line 72
    instance-of v1, v0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v0

    .line 73
    :cond_5
    :goto_1
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v1, 0x0

    .line 74
    invoke-interface {v12, v13, v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    throw v0
.end method

.method public close()V
    .locals 1

    .line 331
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    return-void
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)Z
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "format(...)"

    const-string v2, "f ms"

    const-string v3, "%."

    const-string v4, " - "

    const-string v5, "CXCP"

    const-string v6, "outputConfigs"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_b

    .line 337
    sget-object v6, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CXCP#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "finalizeOutputConfigurations"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v8

    invoke-interface {v8}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v8

    .line 72
    :try_start_0
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v17, 0x412e848000000000L    # 1000000.0

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v15

    .line 318
    check-cast v0, Ljava/lang/Iterable;

    .line 1563
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1635
    check-cast v13, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 318
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-interface {v13, v14}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v13

    .line 1635
    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_1

    .line 316
    :cond_0
    invoke-static {v15, v12}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->finalizeOutputConfigurations(Landroid/hardware/camera2/CameraCaptureSession;Ljava/util/List;)V

    .line 320
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 57
    :goto_1
    :try_start_3
    instance-of v12, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v12, :cond_3

    .line 58
    sget-object v12, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 58
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 71
    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    sget-object v12, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v12, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    const/4 v12, 0x1

    .line 59
    invoke-interface {v11, v10, v0, v12}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    .line 69
    :cond_3
    instance-of v12, v0, Ljava/lang/IllegalArgumentException;

    if-nez v12, :cond_6

    .line 70
    instance-of v12, v0, Ljava/lang/SecurityException;

    if-nez v12, :cond_6

    .line 71
    instance-of v12, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v12, :cond_6

    .line 72
    instance-of v12, v0, Ljava/lang/NullPointerException;

    if-eqz v12, :cond_4

    goto :goto_3

    .line 81
    :cond_4
    instance-of v10, v0, Ljava/lang/IllegalStateException;

    if-eqz v10, :cond_5

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 85
    :cond_5
    throw v0

    .line 73
    :cond_6
    :goto_3
    sget-object v12, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 73
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_7
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v12, 0x0

    .line 74
    invoke-interface {v11, v10, v0, v12}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 79
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 29
    invoke-static {v10, v11}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

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

    div-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v4, v19

    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

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

    :cond_8
    if-eqz v0, :cond_9

    const/4 v13, 0x1

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    return v13

    :catchall_1
    move-exception v0

    const-wide v17, 0x412e848000000000L    # 1000000.0

    .line 79
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 29
    invoke-static {v10, v11}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v8

    .line 65
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_a

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

    div-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v4, v19

    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

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
    :cond_a
    throw v0

    .line 309
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to call finalizeOutputConfigurations before O is not supported and may lead to to unexpected behavior if an application is expects this call to succeed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 1

    .line 252
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    return-object v0
.end method

.method public getId-159jkk4()I
    .locals 1

    .line 296
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->id:I

    return v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 303
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "format(...)"

    const-string v3, "f ms"

    const-string v4, "%."

    const-string v5, " - "

    const-string v6, "CXCP"

    const-string v7, "requests"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "listener"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sget-object v7, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CXCP#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setRepeatingBurst"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v9

    invoke-interface {v9}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v9

    const/4 v15, 0x1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 72
    :try_start_0
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v13

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCallbackHandler$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v14, v0, v1, v11}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 57
    :try_start_2
    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v12, v13, v0, v15}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_5

    .line 70
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_5

    .line 71
    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v1, :cond_5

    .line 72
    instance-of v1, v0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v0

    .line 73
    :cond_5
    :goto_1
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v1, 0x0

    .line 74
    invoke-interface {v12, v13, v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    throw v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "format(...)"

    const-string v3, "f ms"

    const-string v4, "%."

    const-string v5, " - "

    const-string v6, "CXCP"

    const-string v7, "request"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "listener"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    sget-object v7, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CXCP#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setRepeatingRequest"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v9

    invoke-interface {v9}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v9

    const/4 v15, 0x1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 72
    :try_start_0
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v13

    invoke-interface {v13}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCallbackHandler$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v14, v0, v1, v11}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 57
    :try_start_2
    instance-of v1, v0, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v12, v13, v0, v15}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_5

    .line 70
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_5

    .line 71
    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v1, :cond_5

    .line 72
    instance-of v1, v0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v0

    .line 73
    :cond_5
    :goto_1
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    const/4 v1, 0x0

    .line 74
    invoke-interface {v12, v13, v0, v1}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    .line 79
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 29
    invoke-static {v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v9

    .line 65
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/camera/camera2/pipe/core/Timestamps;->INSTANCE:Landroidx/camera/camera2/pipe/core/Timestamps;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v9

    div-double v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    invoke-static {v5, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    throw v0
.end method

.method public stopRepeating()Z
    .locals 18

    .line 294
    const-string v1, "format(...)"

    const-string v2, "f ms"

    const-string v3, "%."

    const-string v4, " - "

    const-string v5, "CXCP"

    .line 337
    sget-object v6, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CXCP#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stopRepeating"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v7

    invoke-interface {v7}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Debug;->getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;->now-vQl9yQU()J

    move-result-wide v8

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 72
    :try_start_0
    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v16, 0x412e848000000000L    # 1000000.0

    :try_start_1
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraErrorListener$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->access$getCameraCaptureSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
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

    const-string v12, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 71
    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v12, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v12, v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    .line 59
    invoke-interface {v11, v10, v0, v14}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_2
    instance-of v12, v0, Ljava/lang/IllegalArgumentException;

    if-nez v12, :cond_5

    .line 70
    instance-of v12, v0, Ljava/lang/SecurityException;

    if-nez v12, :cond_5

    .line 71
    instance-of v12, v0, Ljava/lang/UnsupportedOperationException;

    if-nez v12, :cond_5

    .line 72
    instance-of v12, v0, Ljava/lang/NullPointerException;

    if-eqz v12, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v10, v0, Ljava/lang/IllegalStateException;

    if-eqz v10, :cond_4

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
    sget-object v12, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 73
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v0

    .line 74
    invoke-interface {v11, v10, v0, v13}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
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

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 29
    invoke-static {v10, v11}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

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

    aput-object v3, v4, v13

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
    if-eqz v0, :cond_8

    move v13, v14

    :cond_8
    return v13

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

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 29
    invoke-static {v10, v11}, Landroidx/camera/camera2/pipe/core/DurationNs;->constructor-impl(J)J

    move-result-wide v8

    .line 65
    sget-object v6, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v6

    if-eqz v6, :cond_9

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

    aput-object v3, v4, v13

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
    :cond_9
    throw v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
