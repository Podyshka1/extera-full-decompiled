.class public Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# instance fields
.field private mExtraQualityToEncoderProfiles:Ljava/util/Map;

.field private final mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/Quirks;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 52
    const-class v0, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;

    invoke-virtual {p2, v0}, Landroidx/camera/core/impl/Quirks;->getAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 54
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 56
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;

    .line 57
    invoke-virtual {p2, p3, p1, p4}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->getExtraEncoderProfiles(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mExtraQualityToEncoderProfiles:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2

    .line 75
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mExtraQualityToEncoderProfiles:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mExtraQualityToEncoderProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 79
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
