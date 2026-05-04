.class public Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExtraEncoderProfilesForMotoC(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Ljava/util/Map;
    .locals 5

    .line 87
    const-string v0, "1"

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 88
    invoke-interface {p2, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 93
    invoke-interface {p2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p2

    .line 95
    invoke-static {p2}, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;->getFirstVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 100
    :cond_1
    invoke-static {v2, p3}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->getSupportedBitrateRange(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroid/util/Range;

    move-result-object p3

    .line 101
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 102
    invoke-static {v2, v0, p3}, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;->deriveVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroid/util/Size;Landroid/util/Range;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p3

    .line 105
    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result v3

    .line 106
    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v4

    .line 107
    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object p2

    .line 108
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 104
    invoke-static {v3, v4, p2, p3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p2

    .line 111
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getResolution()Landroid/util/Size;

    move-result-object p1

    .line 115
    invoke-static {v0}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result v0

    invoke-static {p1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p1

    if-le v0, p1, :cond_2

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p3

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getSupportedBitrateRange(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroid/util/Range;
    .locals 0

    .line 124
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;->find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 125
    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const p1, 0x7fffffff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method private static isMotoC()Z
    .locals 2

    .line 65
    const-string v0, "motorola"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moto c"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static load()Z
    .locals 1

    .line 61
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->isMotoC()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getExtraEncoderProfiles(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Ljava/util/Map;
    .locals 1

    .line 73
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->isMotoC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->getExtraEncoderProfilesForMotoC(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p1
.end method
