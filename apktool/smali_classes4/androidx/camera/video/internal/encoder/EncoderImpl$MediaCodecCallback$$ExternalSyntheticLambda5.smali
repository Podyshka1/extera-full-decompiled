.class public final synthetic Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderCallback;

.field public final synthetic f$1:Landroid/media/MediaFormat;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroid/media/MediaFormat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/video/internal/encoder/EncoderCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5;->f$1:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5;->f$0:Landroidx/camera/video/internal/encoder/EncoderCallback;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5;->f$1:Landroid/media/MediaFormat;

    invoke-static {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->$r8$lambda$NV7QiQi8cWrMcA-AbNoL9QP22mE(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroid/media/MediaFormat;)V

    return-void
.end method
