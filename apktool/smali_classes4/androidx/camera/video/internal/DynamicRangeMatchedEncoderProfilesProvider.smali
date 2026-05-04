.class public Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# instance fields
.field private final mDynamicRange:Landroidx/camera/core/DynamicRange;

.field private final mEncoderProfilesCache:Ljava/util/Map;

.field private final mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/DynamicRange;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 48
    iput-object p2, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mDynamicRange:Landroidx/camera/core/DynamicRange;

    return-void
.end method

.method private static filterUnmatchedDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 88
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 90
    invoke-static {v3, p1}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->isHdrSettingsMatched(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 96
    :cond_3
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result p1

    .line 97
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v0

    .line 98
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object p0

    .line 95
    invoke-static {p1, v0, p0, v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2

    .line 68
    iget-object v0, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    .line 75
    iget-object v1, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mDynamicRange:Landroidx/camera/core/DynamicRange;

    invoke-static {v0, v1}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->filterUnmatchedDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    .line 76
    iget-object v1, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 2

    .line 54
    iget-object v0, p0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->mEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
