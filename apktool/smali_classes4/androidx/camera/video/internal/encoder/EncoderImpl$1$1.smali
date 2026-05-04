.class Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/internal/encoder/EncoderImpl$1;->onSuccess(Landroidx/camera/video/internal/encoder/InputBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/camera/video/internal/encoder/EncoderImpl$1;


# direct methods
.method constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$1;)V
    .locals 0

    .line 806
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;->this$1:Landroidx/camera/video/internal/encoder/EncoderImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 816
    instance-of v0, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;->this$1:Landroidx/camera/video/internal/encoder/EncoderImpl$1;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$1;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;->this$1:Landroidx/camera/video/internal/encoder/EncoderImpl$1;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$1;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    const/4 v1, 0x0

    .line 821
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 806
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 0
    return-void
.end method
