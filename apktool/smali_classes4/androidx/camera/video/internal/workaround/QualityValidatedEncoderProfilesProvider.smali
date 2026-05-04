.class public Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# static fields
.field private static final CAMCORDER_TO_VIDEO_QUALITY_MAP:Ljava/util/Map;


# instance fields
.field private final mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final mQuirks:Landroidx/camera/core/impl/Quirks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->CAMCORDER_TO_VIDEO_QUALITY_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/Quality;->HIGHEST:Landroidx/camera/video/Quality;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/video/Quality;->LOWEST:Landroidx/camera/video/Quality;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/Quirks;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 73
    iput-object p2, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 74
    iput-object p3, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mQuirks:Landroidx/camera/core/impl/Quirks;

    return-void
.end method

.method private isDeviceValidQuality(I)Z
    .locals 3

    .line 92
    sget-object v0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->CAMCORDER_TO_VIDEO_QUALITY_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/video/Quality;

    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mQuirks:Landroidx/camera/core/impl/Quirks;

    const-class v1, Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;

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

    check-cast v1, Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;

    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v1, v2, p1}, Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;->isProblematicVideoQuality(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/Quality;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-static {v1}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->workaroundBySurfaceProcessing(Landroidx/camera/core/impl/Quirk;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static workaroundBySurfaceProcessing(Landroidx/camera/core/impl/Quirk;)Z
    .locals 1

    .line 110
    instance-of v0, p0, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;

    .line 111
    invoke-interface {p0}, Landroidx/camera/core/internal/compat/quirk/SurfaceProcessingQuirk;->workaroundBySurfaceProcessing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 1

    .line 84
    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method public hasProfile(I)Z
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->mProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;->isDeviceValidQuality(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
