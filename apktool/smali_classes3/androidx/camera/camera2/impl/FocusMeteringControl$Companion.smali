.class public final Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/FocusMeteringControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;-><init>()V

    return-void
.end method

.method private final getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Landroid/graphics/PointF;
    .locals 5

    .line 488
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getSurfaceAspectRatio()Landroid/util/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    .line 490
    :goto_0
    invoke-interface {p5, p1, p4}, Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;->getCorrectedPoint(Landroidx/camera/core/MeteringPoint;I)Landroid/graphics/PointF;

    move-result-object p1

    .line 491
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 492
    invoke-virtual {p3, p2}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p4

    const/high16 p5, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lez p4, :cond_1

    .line 493
    new-instance p4, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p4, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 497
    invoke-virtual {p3}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide p1

    div-double/2addr v3, p1

    double-to-float p1, v3

    float-to-double p2, p1

    sub-double/2addr p2, v1

    int-to-double v0, v0

    div-double/2addr p2, v0

    double-to-float p2, p2

    .line 499
    iget p3, p4, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p3

    div-float/2addr p5, p1

    mul-float/2addr p2, p5

    iput p2, p4, Landroid/graphics/PointF;->y:F

    return-object p4

    .line 502
    :cond_1
    new-instance p4, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p4, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 506
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v3

    div-double/2addr p1, v3

    double-to-float p1, p1

    float-to-double p2, p1

    sub-double/2addr p2, v1

    int-to-double v0, v0

    div-double/2addr p2, v0

    double-to-float p2, p2

    .line 508
    iget p3, p4, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    div-float/2addr p5, p1

    mul-float/2addr p2, p5

    iput p2, p4, Landroid/graphics/PointF;->x:F

    return-object p4

    .line 512
    :cond_2
    new-instance p2, Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private final getMeteringRect(Landroid/graphics/PointF;FLandroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5

    .line 524
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 525
    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    .line 526
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 527
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 529
    new-instance v2, Landroid/graphics/Rect;

    .line 530
    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    .line 531
    div-int/lit8 p2, p2, 0x2

    sub-int v4, p1, p2

    add-int/2addr v0, v1

    add-int/2addr p1, p2

    .line 529
    invoke-direct {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 535
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 536
    iget p1, v2, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->right:I

    invoke-static {p1, p2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, v2, Landroid/graphics/Rect;->right:I

    .line 537
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, v2, Landroid/graphics/Rect;->top:I

    .line 538
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2, p3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    .line 539
    new-instance p1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 p2, 0x3e8

    invoke-direct {p1, v2, p2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object p1
.end method

.method private final isValid(Landroidx/camera/core/MeteringPoint;)Z
    .locals 3

    .line 543
    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result p1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final meteringRegionsFromMeteringPoints(Ljava/util/List;ILandroid/graphics/Rect;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Ljava/util/List;
    .locals 7

    const-string v0, "meteringPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropSensorRegion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultAspectRatio"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meteringRegionCorrection"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_2

    .line 452
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    new-instance v3, Landroid/util/Rational;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v3, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 456
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/core/MeteringPoint;

    .line 458
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p2, :cond_3

    :cond_2
    move-object v1, p0

    goto :goto_1

    .line 461
    :cond_3
    invoke-direct {p0, v2}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->isValid(Landroidx/camera/core/MeteringPoint;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 465
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->getFovAdjustedPoint(Landroidx/camera/core/MeteringPoint;Landroid/util/Rational;Landroid/util/Rational;ILandroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;)Landroid/graphics/PointF;

    move-result-object p4

    .line 473
    invoke-virtual {v2}, Landroidx/camera/core/MeteringPoint;->getSize()F

    move-result p5

    invoke-direct {p0, p4, p5, p3}, Landroidx/camera/camera2/impl/FocusMeteringControl$Companion;->getMeteringRect(Landroid/graphics/PointF;FLandroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p4

    .line 474
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p4, v4

    move p5, v5

    goto :goto_0

    :goto_1
    return-object v0

    .line 450
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
