.class public final synthetic Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda18;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$$ExternalSyntheticLambda18;->f$0:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->reachEndData()V

    return-void
.end method
