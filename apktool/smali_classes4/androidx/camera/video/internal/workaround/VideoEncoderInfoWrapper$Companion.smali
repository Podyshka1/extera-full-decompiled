.class public final Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 2

    const-string v0, "videoEncoderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    instance-of v0, p1, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    const-class v0, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;

    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 160
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 161
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 159
    invoke-interface {p1, v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected that the device does not support a size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " that should be valid in widths/heights = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "VideoEncoderInfoWrapper"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    new-instance v0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;-><init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 179
    instance-of v0, p1, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;

    if-eqz v0, :cond_3

    .line 180
    move-object v0, p1

    check-cast v0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;

    invoke-static {v0, p2}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->access$addExtraSupportedSize(Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;Landroid/util/Size;)V

    :cond_3
    return-object p1
.end method
