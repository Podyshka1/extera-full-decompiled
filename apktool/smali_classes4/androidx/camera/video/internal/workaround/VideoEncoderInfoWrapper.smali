.class public final Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;


# instance fields
.field private final _supportedHeights:Landroid/util/Range;

.field private final _supportedWidths:Landroid/util/Range;

.field private final extraSupportedSizes:Ljava/util/Set;

.field private final videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->Companion:Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V
    .locals 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->extraSupportedSizes:Ljava/util/Set;

    .line 49
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v1

    const-wide/high16 v2, 0x40b0000000000000L    # 4096.0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/2addr v2, v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedWidths:Landroid/util/Range;

    .line 52
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result p1

    const-wide v3, 0x40a0e00000000000L    # 2160.0

    int-to-double v5, p1

    div-double/2addr v3, v5

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    mul-int/2addr v1, p1

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedHeights:Landroid/util/Range;

    .line 55
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;->getExtraSupportedSizes()Ljava/util/Set;

    move-result-object p1

    const-string v1, "getExtraSupportedSizes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;-><init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V

    return-void
.end method

.method public static final synthetic access$addExtraSupportedSize(Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;Landroid/util/Size;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->addExtraSupportedSize(Landroid/util/Size;)V

    return-void
.end method

.method private final addExtraSupportedSize(Landroid/util/Size;)V
    .locals 1

    .line 115
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->extraSupportedSizes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 1

    sget-object v0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->Companion:Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;->from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canSwapWidthHeight()Z
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->canSwapWidthHeight()Z

    move-result v0

    return v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result v0

    return v0
.end method

.method public getSupportedBitrateRange()Landroid/util/Range;
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedHeights:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 2

    .line 98
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedWidths:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 102
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedHeights:Landroid/util/Range;

    return-object p1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedWidths:Landroid/util/Range;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string p1, " or can not be divided by alignment "

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result p1

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedWidths:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedHeights:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 94
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedWidths:Landroid/util/Range;

    return-object p1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is not in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedHeights:Landroid/util/Range;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string p1, " or can not be divided by alignment "

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result p1

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidthAlignment()I
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v0

    return v0
.end method

.method public isSizeSupported(II)Z
    .locals 4

    .line 67
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0, p1, p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupported(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 70
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->extraSupportedSizes:Ljava/util/Set;

    .line 1761
    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1762
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 70
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v2, p2, :cond_2

    return v1

    .line 73
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedWidths:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->_supportedHeights:Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    move-result v0

    rem-int/2addr p1, v0

    if-nez p1, :cond_4

    .line 76
    iget-object p1, p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->videoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    move-result p1

    rem-int/2addr p2, p1

    if-nez p2, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic isSizeSupportedAllowSwapping(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$-CC;->$default$isSizeSupportedAllowSwapping(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;II)Z

    move-result p1

    return p1
.end method
