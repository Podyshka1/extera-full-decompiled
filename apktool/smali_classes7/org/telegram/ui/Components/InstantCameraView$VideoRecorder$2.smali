.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->setupVideoPlayer(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 3084
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 3097
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onRenderedFirstFrame(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 4

    .line 3087
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object p1, p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3090
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object p1, p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object p1, p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3091
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object p1, p1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object p2, p2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object p2, p2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetvideoEditedInfo(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;

    move-result-object p2

    iget-wide v2, p2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    :cond_1
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    return-void
.end method
