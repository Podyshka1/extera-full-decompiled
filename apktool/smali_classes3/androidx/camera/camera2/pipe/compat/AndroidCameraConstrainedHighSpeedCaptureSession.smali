.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;
.super Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraConstrainedHighSpeedCaptureSessionWrapper;


# instance fields
.field private final session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "session"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroid/os/Handler;)V

    .line 349
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    return-void
.end method

.method public static final synthetic access$getSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;)Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;
    .locals 0

    .line 346
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    return-object p0
.end method


# virtual methods
.method public createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 3

    const-string v0, "Failed to createHighSpeedRequestList from "

    const-string v1, "CXCP"

    const-string v2, "request"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    :try_start_0
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v2, "CXCP#createHighSpeedRequestList"
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 360
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;->access$getSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;)Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    :catch_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " because the output surface was not available."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :catch_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " because the output surface was destroyed before calling createHighSpeedRequestList."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :catch_2
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to createHighSpeedRequestList. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " may be closed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    const-class v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    return-object p1

    .line 398
    :cond_0
    invoke-super {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
