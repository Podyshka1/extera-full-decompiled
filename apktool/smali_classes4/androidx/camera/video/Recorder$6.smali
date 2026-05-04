.class Landroidx/camera/video/Recorder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


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


# direct methods
.method constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    .line 2134
    iput-object p1, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 2143
    iget-object p1, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    const-string v0, "In-progress recording shouldn\'t be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2148
    iget-object p1, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2134
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/camera/video/Recorder$6;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2

    .line 2137
    const-string p1, "Recorder"

    const-string v0, "Encodings end successfully."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    iget-object p1, p0, Landroidx/camera/video/Recorder$6;->this$0:Landroidx/camera/video/Recorder;

    iget v0, p1, Landroidx/camera/video/Recorder;->mRecordingStopError:I

    iget-object v1, p1, Landroidx/camera/video/Recorder;->mRecordingStopErrorCause:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1}, Landroidx/camera/video/Recorder;->finalizeInProgressRecording(ILjava/lang/Throwable;)V

    return-void
.end method
