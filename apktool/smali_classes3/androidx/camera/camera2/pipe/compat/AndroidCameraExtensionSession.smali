.class public Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;,
        Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;
    }
.end annotation


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

.field private final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private final extensionSessionMap:Ljava/util/Map;

.field private final frameNumbers:Lkotlinx/atomicfu/AtomicLong;

.field private final id:I


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraExtensionSession"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 146
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    .line 147
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 148
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 151
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraInterop;->nextCameraCaptureSessionId-159jkk4$camera_camera2_pipe()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->id:I

    const-wide/16 p1, 0x0

    .line 152
    invoke-static {p1, p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->frameNumbers:Lkotlinx/atomicfu/AtomicLong;

    .line 153
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->extensionSessionMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    return-object p0
.end method

.method public static final synthetic access$getExtensionSessionMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/Map;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->extensionSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getFrameNumbers$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Lkotlinx/atomicfu/AtomicLong;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->frameNumbers:Lkotlinx/atomicfu/AtomicLong;

    return-object p0
.end method


# virtual methods
.method public abortCaptures()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 160
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    .line 161
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    .line 163
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 164
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    .line 165
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    .line 164
    invoke-direct {v4, p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;)V

    .line 161
    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 169
    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    .line 171
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 172
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;

    .line 173
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    .line 174
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 172
    invoke-direct {v4, p0, p2, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;Ljava/util/Map;)V

    .line 169
    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p1

    .line 177
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 57
    :goto_1
    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "CXCP"

    if-eqz p2, :cond_2

    .line 58
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    sget-object p2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p1

    const/4 p2, 0x1

    .line 59
    invoke-interface {v1, v0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_3

    .line 69
    :cond_2
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_5

    .line 70
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_5

    .line 71
    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-nez p2, :cond_5

    .line 72
    instance-of p2, p1, Ljava/lang/NullPointerException;

    if-eqz p2, :cond_3

    goto :goto_2

    .line 81
    :cond_3
    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-eqz p2, :cond_4

    .line 82
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 82
    const-string p1, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    :cond_4
    throw p1

    .line 73
    :cond_5
    :goto_2
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute call: Unexpected exception: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p1

    const/4 p2, 0x0

    .line 74
    invoke-interface {v1, v0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 222
    invoke-virtual {p0, v0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 252
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraExtensionSession;->close()V

    return-void
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)Z
    .locals 1

    const-string v0, "outputConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 240
    const-string v0, "CameraExtensionSession does not support finalizeOutputConfigurations()"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    return-object v0
.end method

.method public getId-159jkk4()I
    .locals 1

    .line 150
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->id:I

    return v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CameraExtensionSession does not support setRepeatingBurst for more than oneCaptureRequest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
    .locals 6

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 185
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    .line 186
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    .line 188
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 189
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;

    .line 190
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    .line 189
    invoke-direct {v4, p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;)V

    .line 186
    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 194
    :cond_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v2

    .line 196
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCallbackExecutor$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 197
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;

    .line 198
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    .line 199
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 197
    invoke-direct {v4, p0, p2, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;Ljava/util/Map;)V

    .line 194
    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraExtensionSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I

    move-result p1

    .line 202
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 57
    :goto_1
    instance-of p2, p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "CXCP"

    if-eqz p2, :cond_2

    .line 58
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    sget-object p2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p1

    const/4 p2, 0x1

    .line 59
    invoke-interface {v1, v0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_3

    .line 69
    :cond_2
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-nez p2, :cond_5

    .line 70
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_5

    .line 71
    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    if-nez p2, :cond_5

    .line 72
    instance-of p2, p1, Ljava/lang/NullPointerException;

    if-eqz p2, :cond_3

    goto :goto_2

    .line 81
    :cond_3
    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-eqz p2, :cond_4

    .line 82
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 82
    const-string p1, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    :cond_4
    throw p1

    .line 73
    :cond_5
    :goto_2
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute call: Unexpected exception: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p1

    const/4 p2, 0x0

    .line 74
    invoke-interface {v1, v0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public stopRepeating()Z
    .locals 9

    .line 206
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 207
    :try_start_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getCameraExtensionSession$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Landroid/hardware/camera2/CameraExtensionSession;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraExtensionSession;->stopRepeating()V

    .line 208
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    .line 57
    instance-of v5, v4, Landroid/hardware/camera2/CameraAccessException;

    const/4 v6, 0x0

    const-string v7, "CXCP"

    if-eqz v5, :cond_2

    .line 58
    sget-object v5, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v5, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast v4, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v5, v4}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v4

    .line 59
    invoke-interface {v1, v0, v4, v3}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_1
    :goto_0
    move-object v0, v6

    goto :goto_2

    .line 69
    :cond_2
    instance-of v5, v4, Ljava/lang/IllegalArgumentException;

    if-nez v5, :cond_5

    .line 70
    instance-of v5, v4, Ljava/lang/SecurityException;

    if-nez v5, :cond_5

    .line 71
    instance-of v5, v4, Ljava/lang/UnsupportedOperationException;

    if-nez v5, :cond_5

    .line 72
    instance-of v5, v4, Ljava/lang/NullPointerException;

    if-eqz v5, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    instance-of v0, v4, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    throw v4

    .line 73
    :cond_5
    :goto_1
    sget-object v5, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_6
    sget-object v4, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result v4

    .line 74
    invoke-interface {v1, v0, v4, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    return v2
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Landroidx/camera/camera2/impl/CameraCallbackMap$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->cameraExtensionSession:Landroid/hardware/camera2/CameraExtensionSession;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
