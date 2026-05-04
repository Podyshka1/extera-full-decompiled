.class public final Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver$Companion;


# instance fields
.field private final dynamicRange:Landroidx/camera/core/DynamicRange;

.field private final expectedFrameRateRange:Landroid/util/Range;

.field private final inputTimebase:Landroidx/camera/core/impl/Timebase;

.field private final mimeType:Ljava/lang/String;

.field private final surfaceSize:Landroid/util/Size;

.field private final videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

.field private final videoSpec:Landroidx/camera/video/VideoSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->Companion:Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)V
    .locals 1

    const-string v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTimebase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoProfile"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicRange"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedFrameRateRange"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->mimeType:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 53
    iput-object p3, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 54
    iput-object p4, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->surfaceSize:Landroid/util/Size;

    .line 55
    iput-object p5, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 56
    iput-object p6, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 57
    iput-object p7, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->expectedFrameRateRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public get()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .locals 12

    .line 66
    sget-object v0, Landroidx/camera/video/internal/config/VideoConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/VideoConfigUtil;

    .line 67
    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 68
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->expectedFrameRateRange:Landroid/util/Range;

    .line 66
    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/config/VideoConfigUtil;->resolveFrameRates$camera_video(Landroidx/camera/video/VideoSpec;Landroid/util/Range;)Landroidx/camera/video/internal/config/CaptureEncodeRates;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolved VIDEO frame rates: Capture frame rate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getCaptureRate()I

    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v3, "fps. Encode frame rate = "

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getEncodeRate()I

    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "fps."

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v3, "VidEncVdPrflRslvr"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoSpec:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v2}, Landroidx/camera/video/VideoSpec;->getBitrate()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const-string v2, "Using resolved VIDEO bitrate from EncoderProfiles"

    invoke-static {v3, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    move-result v3

    .line 85
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->dynamicRange:Landroidx/camera/core/DynamicRange;

    invoke-virtual {v2}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v4

    .line 86
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v5

    .line 87
    invoke-virtual {v1}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getEncodeRate()I

    move-result v6

    .line 88
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    move-result v7

    .line 89
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->surfaceSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 90
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    move-result v9

    .line 91
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->surfaceSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 92
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    move-result v11

    .line 83
    invoke-static/range {v3 .. v11}, Landroidx/camera/video/internal/config/VideoConfigUtil;->scaleBitrate(IIIIIIIII)I

    move-result v2

    .line 96
    :goto_0
    iget-object v3, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    move-result v3

    .line 99
    iget-object v4, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->mimeType:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v4, v3}, Landroidx/camera/video/internal/config/VideoConfigUtil;->mimeAndProfileToEncoderDataSpace(Ljava/lang/String;I)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    move-result-object v0

    .line 103
    invoke-static {}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->builder()Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v4

    .line 104
    iget-object v5, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v4

    .line 105
    iget-object v5, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->inputTimebase:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {v4, v5}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v4

    .line 106
    iget-object v5, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->surfaceSize:Landroid/util/Size;

    invoke-virtual {v4, v5}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setBitrate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v2

    .line 108
    invoke-virtual {v1}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getCaptureRate()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setCaptureFrameRate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v1}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getEncodeRate()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setEncodeFrameRate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v3}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setProfile(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setDataSpace(Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->build()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/VideoEncoderConfigVideoProfileResolver;->get()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    move-result-object v0

    return-object v0
.end method
