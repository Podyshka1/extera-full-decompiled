.class public final Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;
.super Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
.source "SourceFile"


# instance fields
.field private final _lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field private final extensionSession:Lkotlinx/atomicfu/AtomicRef;

.field private final interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

.field private final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 73
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    .line 75
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 76
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    .line 77
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 79
    invoke-static {p3}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    const/4 p1, 0x0

    .line 80
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method

.method private final finalizeLastSession()V
    .locals 2

    .line 138
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    :cond_0
    return-void
.end method

.method private final finalizeSession()V
    .locals 1

    .line 132
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeLastSession()V

    .line 133
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    return-void
.end method

.method private final getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    if-eqz v0, :cond_0

    return-object v0

    .line 117
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->wrapSession(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    .line 118
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 121
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    return-object p1
.end method

.method private final wrapSession(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;
    .locals 3

    .line 128
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 3

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object v0

    .line 103
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;->onClosed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V

    .line 104
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeSession()V

    .line 105
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onClosed-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    .line 96
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;->onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V

    .line 97
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeSession()V

    .line 98
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onConfigureFailed-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    move-result-object p1

    .line 84
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;->onConfigured(Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;)V

    .line 90
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->finalizeLastSession()V

    .line 91
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getId-159jkk4()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;->onConfigured-rphkYDA(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
