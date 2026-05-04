.class public final Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;
.super Landroidx/camera/video/internal/encoder/EncoderInfoImpl;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

.field public static final FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;


# instance fields
.field private final videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;


# direct methods
.method public static synthetic $r8$lambda$Ez8GObSc-Hk-7W4G5rldl3mZIpc(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER$lambda$0(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    .line 99
    new-instance v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V
    .locals 1

    const-string v0, "codecInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/encoder/EncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderInfoImpl;->getCodecCapabilities()Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-void
.end method

.method private static final FINDER$lambda$0(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 3

    const-string v0, "mimeType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    :try_start_0
    new-instance v1, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/utils/CodecUtil;->findCodecAndGetCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    .line 103
    sget-object p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->Companion:Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;->from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0
    :try_end_0
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 105
    const-string v1, "VideoEncoderInfoImpl"

    const-string v2, "Unable to find a VideoEncoderInfoImpl"

    invoke-static {v1, v2, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public canSwapWidthHeight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    return v0
.end method

.method public getSupportedBitrateRange()Landroid/util/Range;
    .locals 2

    .line 87
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    const-string v1, "getBitrateRange(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 2

    .line 61
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v0

    const-string v1, "getSupportedHeights(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 1

    .line 74
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 76
    sget-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    invoke-static {v0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;->access$toIllegalArgumentException(Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 2

    .line 57
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v0

    const-string v1, "getSupportedWidths(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 1

    .line 66
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidthsFor(I)Landroid/util/Range;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 68
    sget-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    invoke-static {v0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;->access$toIllegalArgumentException(Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public getWidthAlignment()I
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    return v0
.end method

.method public isSizeSupported(II)Z
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p1

    return p1
.end method

.method public synthetic isSizeSupportedAllowSwapping(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$-CC;->$default$isSizeSupportedAllowSwapping(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;II)Z

    move-result p1

    return p1
.end method
