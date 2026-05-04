.class public final Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    return-void
.end method

.method private final createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current capture session is running on extensions mode which isn\'t allowed to invoke the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string p1, " function!"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abortCaptures()V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abortCaptures"

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capture"

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 0

    const-string p2, "requests"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "captureBurst"

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "close"

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "finalizeOutputConfigurations"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getDevice"

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getInputSurface"

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReprocessable()Z
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "isReprocessable"

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prepare"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 0

    const-string p2, "requests"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "setRepeatingBurst"

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "setRepeatingRequest"

    invoke-direct {p0, p2}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopRepeating()V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stopRepeating"

    invoke-direct {p0, v1}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;->createExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
