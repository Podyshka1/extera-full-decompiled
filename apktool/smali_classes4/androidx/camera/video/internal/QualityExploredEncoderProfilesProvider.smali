.class public Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# instance fields
.field private final mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final mCameraSupportedResolutions:Ljava/util/Set;

.field private final mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

.field private final mEncoderProfilesCache:Ljava/util/Map;

.field private final mTargetDynamicRanges:Ljava/util/Set;

.field private final mTargetQualities:Ljava/util/Set;

.field private final mVideoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    .line 85
    invoke-static {p3}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->checkFullySpecifiedOrThrow(Ljava/util/Collection;)V

    .line 86
    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 87
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetQualities:Ljava/util/Set;

    .line 88
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetDynamicRanges:Ljava/util/Set;

    .line 89
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mCameraSupportedResolutions:Ljava/util/Set;

    .line 90
    iput-object p5, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-void
.end method

.method private static checkFullySpecifiedOrThrow(Ljava/util/Collection;)V
    .locals 3

    .line 251
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 252
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contains non-fully specified DynamicRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private exploreProfiles(Landroidx/camera/video/Quality$ConstantQuality;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 10

    .line 132
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetQualities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 133
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    const/4 v1, 0x1

    .line 135
    invoke-virtual {p1, v1}, Landroidx/camera/video/Quality$ConstantQuality;->getQualityValue(I)I

    move-result v1

    .line 134
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroidx/camera/video/Quality$ConstantQuality;->getTypicalSizes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 137
    iget-object v2, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mCameraSupportedResolutions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v3}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v4, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetDynamicRanges:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/DynamicRange;

    .line 144
    invoke-static {v0, v5}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->hasMatchedVideoProfileForDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 149
    :cond_3
    invoke-direct {p0, v5}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->getCapabilitiesByQualityFor(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;

    move-result-object v5

    .line 150
    invoke-virtual {v5, v1}, Landroidx/camera/video/CapabilitiesByQuality;->findNearestHigherSupportedEncoderProfilesFor(Landroid/util/Size;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {v5}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v6

    .line 155
    iget-object v7, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mVideoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    .line 156
    invoke-virtual {v6}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-interface {v7, v8}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;->find(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 159
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 158
    invoke-interface {v7, v8, v9}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupportedAllowSwapping(II)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {v6}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getResolution()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-interface {v7}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    move-result-object v5

    .line 167
    invoke-static {v6, v1, v5}, Landroidx/camera/video/internal/utils/EncoderProfilesUtil;->deriveVideoProfile(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroid/util/Size;Landroid/util/Range;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v5

    .line 166
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    invoke-static {v1, v2}, Landroidx/camera/core/internal/utils/SizeUtil;->findNearestHigherFor(Landroid/util/Size;Ljava/util/TreeMap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 172
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 175
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result v0

    .line 176
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v1

    .line 177
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object p1

    .line 174
    invoke-static {v0, v1, p1, v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private findQualityInTargetQualities(I)Landroidx/camera/video/Quality$ConstantQuality;
    .locals 3

    .line 185
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetQualities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/Quality;

    .line 186
    check-cast v1, Landroidx/camera/video/Quality$ConstantQuality;

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v1, v2}, Landroidx/camera/video/Quality$ConstantQuality;->getQualityValue(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCapabilitiesByQualityFor(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/CapabilitiesByQuality;
    .locals 3

    .line 196
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/CapabilitiesByQuality;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 199
    :cond_0
    new-instance v0, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;

    iget-object v1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-direct {v0, v1, p1}, Landroidx/camera/video/internal/DynamicRangeMatchedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/DynamicRange;)V

    .line 202
    new-instance v1, Landroidx/camera/video/CapabilitiesByQuality;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroidx/camera/video/CapabilitiesByQuality;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;I)V

    .line 204
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mDynamicRangeToCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3

    .line 104
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 107
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mBaseEncoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    .line 108
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->findQualityInTargetQualities(I)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    invoke-direct {p0, v0}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->hasMatchedVideoProfileForAllTargetDynamicRanges(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-direct {p0, v1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->exploreProfiles(Landroidx/camera/video/Quality$ConstantQuality;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mergeEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    .line 112
    :cond_1
    iget-object v1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private hasMatchedVideoProfileForAllTargetDynamicRanges(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    iget-object v1, p0, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->mTargetDynamicRanges:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/DynamicRange;

    .line 123
    invoke-static {p1, v2}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->hasMatchedVideoProfileForDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private static hasMatchedVideoProfileForDynamicRange(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 241
    :cond_0
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 242
    invoke-static {v1, p1}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->isHdrSettingsMatched(Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/DynamicRange;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static mergeEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 214
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result v0

    :goto_0
    if-eqz p0, :cond_2

    .line 216
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v1

    goto :goto_1

    .line 217
    :cond_2
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v1

    :goto_1
    if-eqz p0, :cond_3

    .line 219
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object v2

    .line 220
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 222
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz p1, :cond_5

    .line 225
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    :cond_5
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
