.class public final Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# instance fields
.field private final videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V
    .locals 1

    const-string v0, "videoEncoderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 25
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->canSwapWidthHeight()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canSwapWidthHeight()Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->canSwapWidthHeight()Z

    move-result v0

    return v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v0

    return v0
.end method

.method public getSupportedBitrateRange()Landroid/util/Range;
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidthsFor(I)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method

.method public getWidthAlignment()I
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result v0

    return v0
.end method

.method public isSizeSupported(II)Z
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0, p2, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupported(II)Z

    move-result p1

    return p1
.end method

.method public isSizeSupportedAllowSwapping(II)Z
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0, p2, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    move-result p1

    return p1
.end method
