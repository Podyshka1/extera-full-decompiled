.class Landroidx/camera/video/VideoCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/VideoCapture;


# direct methods
.method constructor <init>(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    .line 953
    iput-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1003
    const-string v0, "VideoCapture"

    const-string v1, "Receive onError from StreamState observer"

    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNewData(Landroidx/camera/video/StreamInfo;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 960
    iget-object v0, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v0, v0, Landroidx/camera/video/VideoCapture;->mSourceState:Landroidx/camera/video/VideoOutput$SourceState;

    sget-object v1, Landroidx/camera/video/VideoOutput$SourceState;->INACTIVE:Landroidx/camera/video/VideoOutput$SourceState;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 964
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream info update: old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v1, v1, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCapture"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v1, v0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 967
    iput-object p1, v0, Landroidx/camera/video/VideoCapture;->mStreamInfo:Landroidx/camera/video/StreamInfo;

    .line 972
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/StreamSpec;

    .line 973
    iget-object v2, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-virtual {v1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/camera/video/VideoCapture;->isStreamIdChanged(II)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    .line 974
    invoke-virtual {v2, v1, p1}, Landroidx/camera/video/VideoCapture;->shouldResetCompensatingTransformation(Landroidx/camera/video/StreamInfo;Landroidx/camera/video/StreamInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 981
    :cond_1
    invoke-virtual {v1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 982
    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 983
    :cond_2
    invoke-virtual {v1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 984
    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 987
    :cond_3
    iget-object v1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v2, v1, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1, v2, p1, v0}, Landroidx/camera/video/VideoCapture;->applyStreamInfoAndStreamSpecToSessionConfigBuilder(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    .line 990
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v0, p1, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/camera/video/VideoCapture;->access$000(Landroidx/camera/video/VideoCapture;Ljava/util/List;)V

    .line 991
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-static {p1}, Landroidx/camera/video/VideoCapture;->access$100(Landroidx/camera/video/VideoCapture;)V

    return-void

    .line 992
    :cond_4
    invoke-virtual {v1}, Landroidx/camera/video/StreamInfo;->getStreamState()Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getStreamState()Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 993
    iget-object v1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v2, v1, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v1, v2, p1, v0}, Landroidx/camera/video/VideoCapture;->applyStreamInfoAndStreamSpecToSessionConfigBuilder(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/video/StreamInfo;Landroidx/camera/core/impl/StreamSpec;)V

    .line 996
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    iget-object v0, p1, Landroidx/camera/video/VideoCapture;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/camera/video/VideoCapture;->access$200(Landroidx/camera/video/VideoCapture;Ljava/util/List;)V

    .line 997
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-static {p1}, Landroidx/camera/video/VideoCapture;->access$300(Landroidx/camera/video/VideoCapture;)V

    :cond_5
    :goto_0
    return-void

    .line 980
    :cond_6
    :goto_1
    iget-object p1, p0, Landroidx/camera/video/VideoCapture$1;->this$0:Landroidx/camera/video/VideoCapture;

    invoke-virtual {p1}, Landroidx/camera/video/VideoCapture;->resetPipeline()V

    return-void

    .line 958
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StreamInfo can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onNewData(Ljava/lang/Object;)V
    .locals 0

    .line 953
    check-cast p1, Landroidx/camera/video/StreamInfo;

    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$1;->onNewData(Landroidx/camera/video/StreamInfo;)V

    return-void
.end method
