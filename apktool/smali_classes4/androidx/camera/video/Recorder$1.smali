.class Landroidx/camera/video/Recorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/Recorder;->onVideoEncoderReady(Landroidx/camera/video/VideoEncoderSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/Recorder;

.field final synthetic val$videoEncoderSession:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoEncoderSession;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Landroidx/camera/video/Recorder$1;->this$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/Recorder$1;->val$videoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in ReadyToReleaseFuture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Recorder"

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 3

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoEncoder can be released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recorder"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/Recorder$1;->this$0:Landroidx/camera/video/Recorder;

    iget-object v0, v0, Landroidx/camera/video/Recorder;->mSourceNonStreamingTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1440
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/video/Recorder$1;->this$0:Landroidx/camera/video/Recorder;

    iget-object v0, v0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 1442
    invoke-static {v0}, Landroidx/camera/video/Recorder;->notifyEncoderSourceStopped(Landroidx/camera/video/internal/encoder/Encoder;)V

    .line 1445
    :cond_1
    iget-object p1, p0, Landroidx/camera/video/Recorder$1;->this$0:Landroidx/camera/video/Recorder;

    iget-object v0, p0, Landroidx/camera/video/Recorder$1;->val$videoEncoderSession:Landroidx/camera/video/VideoEncoderSession;

    iput-object v0, p1, Landroidx/camera/video/Recorder;->mVideoEncoderSessionToRelease:Landroidx/camera/video/VideoEncoderSession;

    const/4 v0, 0x0

    .line 1446
    invoke-virtual {p1, v0}, Landroidx/camera/video/Recorder;->setLatestSurface(Landroid/view/Surface;)V

    .line 1448
    iget-object p1, p0, Landroidx/camera/video/Recorder$1;->this$0:Landroidx/camera/video/Recorder;

    const/4 v1, 0x4

    .line 1449
    invoke-virtual {p1}, Landroidx/camera/video/Recorder;->isPersistentRecordingInProgress()Z

    move-result v2

    .line 1448
    invoke-virtual {p1, v1, v0, v2}, Landroidx/camera/video/Recorder;->requestReset(ILjava/lang/Throwable;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1432
    check-cast p1, Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder$1;->onSuccess(Landroidx/camera/video/internal/encoder/Encoder;)V

    return-void
.end method
