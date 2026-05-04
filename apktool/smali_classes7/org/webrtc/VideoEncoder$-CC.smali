.class public abstract synthetic Lorg/webrtc/VideoEncoder$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$createNativeVideoEncoder(Lorg/webrtc/VideoEncoder;)J
    .locals 2

    .line 327
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static $default$getEncoderInfo(Lorg/webrtc/VideoEncoder;)Lorg/webrtc/VideoEncoder$EncoderInfo;
    .locals 2

    .line 382
    new-instance p0, Lorg/webrtc/VideoEncoder$EncoderInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/webrtc/VideoEncoder$EncoderInfo;-><init>(IZ)V

    return-object p0
.end method

.method public static $default$getResolutionBitrateLimits(Lorg/webrtc/VideoEncoder;)[Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;
    .locals 0

    const/4 p0, 0x0

    .line 370
    new-array p0, p0, [Lorg/webrtc/VideoEncoder$ResolutionBitrateLimits;

    return-object p0
.end method

.method public static $default$isHardwareEncoder(Lorg/webrtc/VideoEncoder;)Z
    .locals 0

    .line 335
    const/4 p0, 0x1

    return p0
.end method

.method public static $default$setRates(Lorg/webrtc/VideoEncoder;Lorg/webrtc/VideoEncoder$RateControlParameters;)Lorg/webrtc/VideoCodecStatus;
    .locals 2

    .line 359
    iget-wide v0, p1, Lorg/webrtc/VideoEncoder$RateControlParameters;->framerateFps:D

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 360
    iget-object p1, p1, Lorg/webrtc/VideoEncoder$RateControlParameters;->bitrate:Lorg/webrtc/VideoEncoder$BitrateAllocation;

    invoke-interface {p0, p1, v0}, Lorg/webrtc/VideoEncoder;->setRateAllocation(Lorg/webrtc/VideoEncoder$BitrateAllocation;I)Lorg/webrtc/VideoCodecStatus;

    move-result-object p0

    return-object p0
.end method
