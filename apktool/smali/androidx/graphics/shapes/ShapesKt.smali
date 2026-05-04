.class public abstract Landroidx/graphics/shapes/ShapesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/graphics/shapes/ShapesKt;->circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;I)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/graphics/shapes/ShapesKt;->circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x3

    if-lt p1, p0, :cond_0

    .line 47
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result p0

    int-to-float v0, p1

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    div-float v1, p2, p0

    .line 52
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const/4 p0, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v4, p2, v2, p0, v0}, Landroidx/graphics/shapes/CornerRounding;-><init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v0, p1

    move v2, p3

    move v3, p4

    .line 50
    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Circle must have at least three vertices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const/16 v0, 0x8

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v1, 0x0

    if-eqz p6, :cond_2

    move p3, v1

    :cond_2
    and-int/2addr p5, v0

    if-eqz p5, :cond_3

    move p4, v1

    .line 37
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/graphics/shapes/ShapesKt;->circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final rectangle(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "rounding"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    int-to-float v0, p0

    div-float/2addr p1, v0

    sub-float v1, p5, p1

    div-float/2addr p2, v0

    sub-float v0, p6, p2

    add-float/2addr p1, p5

    add-float/2addr p2, p6

    const/16 v2, 0x8

    .line 96
    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    aput v1, v2, p0

    const/4 p0, 0x3

    aput p2, v2, p0

    const/4 p0, 0x4

    aput v1, v2, p0

    const/4 p0, 0x5

    aput v0, v2, p0

    const/4 p0, 0x6

    aput p1, v2, p0

    const/4 p0, 0x7

    aput v0, v2, p0

    .line 95
    invoke-static {v2, p3, p4, p5, p6}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 12

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rounding"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xf0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v11}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "rounding"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    cmpg-float v0, p2, p0

    if-lez v0, :cond_3

    cmpg-float p0, p3, p0

    if-lez p0, :cond_3

    cmpl-float p0, p3, p2

    if-gez p0, :cond_2

    if-nez p6, :cond_1

    if-eqz p5, :cond_1

    const/4 p0, 0x0

    .line 155
    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p6

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p6

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    const/4 v1, 0x2

    .line 155
    new-array v1, v1, [Landroidx/graphics/shapes/CornerRounding;

    aput-object p4, v1, p0

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 462
    check-cast v1, Ljava/lang/Iterable;

    .line 1448
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    move-object p6, v0

    .line 161
    :cond_1
    invoke-static {p1, p2, p3, p7, p8}, Landroidx/graphics/shapes/ShapesKt;->starVerticesFromNumVerts(IFFFF)[F

    move-result-object p0

    .line 160
    invoke-static {p0, p4, p6, p7, p8}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0

    .line 148
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "innerRadius must be less than radius"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Star radii must both be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2

    .line 138
    sget-object v3, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_5

    :cond_5
    move v6, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move/from16 p10, v7

    :goto_6
    move-object p2, p0

    move p3, p1

    move p4, v1

    move p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v6

    goto :goto_7

    :cond_6
    move/from16 p10, p8

    goto :goto_6

    .line 134
    :goto_7
    invoke-static/range {p2 .. p10}, Landroidx/graphics/shapes/ShapesKt;->star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static final starVerticesFromNumVerts(IFFFF)[F
    .locals 12

    mul-int/lit8 v0, p0, 0x4

    .line 447
    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    .line 450
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v3

    int-to-float v4, p0

    div-float/2addr v3, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v3, v5

    int-to-float v5, v1

    mul-float v7, v3, v5

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    move v6, p1

    invoke-static/range {v6 .. v11}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v7

    add-int/lit8 v3, v2, 0x1

    .line 451
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v5

    add-float/2addr v5, p3

    aput v5, v0, v2

    add-int/lit8 v5, v2, 0x2

    .line 452
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v6

    add-float v6, v6, p4

    aput v6, v0, v3

    .line 453
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v3

    div-float/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float v7, v3, v4

    const-wide/16 v8, 0x0

    move v6, p2

    invoke-static/range {v6 .. v11}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v3

    add-int/lit8 v6, v2, 0x3

    .line 454
    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v7

    add-float/2addr v7, p3

    aput v7, v0, v5

    add-int/lit8 v2, v2, 0x4

    .line 455
    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v3

    add-float v3, v3, p4

    aput v3, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
