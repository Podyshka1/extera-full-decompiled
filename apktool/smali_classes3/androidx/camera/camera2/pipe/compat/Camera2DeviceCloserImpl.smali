.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;


# instance fields
.field private final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field private final retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->Companion:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;)V
    .locals 1

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2Quirks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingCameraStateOpener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 49
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 50
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    return-void
.end method

.method public static final synthetic access$closeCameraDevice(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    return-void
.end method

.method public static final synthetic access$createCaptureSession(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    return-void
.end method

.method public static final synthetic access$getRetryingCameraStateOpener$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->retryingCameraStateOpener:Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    return-object p0
.end method

.method private final closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V
    .locals 9

    .line 175
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v3

    const-string v4, "CXCP"

    if-eqz v3, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeCameraDevice("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 178
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    new-instance v6, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v3, v7}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;-><init>(Landroid/hardware/camera2/CameraDevice;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    const-wide/16 v7, 0x1b58

    invoke-virtual {v5, v7, v8, v6}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Unit;

    if-nez v5, :cond_1

    .line 82
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close CameraDevice("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") after 7000ms. The camera is likely in a bad state."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/CameraId;->Companion:Landroidx/camera/camera2/pipe/CameraId$Companion;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldWaitForCameraDeviceOnClosed-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waiting for OnClosed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v0, 0x7d0

    .line 195
    invoke-virtual {p2, v0, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->awaitCameraDeviceClosed$camera_camera2_pipe(J)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 50
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received OnClosed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_3
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to close "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after 2000ms!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private final createCaptureSession(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
    .locals 8

    .line 204
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 205
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 206
    invoke-static {v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object v3

    .line 207
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 209
    new-instance v6, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;

    invoke-direct {v6, v4, v3, v2, v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlinx/atomicfu/AtomicBoolean;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 245
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {p1, v7, v6}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureSession(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void

    .line 248
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CXCP"

    .line 249
    const-string v4, "Failed to create a blank capture session! Surfaces may not be disconnected properly."

    .line 82
    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    invoke-virtual {v3, v1, v5}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 254
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    return-void
.end method

.method private final handleQuirksBeforeClosing(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;ZZ)Lkotlin/Pair;
    .locals 4

    .line 143
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v1

    const-string v2, "CXCP"

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQuirksBeforeClosing("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_2

    .line 147
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p1, "Camera2DeviceCloserImpl#reopenCameraDevice"

    .line 72
    :try_start_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    const-string p1, "Reopening camera device"

    .line 50
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 149
    :cond_1
    :goto_0
    invoke-static {p0, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->access$closeCameraDevice(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    .line 150
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->access$getRetryingCameraStateOpener$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;)Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;

    move-result-object p1

    invoke-interface {p1, v1, p0}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;->openAndAwaitCameraWithRetry-0r8Bogc(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1

    .line 153
    :cond_2
    new-instance p2, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    invoke-direct {p2, p1, p3}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    move-object p1, p2

    .line 155
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getCameraDeviceWrapper()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getAndroidCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_6

    :cond_3
    if-eqz p5, :cond_6

    .line 161
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p2, "Camera2DeviceCloserImpl#createCaptureSession"

    .line 72
    :try_start_1
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Creating an empty capture session before closing "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 163
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getCameraDeviceWrapper()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->access$createCaptureSession(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 164
    const-string p2, "Created an empty capture session."

    .line 50
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_5

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1

    .line 168
    :cond_6
    :goto_5
    new-instance p2, Lkotlin/Pair;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getCameraDeviceWrapper()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->getAndroidCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 82
    :cond_7
    :goto_6
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 156
    const-string p1, "Failed to retain an opened camera device!"

    .line 82
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;ZZ)V
    .locals 4

    const-string v0, "androidCameraState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioRestrictionController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-class v0, Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraDevice;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 63
    sget-object v2, Landroidx/camera/camera2/pipe/CameraId;->Companion:Landroidx/camera/camera2/pipe/CameraId$Companion;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unwrapped camera device has camera ID "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", but the wrapped camera device has camera ID "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 76
    :cond_2
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt p2, v2, :cond_3

    .line 77
    invoke-interface {p4, p1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;->removeListener(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;)V

    :cond_3
    move-object p2, p1

    move-object p4, p3

    move-object p3, v1

    move-object p1, p0

    .line 81
    invoke-direct/range {p1 .. p6}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->handleQuirksBeforeClosing(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;ZZ)Lkotlin/Pair;

    move-result-object p6

    if-nez p6, :cond_5

    .line 89
    sget-object p5, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result p5

    if-eqz p5, :cond_4

    const-string p5, "CXCP"

    .line 89
    const-string p6, "Failed to handle quirks before closing the camera device!"

    .line 82
    invoke-static {p5, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_4
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosing()V

    .line 91
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosed()V

    .line 92
    invoke-virtual {p4, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V

    return-void

    .line 96
    :cond_5
    invoke-virtual {p6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-virtual {p6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    .line 104
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosing()V

    .line 105
    invoke-direct {p0, v0, p6}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    .line 106
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onDeviceClosed()V

    if-eqz p5, :cond_8

    .line 110
    invoke-virtual {p4, p3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V

    return-void

    .line 98
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Required value was null."

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    move-object p1, p0

    move-object p4, p3

    if-eqz p2, :cond_8

    .line 117
    invoke-direct {p0, p2, p4}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V

    :cond_8
    return-void
.end method
