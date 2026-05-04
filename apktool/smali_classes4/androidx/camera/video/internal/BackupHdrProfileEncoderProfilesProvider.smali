.class public Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# instance fields
.field private final mEncoderProfilesCache:Ljava/util/Map;

.field private final mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final mVideoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 77
    iput-object p2, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-void
.end method

.method private appendBackupVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 119
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 124
    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 129
    :goto_0
    invoke-static {v3, p2, p3}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->generateBackupProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p2

    .line 134
    iget-object p3, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-static {p2, p3}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->validateOrAdapt(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 137
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v0

    .line 141
    :cond_4
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result p2

    .line 142
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result p3

    .line 143
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-static {p2, p3, p1, v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method private static deriveCodec(I)I
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected HDR format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x5

    return p0
.end method

.method private static deriveMediaType(I)Ljava/lang/String;
    .locals 0

    .line 213
    invoke-static {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$-CC;->getVideoCodecMimeType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static deriveProfile(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected HDR format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x2000

    return p0

    :cond_2
    const/16 p0, 0x1000

    return p0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method private static generateBackupProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getCodec()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    move-result v2

    .line 158
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 159
    invoke-static {p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->deriveCodec(I)I

    move-result v0

    .line 160
    invoke-static {v0}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->deriveMediaType(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->deriveProfile(I)I

    move-result v2

    :cond_1
    move v3, v0

    move-object v4, v1

    move v9, v2

    .line 165
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v1

    .line 165
    invoke-static {v0, p2, v1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->scaleBitrate(III)I

    move-result v5

    .line 172
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    move-result v6

    .line 173
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    move-result v7

    .line 174
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    move-result v8

    .line 177
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getChromaSubsampling()I

    move-result v11

    move v12, p1

    move v10, p2

    .line 168
    invoke-static/range {v3 .. v12}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    return-object p0
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3

    .line 97
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 102
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    .line 106
    invoke-direct {p0, v0, v1, v2}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->appendBackupVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy;II)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    .line 107
    iget-object v1, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static modifyBitrate(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 10

    .line 260
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getCodec()I

    move-result v0

    .line 261
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    move-result v3

    .line 264
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    move-result v4

    .line 265
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    move-result v5

    .line 266
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    move-result v6

    .line 267
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v7

    .line 268
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getChromaSubsampling()I

    move-result v8

    .line 269
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    move-result v9

    move v2, p1

    .line 259
    invoke-static/range {v0 .. v9}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    return-object p0
.end method

.method private static scaleBitrate(III)I
    .locals 5

    if-ne p1, p2, :cond_0

    return p0

    .line 224
    :cond_0
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, p1, p2}, Landroid/util/Rational;-><init>(II)V

    int-to-double v1, p0

    .line 225
    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 227
    const-string v1, "BackupHdrProfileEncoderProfilesProvider"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    const/4 p0, 0x3

    aput-object v2, v3, p0

    .line 228
    const-string p0, "Base Bitrate(%dbps) * Bit Depth Ratio (%d / %d) = %d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-static {v1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method static validateOrAdapt(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;->find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getWidth()I

    move-result v1

    .line 249
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHeight()I

    move-result v2

    .line 248
    invoke-interface {p1, v1, v2}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    move-result v0

    .line 253
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    return-object p0

    .line 254
    :cond_2
    invoke-static {p0, p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->modifyBitrate(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;I)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
