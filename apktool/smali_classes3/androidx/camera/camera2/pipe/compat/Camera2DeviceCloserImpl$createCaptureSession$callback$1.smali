.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->createCaptureSession(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sessionConfigured:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $surface:Landroid/view/Surface;

.field final synthetic $surfaceReleased:Lkotlinx/atomicfu/AtomicBoolean;

.field final synthetic $surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lkotlinx/atomicfu/AtomicBoolean;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$sessionConfigured:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surfaceReleased:Lkotlinx/atomicfu/AtomicBoolean;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surface:Landroid/view/Surface;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureQueueEmpty(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 219
    const-string v0, "Empty capture session closed"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surfaceReleased:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 222
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    return-void
.end method

.method public onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 227
    const-string v0, "Empty capture session configure failed"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surfaceReleased:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 230
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 232
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$sessionConfigured:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CXCP"

    .line 211
    const-string v1, "Empty capture session configured. Closing it"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    invoke-static {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$createCaptureSession$callback$1;->$sessionConfigured:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onReady(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionDisconnected()V
    .locals 0

    return-void
.end method

.method public onSessionFinalized()V
    .locals 0

    return-void
.end method
