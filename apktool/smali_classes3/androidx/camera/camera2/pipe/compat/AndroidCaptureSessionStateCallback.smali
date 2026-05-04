.class public final Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# instance fields
.field private final _lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

.field private final callbackHandler:Landroid/os/Handler;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final captureSession:Lkotlinx/atomicfu/AtomicRef;

.field private final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private final interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

.field private final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 149
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 151
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 152
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    .line 153
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->callbackHandler:Landroid/os/Handler;

    .line 155
    invoke-static {p3}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    const/4 p1, 0x0

    .line 156
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method

.method private final finalizeLastSession()V
    .locals 2

    .line 244
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    :cond_0
    return-void
.end method

.method private final finalizeSession()V
    .locals 1

    .line 238
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->finalizeLastSession()V

    .line 239
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    return-void
.end method

.method private final getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
    .locals 1

    .line 205
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    if-eqz v0, :cond_0

    return-object v0

    .line 210
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->wrapSession(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    .line 211
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 214
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    return-object p1
.end method

.method private final wrapSession(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
    .locals 3

    .line 225
    instance-of v0, p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;

    .line 227
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 228
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 230
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->callbackHandler:Landroid/os/Handler;

    .line 226
    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroid/os/Handler;)V

    return-object v0

    .line 233
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->callbackHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v0

    .line 184
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onActive(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 185
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onActive-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v0

    .line 197
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onCaptureQueueEmpty(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 198
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onCaptureQueueEmpty-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v0

    .line 190
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 191
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->finalizeSession()V

    .line 192
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onClosed-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    .line 171
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 172
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->finalizeSession()V

    .line 173
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onConfigureFailed-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    .line 160
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 165
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->finalizeLastSession()V

    .line 166
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onConfigured-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object v0

    .line 178
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onReady(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 179
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onReady-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
