.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;
.super Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS"
.end annotation


# instance fields
.field private final captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

.field private final captureRequestMap:Ljava/util/Map;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;Ljava/util/Map;)V
    .locals 1

    const-string v0, "captureCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureRequestMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;-><init>()V

    .line 338
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    .line 339
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureRequestMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCaptureRequestMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;)Ljava/util/Map;
    .locals 0

    .line 337
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureRequestMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureRequestMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 360
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureRequestMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 361
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureFailed-RuT0dZU(Landroid/hardware/camera2/CaptureRequest;J)V

    return-void

    .line 363
    :cond_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed is not triggered for repeating requests. Request frame numbers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->access$getCaptureRequestMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 364
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onCaptureProcessProgressed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;I)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

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

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 3

    const-string/jumbo v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getExtensionSessionMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 381
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

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

    .line 347
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getFrameNumbers$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 348
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->this$0:Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;->access$getExtensionSessionMap$p(Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureRequestMap:Ljava/util/Map;

    .line 384
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 349
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession$Camera2CaptureSessionCallbackToExtensionCaptureCallbackAndroidS;->captureCallback:Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;

    move-object v2, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
