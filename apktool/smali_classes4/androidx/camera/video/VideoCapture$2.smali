.class Landroidx/camera/video/VideoCapture$2;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/VideoCapture;->setupSurfaceUpdateNotifier(Landroidx/camera/core/impl/SessionConfig$Builder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstCaptureResult:Z

.field final synthetic this$0:Landroidx/camera/video/VideoCapture;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field final synthetic val$sessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field final synthetic val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$N4RLZ_N89mC9ee2xHpgSaF5kjAo(Landroidx/camera/video/VideoCapture$2;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1470
    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/SessionConfig$Builder;->removeCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Z

    return-void
.end method

.method constructor <init>(Landroidx/camera/video/VideoCapture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    .line 1443
    iput-object p1, p0, Landroidx/camera/video/VideoCapture$2;->this$0:Landroidx/camera/video/VideoCapture;

    iput-object p2, p0, Landroidx/camera/video/VideoCapture$2;->val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Landroidx/camera/video/VideoCapture$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p4, p0, Landroidx/camera/video/VideoCapture$2;->val$sessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    const/4 p1, 0x1

    .line 1444
    iput-boolean p1, p0, Landroidx/camera/video/VideoCapture$2;->mIsFirstCaptureResult:Z

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 2

    .line 1448
    invoke-super {p0, p1, p2}, Landroidx/camera/core/impl/CameraCaptureCallback;->onCaptureCompleted(ILandroidx/camera/core/impl/CameraCaptureResult;)V

    .line 1450
    iget-boolean p1, p0, Landroidx/camera/video/VideoCapture$2;->mIsFirstCaptureResult:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1451
    iput-boolean p1, p0, Landroidx/camera/video/VideoCapture$2;->mIsFirstCaptureResult:Z

    .line 1452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cameraCaptureResult timestampNs = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraCaptureResult;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", current system uptimeMs = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", current system realtimeMs = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1452
    const-string v0, "VideoCapture"

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_0
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$2;->val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1460
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraCaptureResult;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object p1

    const-string p2, "androidx.camera.video.VideoCapture.streamUpdate"

    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1462
    check-cast p1, Ljava/lang/Integer;

    .line 1463
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Landroidx/camera/video/VideoCapture$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroidx/camera/video/VideoCapture$2;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 p2, 0x0

    .line 1464
    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/camera/video/VideoCapture$2;->val$surfaceUpdateComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 1465
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1468
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iget-object p2, p0, Landroidx/camera/video/VideoCapture$2;->val$sessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    new-instance v0, Landroidx/camera/video/VideoCapture$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Landroidx/camera/video/VideoCapture$2$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/VideoCapture$2;Landroidx/camera/core/impl/SessionConfig$Builder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
