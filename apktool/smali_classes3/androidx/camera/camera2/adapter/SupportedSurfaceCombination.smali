.class public final Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;,
        Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;


# instance fields
.field private final cameraId:Ljava/lang/String;

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final concurrentSurfaceCombinations:Ljava/util/List;

.field private final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

.field private final dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

.field private final encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field private final extraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

.field private final featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

.field private final featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

.field private final hardwareLevel:I

.field private final highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

.field private final highSpeedSurfaceCombinations:Ljava/util/List;

.field private isBurstCaptureSupported:Z

.field private final isConcurrentCameraModeSupported:Z

.field private isManualSensorSupported:Z

.field private isPreviewStabilizationSupported:Z

.field private isRawSupported:Z

.field private final isStreamUseCaseSupported:Z

.field private isUltraHighResolutionSensorSupported:Z

.field private final previewStabilizationSurfaceCombinations:Ljava/util/List;

.field private final resolutionCorrector:Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

.field private final streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

.field private final surfaceCombinations:Ljava/util/List;

.field private final surfaceCombinations10Bit:Ljava/util/List;

.field private final surfaceCombinationsStreamUseCase:Ljava/util/List;

.field private final surfaceCombinationsUltraHdr:Ljava/util/List;

.field public surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

.field private final surfaceSizeDefinitionFormats:Ljava/util/List;

.field private final targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

.field private final ultraHighSurfaceCombinations:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$AIKuh7GQDbRn08R1-pkBcnmI0Eg(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps$lambda$1(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZAyBRcPqp063M8JGaa-rqhb9m9A(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->Companion:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraMetadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoderProfilesProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureCombinationQuery"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 101
    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 102
    iput-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    .line 104
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/CameraMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    .line 106
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string p4, "INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    iput p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    .line 108
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/List;

    .line 109
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    .line 110
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/List;

    .line 111
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/List;

    .line 113
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/List;

    .line 114
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    .line 117
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    .line 118
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/List;

    .line 119
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    .line 125
    sget-object p3, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {p3, p2}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    .line 128
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/List;

    .line 129
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 131
    new-instance p3, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    invoke-direct {p3}, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->extraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    .line 132
    sget-object p3, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    invoke-virtual {p3, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 133
    new-instance p3, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

    invoke-direct {p3}, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolutionCorrector:Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

    .line 134
    new-instance p3, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    invoke-direct {p3}, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;-><init>()V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 135
    new-instance p3, Landroidx/camera/camera2/internal/DynamicRangeResolver;

    invoke-direct {p3, p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    iput-object p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    .line 136
    new-instance p4, Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-direct {p4, p2}, Landroidx/camera/camera2/internal/HighSpeedResolver;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    iput-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 139
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkCapabilities()V

    .line 140
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSupportedCombinationList()V

    .line 141
    iget-boolean p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    if-eqz p4, :cond_1

    .line 142
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateUltraHighResolutionSupportedCombinationList()V

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p4, "android.hardware.camera.concurrent"

    invoke-virtual {p1, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 144
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConcurrentCameraModeSupported:Z

    if-eqz p1, :cond_2

    .line 147
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateConcurrentSupportedCombinationList()V

    .line 150
    :cond_2
    invoke-virtual {p3}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->is10BitDynamicRangeSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 151
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generate10BitSupportedCombinationList()V

    .line 154
    :cond_3
    iget-boolean p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    if-eqz p1, :cond_4

    .line 155
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generatePreviewStabilizationSupportedCombinationList()V

    .line 158
    :cond_4
    sget-object p1, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isStreamUseCaseSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStreamUseCaseSupported:Z

    if-eqz p1, :cond_5

    .line 160
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateStreamUseCaseSupportedCombinationList()V

    .line 163
    :cond_5
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    return-void
.end method

.method public static final synthetic access$isPreviewStabilizationSupported$p(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    return p0
.end method

.method private final checkCapabilities()V
    .locals 3

    .line 1935
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "REQUEST_AVAILABLE_CAPABILITIES"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1938
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isRawSupported:Z

    const/4 v1, 0x6

    .line 1940
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v1

    .line 1939
    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isBurstCaptureSupported:Z

    const/16 v1, 0x10

    .line 1942
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v1

    .line 1941
    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    const/4 v1, 0x1

    .line 1947
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    .line 1946
    iput-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isManualSensorSupported:Z

    :cond_0
    return-void
.end method

.method public static synthetic checkSupported$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 177
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 178
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 179
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 174
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;
    .locals 10

    .line 1633
    invoke-virtual {p2, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    const-string v1, "intersect(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v0

    int-to-double v2, v0

    .line 1634
    invoke-virtual {p3, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p1

    int-to-double v0, p1

    .line 1635
    invoke-direct {p0, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p1

    int-to-double v4, p1

    div-double v4, v0, v4

    .line 1636
    invoke-direct {p0, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p1

    int-to-double v6, p1

    div-double v6, v2, v6

    cmpl-double p1, v0, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-lez p1, :cond_0

    cmpl-double p1, v4, v8

    if-gez p1, :cond_4

    cmpl-double p1, v4, v6

    if-ltz p1, :cond_5

    goto :goto_0

    :cond_0
    cmpg-double p1, v0, v2

    if-nez p1, :cond_3

    cmpl-double p1, v4, v6

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    cmpg-double p1, v4, v6

    if-nez p1, :cond_2

    .line 1648
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le p1, v0, :cond_5

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    cmpg-double p1, v6, v8

    if-gez p1, :cond_5

    cmpl-double p1, v4, v6

    if-lez p1, :cond_5

    :cond_4
    :goto_0
    return-object p3

    :cond_5
    return-object p2
.end method

.method private final createFeatureComboSessionConfig(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig;
    .locals 9

    .line 212
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    .line 214
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    .line 1879
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Landroidx/camera/core/impl/SurfaceConfig;

    .line 217
    invoke-virtual {v3}, Landroidx/camera/core/impl/SurfaceConfig;->getImageFormat()I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v5

    .line 216
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceConfig;->getResolution(Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroid/util/Size;

    move-result-object v5

    .line 222
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 225
    sget-object v6, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->Companion:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

    .line 228
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Landroidx/camera/core/DynamicRange;

    .line 226
    invoke-virtual {v6, v2, v5, v7}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;->createSessionConfigBuilder(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v5

    .line 232
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v6

    .line 233
    sget-object v7, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 234
    sget-object v6, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    .line 231
    :cond_2
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 237
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v6

    sget-object v7, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    const/4 v8, 0x2

    if-ne v6, v7, :cond_3

    .line 238
    invoke-virtual {v5, v8}, Landroidx/camera/core/impl/SessionConfig$Builder;->setPreviewStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    goto :goto_2

    .line 239
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v6

    sget-object v7, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-ne v6, v7, :cond_4

    .line 240
    invoke-virtual {v5, v8}, Landroidx/camera/core/impl/SessionConfig$Builder;->setVideoStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 244
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    .line 247
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    move-result v5

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create a combined SessionConfig for feature combo after adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    const-string v2, " with "

    .line 248
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string v2, " due to ["

    .line 248
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->getInvalidReason()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v2, "]; surfaceConfigList = "

    .line 248
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    const-string v2, ", featureSettings = "

    .line 248
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    const-string v2, ", newUseCaseConfigs = "

    .line 248
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {v5, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    move v2, v4

    goto/16 :goto_0

    .line 228
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_6
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createFeatureSettings(IZLjava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 11

    .line 795
    invoke-direct {p0, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRequiredMaxBitDepth(Ljava/util/Map;)I

    move-result v2

    .line 797
    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move v1, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    .line 809
    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object p1

    return-object p1
.end method

.method private final findBestSizesAndFps(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;
    .locals 24

    .line 1232
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const v0, 0x7fffffff

    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1234
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1235
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v1

    .line 1240
    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    .line 1247
    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v8

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move v10, v0

    const/16 p1, 0x0

    move-object/from16 v0, p0

    .line 1239
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceConfigList(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v8

    move-object/from16 v23, v7

    move-object v7, v6

    move-object/from16 v6, v23

    .line 1255
    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v5

    move-object/from16 v2, p3

    move/from16 v4, p4

    move-object v1, v3

    move-object/from16 v3, p5

    .line 1250
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCurrentConfigFrameRateCeiling(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)I

    move-result v5

    move-object/from16 v19, v1

    .line 1260
    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v1

    move/from16 v2, p4

    .line 1258
    invoke-direct {v0, v2, v1, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConfigFrameRateAcceptable(ILandroid/util/Range;I)Z

    move-result v20

    .line 1264
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1265
    move-object v1, v8

    check-cast v1, Ljava/lang/Iterable;

    .line 1879
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v22, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object/from16 v12, v21

    check-cast v12, Landroidx/camera/core/impl/SurfaceConfig;

    .line 1267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v11

    move-object/from16 v11, p8

    goto :goto_3

    .line 1269
    :cond_2
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v11, p8

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Landroidx/camera/core/DynamicRange;

    .line 1271
    :goto_3
    invoke-interface {v4, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, v22

    goto :goto_1

    .line 1269
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value was null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object/from16 v11, p8

    .line 1275
    sget-object v12, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object v3, v8

    move-object/from16 v22, v9

    move v9, v5

    move-object v8, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v0, v23

    invoke-static {v12, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    if-eqz p9, :cond_6

    .line 1285
    invoke-static {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps$lambda$2(Lkotlin/Lazy;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7fffffff

    if-ne v13, v2, :cond_5

    goto :goto_4

    :cond_5
    if-ge v13, v9, :cond_6

    :goto_4
    move v13, v9

    :cond_6
    const/4 v2, 0x1

    if-nez v15, :cond_a

    .line 1297
    invoke-static {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps$lambda$2(Lkotlin/Lazy;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7fffffff

    if-ne v14, v1, :cond_7

    goto :goto_5

    :cond_7
    if-ge v14, v9, :cond_8

    :goto_5
    move v14, v9

    move-object/from16 v17, v19

    :cond_8
    if-eqz v20, :cond_a

    if-eqz v16, :cond_9

    if-nez p9, :cond_9

    move-object/from16 v1, p6

    move v14, v9

    move-object/from16 v17, v19

    goto :goto_9

    :cond_9
    move v15, v2

    move v14, v9

    move-object/from16 v17, v19

    :cond_a
    if-eqz p7, :cond_f

    if-nez v16, :cond_f

    move-object/from16 v1, p6

    .line 1328
    invoke-direct {v0, v1, v3, v7, v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    const v3, 0x7fffffff

    if-ne v10, v3, :cond_b

    goto :goto_6

    :cond_b
    if-ge v10, v9, :cond_c

    :goto_6
    move v10, v9

    move-object/from16 v18, v19

    :cond_c
    if-eqz v20, :cond_e

    if-eqz v15, :cond_d

    if-nez p9, :cond_d

    move v10, v9

    move-object/from16 v18, v19

    goto :goto_9

    :cond_d
    move/from16 v16, v2

    move v0, v9

    move-object/from16 v18, v19

    :goto_7
    move-object/from16 v9, v22

    goto/16 :goto_0

    :cond_e
    :goto_8
    move v0, v10

    goto :goto_7

    :cond_f
    move-object/from16 v1, p6

    goto :goto_8

    :cond_10
    move-object/from16 v1, p6

    move v10, v0

    const/16 p1, 0x0

    move-object/from16 v0, p0

    :goto_9
    if-nez v17, :cond_11

    return-object p1

    .line 1361
    :cond_11
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1362
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v2

    sget-object v3, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const v2, 0x7fffffff

    if-eq v14, v2, :cond_12

    .line 1364
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ge v14, v1, :cond_13

    :cond_12
    return-object p1

    .line 1369
    :cond_13
    new-instance v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;

    move-object/from16 p2, v1

    move/from16 p6, v10

    move/from16 p7, v13

    move/from16 p5, v14

    move-object/from16 p3, v17

    move-object/from16 p4, v18

    invoke-direct/range {p2 .. p7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;-><init>(Ljava/util/List;Ljava/util/List;III)V

    return-object v1
.end method

.method private static final findBestSizesAndFps$lambda$1(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 1276
    invoke-virtual/range {p0 .. p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static final findBestSizesAndFps$lambda$2(Lkotlin/Lazy;)Z
    .locals 0

    .line 1275
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final generate10BitSupportedCombinationList()V
    .locals 2

    .line 2000
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/List;

    .line 2001
    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->get10BitSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2000
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateConcurrentSupportedCombinationList()V
    .locals 2

    .line 1970
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/List;

    .line 1971
    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getConcurrentSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1970
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateHighSpeedSupportedCombinationList()V
    .locals 3

    .line 1982
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1985
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1987
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getMaxSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1988
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    const/16 v2, 0x22

    .line 1991
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v2

    .line 1989
    invoke-static {v0, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->generateHighSpeedSupportedCombinationList(Landroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1988
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final generatePreviewStabilizationSupportedCombinationList()V
    .locals 2

    .line 1976
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/List;

    .line 1977
    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getPreviewStabilizationSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1976
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateStreamUseCaseSupportedCombinationList()V
    .locals 2

    .line 2012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 2013
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/List;

    .line 2014
    sget-object v1, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getStreamUseCaseSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2013
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private final generateSuggestedStreamSpecMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/Map;
    .locals 6

    .line 1414
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1415
    sget-object v1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 1416
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1419
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getFrameRateRangesFor(Ljava/util/List;)[Landroid/util/Range;

    move-result-object v1

    goto :goto_0

    .line 1422
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    .line 1426
    :goto_0
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v2

    .line 1427
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result v3

    .line 1425
    invoke-direct {p0, v2, v3, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 1431
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1432
    :cond_1
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 1433
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Target FPS range "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported. Max FPS supported by the calculated best combination: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result p1

    .line 1433
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1435
    const-string p1, ". Calculated best FPS range for device: "

    .line 1433
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1436
    const-string p1, ". Device supported FPS ranges: "

    .line 1433
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "toString(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1432
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1441
    :cond_4
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1446
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getFrameRateRangesFor(Ljava/util/List;)[Landroid/util/Range;

    move-result-object v1

    .line 1449
    sget-object v2, Landroidx/camera/camera2/internal/HighSpeedResolver;->Companion:Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;->getDEFAULT_FPS()Landroid/util/Range;

    move-result-object v2

    .line 1450
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result v3

    .line 1448
    invoke-direct {p0, v2, v3, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 1455
    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1457
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 1459
    invoke-static {v2}, Landroidx/camera/core/impl/StreamSpec;->builder(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v2

    .line 1461
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v5

    .line 1460
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/StreamSpec$Builder;->setSessionType(I)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v2

    .line 1464
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    check-cast v5, Landroidx/camera/core/DynamicRange;

    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/StreamSpec$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v2

    .line 1466
    sget-object v5, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v5, v4}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getStreamSpecImplementationOptions(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v5

    .line 1465
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v2

    .line 1468
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getHasVideoCapture()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/StreamSpec$Builder;->setZslDisabled(Z)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v2

    const-string/jumbo v5, "setZslDisabled(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1470
    sget-object v5, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1471
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/StreamSpec$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 1473
    :cond_6
    invoke-virtual {v2}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto :goto_2

    .line 1464
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object v0
.end method

.method private final generateSupportedCombinationList()V
    .locals 4

    .line 1953
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    .line 1955
    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    .line 1956
    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isRawSupported:Z

    .line 1957
    iget-boolean v3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isBurstCaptureSupported:Z

    .line 1954
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->generateSupportedCombinationList(IZZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1953
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1960
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->extraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateSurfaceSizeDefinition()V
    .locals 10

    .line 2024
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    .line 2025
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRecordSize()Landroid/util/Size;

    move-result-object v5

    .line 2028
    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_VGA:Landroid/util/Size;

    .line 2029
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2031
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2033
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2034
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2035
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2036
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2027
    invoke-static/range {v1 .. v9}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->setSurfaceSizeDefinition$camera_camera2(Landroidx/camera/core/impl/SurfaceSizeDefinition;)V

    return-void
.end method

.method private final generateUltraHdrSupportedCombinationList()V
    .locals 2

    .line 2006
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    .line 2007
    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getUltraHdrSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2006
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final generateUltraHighResolutionSupportedCombinationList()V
    .locals 2

    .line 1964
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/List;

    .line 1965
    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getUltraHighResolutionSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1964
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;
    .locals 13

    .line 2315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2316
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_5

    .line 2323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 2327
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2340
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v2, v4

    .line 2341
    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    move v7, v2

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_4

    .line 2342
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move v9, v3

    :goto_3
    if-ge v9, v2, :cond_2

    .line 2344
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 2345
    rem-int v11, v9, v7

    div-int/2addr v11, v4

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2347
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v6, v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    .line 2349
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int v7, v4, v7

    move v12, v7

    move v7, v4

    move v4, v12

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    .line 2322
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to find supported resolutions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getAndValidateIsStrictFpsRequired(ZLjava/lang/Boolean;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 1823
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1828
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All isStrictFpsRequired should be the same"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method private final getCheckingMethod(Ljava/util/Collection;Landroid/util/Range;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZ)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;
    .locals 0

    if-nez p5, :cond_0

    .line 743
    sget-object p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p1

    .line 750
    :cond_0
    sget-object p5, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    invoke-interface {p1, p5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p2, :cond_2

    .line 753
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p5, 0x3c

    if-ne p2, p5, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 757
    :cond_2
    :goto_0
    sget-object p2, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-eq p3, p2, :cond_3

    .line 758
    sget-object p2, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-ne p3, p2, :cond_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 p1, p1, 0x1

    :cond_5
    const/4 p2, 0x1

    if-le p1, p2, :cond_6

    .line 767
    sget-object p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITH_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p1

    :cond_6
    if-ne p1, p2, :cond_7

    .line 769
    sget-object p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p1

    .line 771
    :cond_7
    sget-object p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p1
.end method

.method private final getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;
    .locals 7

    .line 1693
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FRAME_RATE_RANGE_UNSPECIFIED"

    if-eqz v1, :cond_0

    .line 1694
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    .line 1697
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1706
    :cond_1
    new-instance v1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    const-string v3, "getLower(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    const-string v3, "getUpper(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1709
    array-length p1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_a

    aget-object v4, p3, v2

    .line 1711
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ge p2, v5, :cond_2

    goto/16 :goto_2

    .line 1714
    :cond_2
    sget-object v5, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v4

    .line 1718
    :cond_3
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    goto/16 :goto_3

    .line 1724
    :cond_4
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    .line 1725
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v5

    if-nez v3, :cond_5

    move-object v0, v4

    move v3, v5

    goto :goto_2

    :cond_5
    if-lt v5, v3, :cond_9

    .line 1734
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    .line 1735
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    const-string v6, "intersect(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-eqz v3, :cond_6

    goto :goto_2

    .line 1744
    :cond_6
    invoke-direct {p0, v4, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v5

    .line 1745
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v6

    if-ge v5, v6, :cond_7

    goto :goto_1

    .line 1749
    :cond_7
    invoke-direct {p0, v4, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v5

    .line 1750
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 1752
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v5, v6, :cond_8

    goto :goto_1

    .line 1755
    :cond_8
    invoke-direct {p0, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v6

    if-ge v5, v6, :cond_9

    :goto_1
    move-object v0, v4

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1763
    :cond_a
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getCombinedMaximumFps(IILandroid/util/Size;ZI)I
    .locals 0

    .line 1851
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;ZI)I

    move-result p2

    .line 1852
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final getCurrentConfigFrameRateCeiling(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)I
    .locals 7

    .line 1545
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v2, p4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/Size;

    .line 1546
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1552
    invoke-interface {v0}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v3

    .line 1555
    invoke-interface {v0, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    move-result v6

    move-object v1, p0

    move v5, p5

    .line 1550
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCombinedMaximumFps(IILandroid/util/Size;ZI)I

    move-result v2

    move v0, p4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final getMaxFrameRate(ILandroid/util/Size;)I
    .locals 5

    .line 1579
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 1581
    iget-boolean v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isManualSensorSupported:Z

    if-eqz v2, :cond_1

    .line 1582
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v2, "CXCP"

    invoke-static {v2}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    .line 1583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minFrameDuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is invalid for imageFormat = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1

    :cond_2
    const-wide p1, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v0, v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private final getMaxFrameRate(ILandroid/util/Size;ZI)I
    .locals 0

    if-eqz p3, :cond_1

    const/16 p3, 0x22

    if-ne p1, p3, :cond_0

    .line 1570
    iget-object p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getMaxFrameRate(Landroid/util/Size;)I

    move-result p1

    goto :goto_0

    .line 1569
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1572
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;)I

    move-result p1

    .line 1574
    :goto_0
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public static synthetic getMaxOutputSizeByFormat$camera_camera2$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;ILjava/lang/Object;)Landroid/util/Size;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2252
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private final getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;Z)I
    .locals 7

    .line 1073
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 1078
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImageFormat()I

    move-result v3

    .line 1079
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSize()Landroid/util/Size;

    move-result-object v4

    const-string v1, "getSize(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getCustomMaxFrameRate()I

    move-result v6

    move-object v1, p0

    move v5, p2

    .line 1076
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCombinedMaximumFps(IILandroid/util/Size;ZI)I

    move-result v2

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 4

    .line 265
    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->shouldUseStreamUseCase(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 268
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 270
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 273
    sget-object v2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v2, p3, p4, v1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areCaptureTypesEligible(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    move-result v2

    .line 278
    new-instance v3, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)V

    invoke-static {v3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 284
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static final getOrderedSupportedStreamUseCaseSurfaceConfigList$lambda$0(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/List;)Z
    .locals 1

    .line 279
    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    .line 280
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 279
    invoke-virtual {v0, p0, p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areStreamUseCasesAvailableForSurfaceConfigs(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final getOrderedSurfaceConfigListForStreamUseCase(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 10

    .line 920
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 923
    invoke-virtual {p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v2

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 922
    invoke-direct/range {v1 .. v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceConfigList(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 933
    invoke-direct {p0, p5, v0, v7, v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 942
    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 943
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final getOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;ILandroid/util/Rational;)[Landroid/util/Size;
    .locals 5

    const/4 v0, 0x0

    .line 2282
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/16 v1, 0x22

    if-ne p2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2294
    const-class p2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    .line 2296
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    .line 2282
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2299
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, [Landroid/util/Size;

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    .line 3829
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4344
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 2302
    invoke-static {v3, p3}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4344
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 38
    :cond_4
    new-array p1, v1, [Landroid/util/Size;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    :cond_5
    move-object v0, p1

    :cond_6
    return-object v0
.end method

.method private final getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I
    .locals 3

    .line 1606
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1610
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "getUpper(...)"

    if-le v0, v1, :cond_0

    .line 1611
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 1613
    :cond_0
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    .line 1605
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ranges must not intersect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getRangeLength(Landroid/util/Range;)I
    .locals 2

    .line 1600
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    const-string v1, "getLower(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final getRecordSize()Landroid/util/Size;
    .locals 2

    .line 2136
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2138
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRecordSizeFromCamcorderProfile()Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    .line 2146
    :catch_0
    :cond_0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRecordSizeFromStreamConfigurationMapCompat()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2151
    :cond_1
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    const-string v1, "RESOLUTION_480P"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getRecordSizeFromCamcorderProfile()Landroid/util/Size;
    .locals 14

    const/4 v0, 0x1

    .line 2194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    .line 2195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    .line 2196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    .line 2197
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xc

    .line 2198
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    .line 2199
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    .line 2200
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    .line 2201
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v13, 0x0

    aput-object v1, v4, v13

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    aput-object v6, v4, v11

    aput-object v8, v4, v9

    aput-object v10, v4, v7

    const/4 v0, 0x7

    aput-object v12, v4, v0

    .line 2193
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 2205
    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2206
    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    invoke-interface {v2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2207
    invoke-interface {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v2

    const-string v3, "getVideoProfiles(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2208
    invoke-interface {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v0}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getResolution()Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getRecordSizeFromStreamConfigurationMapCompat()Landroid/util/Size;
    .locals 8

    .line 2169
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 2171
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_0

    .line 2174
    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    .line 2171
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2176
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, [Landroid/util/Size;

    if-nez v0, :cond_2

    return-object v1

    .line 2177
    :cond_2
    new-instance v2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2178
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 2179
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    sget-object v6, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v5, v7, :cond_3

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method private final getRequiredMaxBitDepth(Ljava/util/Map;)I
    .locals 2

    .line 1481
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 1482
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    const/16 p1, 0x8

    return p1
.end method

.method private final getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
    .locals 4

    .line 2157
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "SCALER_STREAM_CONFIGURATION_MAP"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_0

    .line 2159
    new-instance v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    new-instance v2, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    iget-object v3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-direct {v2, v3, v0}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    invoke-direct {v1, v0, v2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V

    return-object v1

    .line 2158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getSupportedOutputSizesList(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1006
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/List;

    .line 1010
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v1

    .line 1008
    invoke-virtual {p0, v2, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 1012
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;
    .locals 4

    .line 296
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 299
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    sget-object v1, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getQueryableFcqCombinations$camera_camera2(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/stabilization/VideoStabilization;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 304
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateUltraHdrSupportedCombinationList()V

    .line 309
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_a

    .line 310
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 312
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 313
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateHighSpeedSupportedCombinationList()V

    .line 316
    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 317
    :cond_5
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 318
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 327
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-ne v1, v2, :cond_6

    .line 328
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/List;

    goto :goto_0

    .line 329
    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    :goto_0
    check-cast v1, Ljava/util/Collection;

    .line 326
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 322
    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 320
    :cond_8
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/List;

    goto :goto_1

    .line 333
    :cond_9
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 335
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_a

    .line 336
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_a
    :goto_1
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final getSurfaceConfigList(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/List;
    .locals 14

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 1499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 1501
    invoke-virtual {v4}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    const-string v6, "getSurfaceConfig(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 1503
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1509
    :cond_1
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/util/Size;

    move-object/from16 v5, p5

    .line 1510
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v13, p4

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1511
    invoke-interface {v3}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v7

    .line 1512
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v12

    const-string v6, "getStreamUseCase(...)"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1515
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    .line 1518
    invoke-virtual {p0, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v9

    if-eqz p8, :cond_2

    .line 1522
    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->FEATURE_COMBINATION_TABLE:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    :goto_2
    move-object v11, v10

    move v10, p1

    goto :goto_3

    .line 1524
    :cond_2
    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    goto :goto_2

    .line 1515
    :goto_3
    invoke-virtual/range {v6 .. v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v6

    .line 1528
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    .line 1530
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private final getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Landroid/util/Range;
    .locals 3

    .line 1023
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    const-string v1, "FRAME_RATE_RANGE_UNSPECIFIED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 1028
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getTargetFrameRate()Landroid/util/Range;

    move-result-object v1

    const-string v2, "getTargetFrameRate(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0, v1, v0, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 1037
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/impl/UseCaseConfig;

    sget-object v1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-interface {p3, v1}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1036
    invoke-direct {p0, p3, v0, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private final getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;
    .locals 2

    .line 1788
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1789
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1791
    const-string p1, "FRAME_RATE_RANGE_UNSPECIFIED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1792
    :cond_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 1794
    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 1802
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 1803
    const-string p3, "All targetFrameRate should be the same if strict fps is required"

    .line 1801
    invoke-static {p2, p3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-object p1

    .line 1809
    :cond_3
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    .line 1807
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_0
    return-object p2
.end method

.method private final getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 2222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 2225
    invoke-interface {v3, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v3

    .line 2226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2230
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 2233
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .line 2234
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    :cond_2
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 2235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/core/impl/UseCaseConfig;

    .line 2236
    invoke-interface {v7, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v8

    if-ne v5, v8, :cond_3

    .line 2237
    invoke-interface {p1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private final isConfigFrameRateAcceptable(ILandroid/util/Range;I)Z
    .locals 1

    .line 1384
    sget-object v0, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ge p3, p1, :cond_0

    .line 1394
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ge p3, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private final isStrictFpsRequired(Ljava/util/List;Ljava/util/List;)Z
    .locals 2

    .line 1050
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 1053
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->isStrictFrameRateRequired()Z

    move-result v1

    .line 1052
    invoke-direct {p0, v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getAndValidateIsStrictFpsRequired(ZLjava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1061
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig;->isStrictFrameRateRequired()Z

    move-result p2

    .line 1060
    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getAndValidateIsStrictFpsRequired(ZLjava/lang/Boolean;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1065
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final isUseCasesCombinationSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z
    .locals 11

    .line 867
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 870
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 871
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v0

    const-string v1, "getSurfaceConfig(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 876
    :cond_0
    new-instance p2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {p2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 877
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    .line 878
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 879
    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_3

    .line 882
    invoke-static {v3, p2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/util/Size;

    .line 883
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v5

    .line 884
    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v10

    const-string v1, "getStreamUseCase(...)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    .line 888
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 889
    invoke-virtual {p0, v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v7

    .line 890
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v8

    .line 892
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    .line 886
    invoke-virtual/range {v4 .. v10}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    .line 885
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 880
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No available output size is found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 879
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 901
    invoke-static/range {v0 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final populateReducedSizeListAndUniqueMaxFpsMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Size;IILandroidx/camera/core/impl/StreamUseCase;ZLjava/util/Map;Ljava/util/List;)V
    .locals 7

    .line 1135
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    .line 1138
    invoke-virtual {p0, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v3

    .line 1139
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v4

    .line 1141
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->FEATURE_COMBINATION_TABLE:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    :goto_0
    move-object v2, p2

    move-object v6, p5

    move-object v5, v1

    move v1, p3

    goto :goto_1

    .line 1144
    :cond_0
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    goto :goto_0

    .line 1135
    :goto_1
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p2

    .line 1148
    invoke-virtual {p2}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigSize()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-result-object p2

    .line 1153
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p3

    sget-object p5, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p6, :cond_1

    goto :goto_2

    :cond_1
    const p3, 0x7fffffff

    goto :goto_3

    .line 1156
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result p3

    invoke-direct {p0, v1, v2, p3, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;ZI)I

    move-result p3

    .line 1166
    :goto_3
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1167
    sget-object p4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    if-eq p2, p4, :cond_5

    .line 1168
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p4

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 1169
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ge p3, p1, :cond_3

    goto :goto_4

    .line 1174
    :cond_3
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_4

    .line 1177
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1178
    invoke-interface {p7, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1207
    invoke-interface {p8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    return-void
.end method

.method private final populateStreamUseCaseIfSameSavedSizes(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 966
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForBestSizes()I

    move-result v0

    .line 967
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForStreamUseCase()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 968
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 969
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizesForStreamUseCase()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 972
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getBestSizesForStreamUseCase()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1761
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, p3

    move-object p3, p5

    move-object p5, p6

    move-object p6, p7

    move-object p7, p2

    goto :goto_0

    .line 1762
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 973
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 977
    :goto_0
    sget-object p2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    .line 978
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 977
    invoke-virtual {p2, v0, p1, p3, p4}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithInteropOverride(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 985
    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private final refreshPreviewSize()V
    .locals 10

    .line 1912
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->refreshPreviewSize()V

    .line 1913
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    if-nez v0, :cond_0

    .line 1914
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    return-void

    .line 1916
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    .line 1919
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getAnalysisSize()Landroid/util/Size;

    move-result-object v1

    .line 1920
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    move-result-object v2

    .line 1922
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    move-result-object v4

    .line 1923
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    move-result-object v5

    .line 1924
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    move-result-object v6

    .line 1925
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum4x3SizeMap()Ljava/util/Map;

    move-result-object v7

    .line 1926
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum16x9SizeMap()Ljava/util/Map;

    move-result-object v8

    .line 1927
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    move-result-object v9

    .line 1918
    invoke-static/range {v1 .. v9}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->setSurfaceSizeDefinition$camera_camera2(Landroidx/camera/core/impl/SurfaceSizeDefinition;)V

    return-void
.end method

.method private final resolveSpecsByCheckingMethod(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 23

    move-object/from16 v1, p0

    .line 527
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v9, "CXCP"

    invoke-static {v9}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveSpecsByCheckingMethod: checkingMethod = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    .line 529
    :goto_0
    sget-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/16 v21, 0x37f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p2

    .line 571
    :try_start_0
    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 570
    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 580
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 95
    invoke-static {v9}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    .line 581
    const-string v3, "Failed to find a supported combination without feature combo, trying again with feature combo"

    .line 96
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/16 v21, 0x37f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p2

    .line 586
    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 585
    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    :goto_1
    return-object v0

    .line 529
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 544
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v0

    sget-object v2, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    if-ne v0, v2, :cond_5

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    sget-object v0, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    :goto_2
    move-object/from16 v19, v0

    goto :goto_3

    .line 550
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v0

    goto :goto_2

    .line 553
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getTargetFpsRange()Landroid/util/Range;

    move-result-object v0

    goto :goto_2

    :goto_3
    const/16 v21, 0x27f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v10, p2

    .line 558
    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    .line 559
    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 556
    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v21, 0x37f

    const/16 v22, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p2

    .line 532
    invoke-static/range {v10 .. v22}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 531
    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v0

    return-object v0
.end method

.method private final resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 617
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v10, "CXCP"

    invoke-static {v10}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolveSpecsBySettings: featureSettings = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    invoke-virtual {v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v1

    const/16 v11, 0x2e

    const-string v12, ". New configs: "

    const-string v13, "No supported surface combination is found for camera device - Id : "

    if-nez v1, :cond_1

    .line 623
    invoke-direct/range {p0 .. p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUseCasesCombinationSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object/from16 v1, p3

    move/from16 v9, p7

    goto :goto_0

    .line 629
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". May be attempting to bind too many use cases. Existing surfaces: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 631
    const-string v2, ". GroupableFeature settings: "

    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :goto_0
    invoke-virtual {v0, v1, v5, v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->filterSupportedSizes$camera_camera2(Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Z)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v4, p5

    .line 645
    invoke-direct {v0, v1, v3, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSupportedOutputSizesList(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 657
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 658
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 660
    invoke-virtual {v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 661
    iget-object v8, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v8, v1}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getSizeArrangements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 662
    :cond_3
    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 664
    :goto_1
    sget-object v8, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v8, v2, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->containsZslUseCase(Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    .line 667
    iget-boolean v14, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStreamUseCaseSupported:Z

    if-eqz v14, :cond_5

    if-nez v8, :cond_5

    .line 669
    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSurfaceConfigListForStreamUseCase(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    move-object v14, v6

    move-object v15, v7

    .line 85
    invoke-static {v10}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    .line 679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orderedSurfaceConfigListForStreamUseCase = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    move-object v7, v8

    goto :goto_3

    :cond_5
    move-object v14, v6

    move-object v15, v7

    const/4 v8, 0x0

    goto :goto_2

    .line 684
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;Z)I

    move-result v4

    move-object/from16 v6, p1

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    .line 687
    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->findBestSizesAndFps(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/List;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 85
    invoke-static {v10}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveSpecsBySettings: bestSizesAndFps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 709
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSuggestedStreamSpecMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/Map;

    move-result-object v5

    .line 716
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object v2, v7

    move-object v6, v14

    move-object v7, v15

    .line 718
    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->populateStreamUseCaseIfSameSavedSizes(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 728
    new-instance v2, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    .line 731
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->getMaxFpsForAllSizes()I

    move-result v1

    .line 728
    invoke-direct {v2, v5, v4, v1}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v2

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and Hardware level: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget v4, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    .line 700
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    const-string v4, ". May be the specified resolution is too large and not supported. Existing surfaces: "

    .line 700
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V
    .locals 2

    .line 2110
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const/4 v1, 0x1

    .line 2111
    invoke-virtual {p0, v0, p2, v1, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic updateMaximumSizeByFormat$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/Map;ILandroid/util/Rational;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2105
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V

    return-void
.end method

.method private final updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V
    .locals 8

    .line 2090
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConcurrentCameraModeSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 2094
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p3

    .line 2095
    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;ILjava/lang/Object;)Landroid/util/Size;

    move-result-object p3

    .line 2096
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 2100
    new-array v1, v1, [Landroid/util/Size;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    new-instance p3, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {p3}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-static {p2, p3}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    .line 2096
    :goto_0
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V
    .locals 8

    .line 2120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2125
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-static {}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    const-string v2, "SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p2

    .line 2127
    invoke-static/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;ILjava/lang/Object;)Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private final validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 4

    .line 813
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v0

    const-string v1, " camera mode."

    const-string v2, "Camera device Id is "

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Ultra HDR is not currently supported in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    move-result-object p1

    .line 814
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 822
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". 10 bit dynamic range is not currently supported in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 827
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". feature combination is not currently supported in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    move-result-object p1

    .line 827
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 826
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "High-speed session is not supported with feature combination"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 835
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "High-speed session is not supported on this device."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    return-object p1
.end method


# virtual methods
.method public final applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;
    .locals 5

    const-string/jumbo v0, "sizeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1874
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->get(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1882
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Undefined targetAspectRatio: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/16 v0, 0x100

    .line 1878
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v1

    .line 1879
    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSize(I)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1880
    new-instance v2, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v2, v1, v0}, Landroid/util/Rational;-><init>(II)V

    goto :goto_0

    .line 1876
    :cond_2
    sget-object v2, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    goto :goto_0

    .line 1875
    :cond_3
    sget-object v2, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 1886
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 1888
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1889
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1890
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 1891
    invoke-static {v3, v2}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1892
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1894
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 1897
    invoke-interface {v1, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-object p1, v1

    .line 1901
    :goto_2
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolutionCorrector:Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;

    .line 1902
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->getConfigType(I)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-result-object p2

    .line 1901
    invoke-virtual {v0, p2, p1}, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;->insertOrPrioritize(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    const-string v0, "featureSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceConfigList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicRangesBySurfaceConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newUseCaseConfigs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCasesPriorityOrder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1761
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 183
    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 186
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->getRequiresFeatureComboQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->createFeatureComboSessionConfig(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    move-object p2, p0

    .line 196
    iget-object p3, p2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    invoke-interface {p3, p1}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->isSupported(Landroidx/camera/core/impl/SessionConfig;)Z

    move-result p3

    .line 198
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object p1

    const-string p4, "getSurfaces(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/core/impl/DeferrableSurface;

    .line 198
    invoke-virtual {p4}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    goto :goto_1

    :cond_3
    return p3

    :cond_4
    move-object p2, p0

    return v2
.end method

.method public final filterSupportedSizes$camera_camera2(Ljava/util/Map;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Z)Ljava/util/Map;
    .locals 13

    const-string v0, "newUseCaseConfigsSupportedSizeMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1101
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1102
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1104
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/util/Size;

    .line 1105
    invoke-interface {v2}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result v6

    .line 1106
    invoke-interface {v2, v5}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    move-result v7

    .line 1107
    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    move-result-object v8

    const-string v3, "getStreamUseCase(...)"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p2

    move/from16 v9, p3

    .line 1108
    invoke-direct/range {v3 .. v11}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->populateReducedSizeListAndUniqueMaxFpsMap(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Size;IILandroidx/camera/core/impl/StreamUseCase;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_1

    .line 1119
    :cond_0
    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;
    .locals 3

    .line 2258
    invoke-direct {p0, p1, p2, p4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;ILandroid/util/Rational;)[Landroid/util/Size;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    .line 2259
    array-length v1, p4

    if-nez v1, :cond_0

    goto :goto_1

    .line 2262
    :cond_0
    new-instance v1, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 2263
    invoke-static {p4}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    invoke-static {p4, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Size;

    .line 2264
    sget-object v2, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_1

    .line 2267
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 2268
    array-length p1, v0

    if-nez p1, :cond_2

    goto :goto_0

    .line 2270
    :cond_2
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/util/Size;

    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 2274
    new-array p1, p1, [Landroid/util/Size;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    const/4 p2, 0x1

    aput-object v2, p1, p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final getSuggestedStreamSpecifications(ILjava/util/List;Ljava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move/from16 v5, p6

    const-string v2, "attachedSurfaces"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newUseCaseConfigsSupportedSizeMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "videoStabilization"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-direct {v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->refreshPreviewSize()V

    .line 399
    sget-object v2, Landroidx/camera/camera2/internal/HighSpeedResolver;->Companion:Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;

    .line 400
    move-object v4, v11

    check-cast v4, Ljava/util/Collection;

    .line 401
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 399
    invoke-virtual {v2, v4, v6}, Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;->isHighSpeedOn(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    iget-object v2, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-virtual {v2, v1}, Landroidx/camera/camera2/internal/HighSpeedResolver;->filterCommonSupportedSizes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :cond_0
    move-object v12, v1

    .line 412
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v13

    .line 415
    invoke-direct {v0, v13}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 417
    iget-object v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->dynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    invoke-virtual {v1, v11, v13, v14}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->resolveAndValidateDynamicRanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 423
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v2

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolvedDynamicRanges = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1
    sget-object v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->Companion:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;

    invoke-static {v2, v11, v12}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;->access$isUltraHdrOn(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;Ljava/util/List;Ljava/util/Map;)Z

    move-result v4

    if-eqz p7, :cond_2

    .line 432
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_0

    .line 434
    :cond_2
    invoke-direct {v0, v11, v13}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStrictFpsRequired(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 436
    invoke-direct {v0, v11, v13, v14, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Landroid/util/Range;

    move-result-object v8

    .line 442
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 428
    :goto_0
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/util/Range;

    .line 445
    sget-object v2, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-ne v3, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 85
    :goto_1
    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 448
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getSuggestedStreamSpecifications: isPreviewStabilizationSupported = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->access$isPreviewStabilizationSupported$p(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;)Z

    move-result v15

    .line 448
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    const-string v15, ", isFeatureComboInvocation = "

    .line 448
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_6

    .line 454
    iget-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    if-nez v1, :cond_6

    if-nez v5, :cond_5

    goto :goto_2

    .line 457
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preview stabilization is not supported by the camera."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_6
    :goto_2
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x0

    move v1, v4

    move-object v4, v3

    move-object v3, v7

    move v7, v5

    move v5, v1

    move/from16 v1, p1

    move/from16 v2, p5

    .line 463
    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->createFeatureSettings(IZLjava/util/Map;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v6

    move-object v7, v3

    move v4, v5

    .line 478
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move/from16 v5, p6

    move-object v2, v9

    .line 477
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getCheckingMethod(Ljava/util/Collection;Landroid/util/Range;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZ)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    move-result-object v1

    move/from16 v8, p7

    move-object v2, v6

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    .line 485
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsByCheckingMethod(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Z)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public final getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "surfaceSizeDefinition"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .locals 7

    .line 2043
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2045
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getS720pSizeMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2046
    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_720P:Landroid/util/Size;

    const-string v2, "RESOLUTION_720P"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2044
    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    .line 2050
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getS1440pSizeMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2051
    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1440P:Landroid/util/Size;

    const-string v2, "RESOLUTION_1440P"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    .line 2054
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    move-result-object v2

    const-string v0, "getMaximumSizeMap(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;Ljava/util/Map;ILandroid/util/Rational;ILjava/lang/Object;)V

    .line 2056
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum4x3SizeMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "getMaximum4x3SizeMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2058
    sget-object v0, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    .line 2055
    invoke-direct {p0, p1, v3, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V

    .line 2061
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximum16x9SizeMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "getMaximum16x9SizeMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2063
    sget-object v0, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    .line 2060
    invoke-direct {p0, p1, v3, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;ILandroid/util/Rational;)V

    .line 2065
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "getUltraMaximumSizeMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V

    .line 2066
    iget-object p1, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 2068
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object p1

    return-object p1
.end method

.method public final setSurfaceSizeDefinition$camera_camera2(Landroidx/camera/core/impl/SurfaceSizeDefinition;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    return-void
.end method

.method public final transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 8

    const-string/jumbo v0, "size"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    .line 360
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v4

    .line 363
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    move v5, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 357
    invoke-virtual/range {v1 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p1

    return-object p1
.end method
