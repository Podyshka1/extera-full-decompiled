.class public abstract Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncoderConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
    .locals 2

    .line 43
    new-instance v0, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;

    invoke-direct {v0}, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;-><init>()V

    const/4 v1, -0x1

    .line 44
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/AutoValue_VideoEncoderConfig$Builder;->setProfile(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setIFrameInterval(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    const v1, 0x7f000789

    .line 46
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setColorFormat(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->ENCODER_DATA_SPACE_UNSPECIFIED:Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    .line 47
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setDataSpace(Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getBitrate()I
.end method

.method public abstract getCaptureFrameRate()I
.end method

.method public abstract getColorFormat()I
.end method

.method public abstract getDataSpace()Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;
.end method

.method public abstract getEncodeFrameRate()I
.end method

.method public abstract getIFrameInterval()I
.end method

.method public abstract getInputTimebase()Landroidx/camera/core/impl/Timebase;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getProfile()I
.end method

.method public abstract getResolution()Landroid/util/Size;
.end method

.method public isSlowMotion()Z
    .locals 2

    .line 121
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getCaptureFrameRate()I

    move-result v0

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getEncodeFrameRate()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract toBuilder()Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;
.end method

.method public toMediaFormat()Landroid/media/MediaFormat;
    .locals 4

    .line 86
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getResolution()Landroid/util/Size;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 88
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 87
    invoke-static {v1, v2, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 89
    const-string v1, "color-format"

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getColorFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 90
    const-string v1, "bitrate"

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getBitrate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 91
    const-string v1, "frame-rate"

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getEncodeFrameRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->isSlowMotion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "capture-rate"

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getCaptureFrameRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 99
    const-string v1, "operating-rate"

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getCaptureFrameRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 100
    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 102
    :cond_0
    const-string v1, "i-frame-interval"

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getIFrameInterval()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getProfile()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 104
    const-string v1, "profile"

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getProfile()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getDataSpace()Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->getStandard()I

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const-string v2, "color-standard"

    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->getStandard()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 110
    :cond_2
    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->getTransfer()I

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    const-string v2, "color-transfer"

    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->getTransfer()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 113
    :cond_3
    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->getRange()I

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    const-string v2, "color-range"

    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;->getRange()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method
