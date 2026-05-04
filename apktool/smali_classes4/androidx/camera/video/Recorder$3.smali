.class Landroidx/camera/video/Recorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/Recorder;->updateEncoderCallbacks(Landroidx/camera/video/Recorder$RecordingRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/Recorder;

.field final synthetic val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method constructor <init>(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    .line 1921
    iput-object p1, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/Recorder$3;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeError(Landroidx/camera/video/internal/encoder/EncodeException;)V
    .locals 1

    .line 1937
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public synthetic onEncodePaused()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/encoder/EncoderCallback$-CC;->$default$onEncodePaused(Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    return-void
.end method

.method public onEncodeStart()V
    .locals 0

    return-void
.end method

.method public onEncodeStop()V
    .locals 2

    .line 1931
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->val$completer:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public onEncodedData(Landroidx/camera/video/internal/encoder/EncodedData;)V
    .locals 4

    .line 1945
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1946
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    iget-boolean v1, v0, Landroidx/camera/video/Recorder;->mInProgressRecordingStopping:Z

    const-string v2, "Recorder"

    if-nez v1, :cond_6

    .line 1950
    iget-object v0, v0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1952
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    .line 1953
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    iput-object v1, v0, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1956
    :goto_0
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->isKeyFrame()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1959
    iget-object v3, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    iput-object p1, v3, Landroidx/camera/video/Recorder;->mPendingFirstVideoData:Landroidx/camera/video/internal/encoder/EncodedData;

    .line 1962
    invoke-virtual {v3}, Landroidx/camera/video/Recorder;->isAudioEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    iget-object p1, p1, Landroidx/camera/video/Recorder;->mPendingAudioRingBuffer:Landroidx/camera/core/internal/utils/RingBuffer;

    .line 1963
    invoke-interface {p1}, Landroidx/camera/core/internal/utils/RingBuffer;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1969
    const-string p1, "Replaced cached video keyframe with newer keyframe."

    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1972
    :cond_2
    const-string p1, "Cached video keyframe while we wait for first audio sample before starting muxer."

    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1964
    :cond_3
    :goto_1
    const-string p1, "Received video keyframe. Starting muxer..."

    invoke-static {v2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object p1, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    invoke-virtual {p1, v1}, Landroidx/camera/video/Recorder;->setupAndStartMuxer(Landroidx/camera/video/Recorder$RecordingRecord;)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 1981
    const-string v0, "Dropped cached keyframe since we have new video data and have not yet received audio data."

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_5
    const-string v0, "Dropped video data since muxer has not yet started and data is not a keyframe."

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    iget-object v0, v0, Landroidx/camera/video/Recorder;->mVideoEncoder:Landroidx/camera/video/internal/encoder/Encoder;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/Encoder;->requestKeyFrame()V

    .line 1988
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    return-void

    .line 1992
    :cond_6
    const-string v0, "Drop video data since recording is stopping."

    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/EncodedData;->close()V

    return-void
.end method

.method public onOutputConfigUpdate(Landroidx/camera/video/internal/encoder/OutputConfig;)V
    .locals 1

    .line 2006
    iget-object v0, p0, Landroidx/camera/video/Recorder$3;->this$0:Landroidx/camera/video/Recorder;

    iput-object p1, v0, Landroidx/camera/video/Recorder;->mVideoOutputConfig:Landroidx/camera/video/internal/encoder/OutputConfig;

    return-void
.end method
