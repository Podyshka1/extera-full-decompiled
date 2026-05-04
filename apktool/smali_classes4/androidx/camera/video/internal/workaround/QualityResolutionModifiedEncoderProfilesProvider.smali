.class public Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# instance fields
.field private final mEncoderProfilesCache:Ljava/util/Map;

.field private final mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final mQuirks:Landroidx/camera/core/impl/Quirks;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/Quirks;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 54
    iput-object p2, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mQuirks:Landroidx/camera/core/impl/Quirks;

    return-void
.end method

.method private createNewEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroid/util/Size;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 107
    invoke-static {v2, p2}, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->generateVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroid/util/Size;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v2

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_1
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result p2

    .line 113
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v1

    .line 114
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-static {p2, v1, p1, v0}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method private static generateVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroid/util/Size;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 10

    .line 122
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getCodec()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitrate()I

    move-result v2

    .line 125
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getFrameRate()I

    move-result v3

    .line 126
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 127
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 128
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getProfile()I

    move-result v6

    .line 129
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getBitDepth()I

    move-result v7

    .line 130
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getChromaSubsampling()I

    move-result v8

    .line 131
    invoke-virtual {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getHdrFormat()I

    move-result v9

    .line 121
    invoke-static/range {v0 .. v9}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->create(ILjava/lang/String;IIIIIIII)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p0

    return-object p0
.end method

.method private getAlternativeResolution(I)Landroid/util/Size;
    .locals 2

    .line 92
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mQuirks:Landroidx/camera/core/impl/Quirks;

    const-class v1, Landroidx/camera/video/internal/compat/quirk/StretchedVideoResolutionQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/Quirks;->getAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/internal/compat/quirk/StretchedVideoResolutionQuirk;

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1, p1}, Landroidx/camera/video/internal/compat/quirk/StretchedVideoResolutionQuirk;->getAlternativeResolution(I)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2

    .line 72
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 82
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->getAlternativeResolution(I)Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->createNewEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroid/util/Size;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 2

    .line 59
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
