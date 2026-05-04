.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;
.super Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Camera2CaptureSessionCallbackToExtensionCaptureCallback"
.end annotation


# instance fields
.field private final captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

.field private final frameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;)V
    .locals 1

    const-string v0, "captureCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;-><init>()V

    .line 263
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    .line 265
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->frameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private final dequeueFrameNumber(Landroid/hardware/camera2/CameraExtensionSession;)J
    .locals 2

    .line 324
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->frameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->incrementAndGetNextFrameNumber(Landroid/hardware/camera2/CameraExtensionSession;)J

    .line 327
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->frameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "remove(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final incrementAndGetNextFrameNumber(Landroid/hardware/camera2/CameraExtensionSession;)J
    .locals 4

    .line 313
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getFrameNumbers$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 314
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-static {v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getExtensionSessionMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->frameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-wide v0
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->dequeueFrameNumber(Landroid/hardware/camera2/CameraExtensionSession;)J

    move-result-wide v0

    .line 291
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureFailed-RuT0dZU(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method

.method public onCaptureProcessProgressed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;I)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-interface {p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureProcessProgressed(Landroid/hardware/camera2/CaptureRequest;I)V

    return-void
.end method

.method public onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureResultAvailable(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->dequeueFrameNumber(Landroid/hardware/camera2/CameraExtensionSession;)J

    move-result-wide v0

    .line 309
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    invoke-interface {p1, p2, p3, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureCompleted-rmrZIYk(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 3

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getExtensionSessionMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 296
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 7

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->incrementAndGetNextFrameNumber(Landroid/hardware/camera2/CameraExtensionSession;)J

    move-result-wide v3

    .line 273
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallback;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    move-object v2, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
