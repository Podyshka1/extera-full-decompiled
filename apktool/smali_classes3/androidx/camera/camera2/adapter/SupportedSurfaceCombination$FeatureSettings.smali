.class public final Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureSettings"
.end annotation


# instance fields
.field private final cameraMode:I

.field private final hasVideoCapture:Z

.field private final isFeatureComboInvocation:Z

.field private final isHighSpeedOn:Z

.field private final isStrictFpsRequired:Z

.field private final isUltraHdrOn:Z

.field private final requiredMaxBitDepth:I

.field private final requiresFeatureComboQuery:Z

.field private final targetFpsRange:Landroid/util/Range;

.field private final videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;


# direct methods
.method public constructor <init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V
    .locals 1

    const-string/jumbo v0, "videoStabilization"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetFpsRange"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2370
    iput p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 2371
    iput p2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    .line 2372
    iput-boolean p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    .line 2373
    iput-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 2374
    iput-boolean p5, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    .line 2375
    iput-boolean p6, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    .line 2376
    iput-boolean p7, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    .line 2377
    iput-boolean p8, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    .line 2378
    iput-object p9, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    .line 2379
    iput-boolean p10, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x4

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_1

    .line 2373
    sget-object p4, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    :cond_1
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_2

    move p5, v0

    :cond_2
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_3

    move p6, v0

    :cond_3
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_4

    move p7, v0

    :cond_4
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_5

    move p8, v0

    :cond_5
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_6

    .line 2378
    sget-object p9, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    const-string p12, "FRAME_RATE_RANGE_UNSPECIFIED"

    invoke-static {p9, p12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_7

    move p11, v0

    :goto_0
    move-object p10, p9

    move p9, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_7
    move p11, p10

    goto :goto_0

    .line 2369
    :goto_1
    invoke-direct/range {p1 .. p11}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;ZILjava/lang/Object;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget p2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-boolean p3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-boolean p5, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-boolean p6, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-boolean p7, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-boolean p8, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    iget-object p9, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    iget-boolean p10, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    :cond_9
    move-object p11, p9

    move p12, p10

    move p9, p7

    move p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;
    .locals 12

    const-string/jumbo v0, "videoStabilization"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetFpsRange"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    iget v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    iget v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    iget-boolean p1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCameraMode()I
    .locals 1

    .line 2370
    iget v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    return v0
.end method

.method public final getHasVideoCapture()Z
    .locals 1

    .line 2372
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    return v0
.end method

.method public final getRequiredMaxBitDepth()I
    .locals 1

    .line 2371
    iget v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    return v0
.end method

.method public final getRequiresFeatureComboQuery()Z
    .locals 1

    .line 2377
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    return v0
.end method

.method public final getTargetFpsRange()Landroid/util/Range;
    .locals 1

    .line 2378
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    return-object v0
.end method

.method public final getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    .line 2373
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFeatureComboInvocation()Z
    .locals 1

    .line 2376
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    return v0
.end method

.method public final isHighSpeedOn()Z
    .locals 1

    .line 2375
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    return v0
.end method

.method public final isStrictFpsRequired()Z
    .locals 1

    .line 2379
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    return v0
.end method

.method public final isUltraHdrOn()Z
    .locals 1

    .line 2374
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureSettings(cameraMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requiredMaxBitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasVideoCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoStabilization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUltraHdrOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHighSpeedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFeatureComboInvocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requiresFeatureComboQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetFpsRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStrictFpsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
