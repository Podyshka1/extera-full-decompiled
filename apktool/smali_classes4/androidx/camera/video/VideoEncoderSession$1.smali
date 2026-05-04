.class Landroidx/camera/video/VideoEncoderSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/VideoEncoderSession;->configure(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method constructor <init>(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 0

    .line 120
    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession$1;->this$0:Landroidx/camera/video/VideoEncoderSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 128
    const-string v0, "VideoEncoderSession"

    const-string v1, "VideoEncoder configuration failed."

    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    iget-object p1, p0, Landroidx/camera/video/VideoEncoderSession$1;->this$0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {p1}, Landroidx/camera/video/VideoEncoderSession;->terminateNow()V

    return-void
.end method

.method public onSuccess(Landroidx/camera/video/internal/encoder/Encoder;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Landroidx/camera/video/internal/encoder/Encoder;

    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoEncoderSession$1;->onSuccess(Landroidx/camera/video/internal/encoder/Encoder;)V

    return-void
.end method
