.class public abstract Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 9

    .line 56
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Should contain at least one VideoProfile."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 58
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 61
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :goto_1
    new-instance v2, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/camera/video/internal/AutoValue_VideoValidatedEncoderProfilesProxy;-><init>(IILjava/util/List;Ljava/util/List;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;)V

    return-object v2
.end method

.method public static from(Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;
    .locals 3

    .line 43
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getDefaultDurationSeconds()I

    move-result v0

    .line 44
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v1

    .line 45
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-interface {p0}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p0

    .line 42
    invoke-static {v0, v1, v2, p0}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->create(IILjava/util/List;Ljava/util/List;)Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getDefaultAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
.end method

.method public abstract getDefaultVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
.end method
