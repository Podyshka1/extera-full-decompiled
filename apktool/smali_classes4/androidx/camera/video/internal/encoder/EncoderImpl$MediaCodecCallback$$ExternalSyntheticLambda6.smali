.class public final synthetic Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroidx/camera/video/internal/encoder/EncoderCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;->f$2:Landroidx/camera/video/internal/encoder/EncoderCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;->f$2:Landroidx/camera/video/internal/encoder/EncoderCallback;

    invoke-static {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->$r8$lambda$2wKtJPZqhybYOqZCZkJLM12EMXU(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    return-void
.end method
