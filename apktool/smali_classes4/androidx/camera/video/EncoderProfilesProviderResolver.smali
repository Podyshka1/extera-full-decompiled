.class public final Landroidx/camera/video/EncoderProfilesProviderResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/video/EncoderProfilesProviderResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/EncoderProfilesProviderResolver;

    invoke-direct {v0}, Landroidx/camera/video/EncoderProfilesProviderResolver;-><init>()V

    sput-object v0, Landroidx/camera/video/EncoderProfilesProviderResolver;->INSTANCE:Landroidx/camera/video/EncoderProfilesProviderResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isHlg10Supported(Landroidx/camera/core/impl/CameraInfoInternal;)Z
    .locals 4

    .line 120
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object p1

    const-string v0, "getSupportedDynamicRanges(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1761
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1762
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 121
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 122
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public final resolve(Landroidx/camera/core/impl/CameraInfoInternal;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/core/impl/EncoderProfilesProvider;
    .locals 9

    const-string v0, "cameraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoEncoderInfoFinder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not a supported video capabilities source: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;

    move-result-object v1

    const-string v2, "getEncoderProfilesProvider(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 56
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->isHighSpeedSupported()Z

    move-result p1

    if-nez p1, :cond_2

    .line 57
    sget-object p1, Landroidx/camera/core/impl/EncoderProfilesProvider;->EMPTY:Landroidx/camera/core/impl/EncoderProfilesProvider;

    const-string p2, "EMPTY"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object v1

    .line 65
    :cond_3
    invoke-static {v1, p3}, Landroidx/camera/video/CapabilitiesByQuality;->containsSupportedQuality(Landroidx/camera/core/impl/EncoderProfilesProvider;I)Z

    move-result p3

    if-nez p3, :cond_4

    .line 66
    const-string p3, "EncoderProfilesResolver"

    const-string v1, "Camera EncoderProfilesProvider doesn\'t contain any supported Quality."

    invoke-static {p3, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x3

    .line 74
    new-array p3, p3, [Landroidx/camera/video/Quality;

    sget-object v1, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    const/4 v3, 0x0

    aput-object v1, p3, v3

    sget-object v1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    aput-object v1, p3, v0

    sget-object v1, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    aput-object v1, p3, v2

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 76
    new-instance v1, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;

    invoke-direct {v1, p1, p3, p4}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Ljava/util/List;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    .line 79
    :cond_4
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object p3

    const-string v2, "getAll(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v4, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;

    invoke-direct {v4, v1, p3, p1, p4}, Landroidx/camera/video/internal/workaround/QualityAddedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/Quirks;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    if-ne p2, v0, :cond_5

    .line 92
    new-instance v3, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;

    .line 94
    invoke-static {}, Landroidx/camera/video/Quality;->getSortedQualities()Ljava/util/List;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/util/Collection;

    .line 95
    sget-object p2, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    const/16 p2, 0x22

    .line 96
    invoke-interface {p1, p2}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/util/Collection;

    move-object v8, p4

    .line 92
    invoke-direct/range {v3 .. v8}, Landroidx/camera/video/internal/QualityExploredEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    move-object v4, v3

    goto :goto_1

    :cond_5
    move-object v8, p4

    .line 104
    :goto_1
    new-instance p2, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;

    invoke-direct {p2, v4, p3}, Landroidx/camera/video/internal/workaround/QualityResolutionModifiedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/Quirks;)V

    .line 107
    invoke-direct {p0, p1}, Landroidx/camera/video/EncoderProfilesProviderResolver;->isHlg10Supported(Landroidx/camera/core/impl/CameraInfoInternal;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 108
    new-instance p4, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;

    invoke-direct {p4, p2, v8}, Landroidx/camera/video/internal/BackupHdrProfileEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    move-object p2, p4

    .line 112
    :cond_6
    new-instance p4, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;

    invoke-direct {p4, p2, p1, p3}, Landroidx/camera/video/internal/workaround/QualityValidatedEncoderProfilesProvider;-><init>(Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/Quirks;)V

    return-object p4
.end method
