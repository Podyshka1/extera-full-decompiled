.class public Landroidx/graphics/shapes/Cubic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/Cubic$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/shapes/Cubic$Companion;


# instance fields
.field private final points:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/Cubic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/Cubic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/Cubic;->Companion:Landroidx/graphics/shapes/Cubic$Companion;

    return-void
.end method

.method private constructor <init>(JJJJ)V
    .locals 2

    .line 76
    invoke-static {p1, p2}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    .line 77
    invoke-static {p1, p2}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    .line 78
    invoke-static {p3, p4}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result p2

    .line 79
    invoke-static {p3, p4}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p3

    .line 80
    invoke-static {p5, p6}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result p4

    .line 81
    invoke-static {p5, p6}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p5

    .line 82
    invoke-static {p7, p8}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result p6

    .line 83
    invoke-static {p7, p8}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p7

    const/16 p8, 0x8

    new-array p8, p8, [F

    const/4 v1, 0x0

    aput v0, p8, v1

    const/4 v0, 0x1

    aput p1, p8, v0

    const/4 p1, 0x2

    aput p2, p8, p1

    const/4 p1, 0x3

    aput p3, p8, p1

    const/4 p1, 0x4

    aput p4, p8, p1

    const/4 p1, 0x5

    aput p5, p8, p1

    const/4 p1, 0x6

    aput p6, p8, p1

    const/4 p1, 0x7

    aput p7, p8, p1

    .line 74
    invoke-direct {p0, p8}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    return-void
.end method

.method public synthetic constructor <init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Landroidx/graphics/shapes/Cubic;-><init>(JJJJ)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    .line 34
    array-length p1, p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Points array size should be 8"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>([FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    .line 32
    new-array p1, p1, [F

    :cond_0
    invoke-direct {p0, p1}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    return-void
.end method

.method private final zeroIsh(F)Z
    .locals 1

    .line 111
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final calculateBounds$graphics_shapes_release([FZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bounds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->zeroLength$graphics_shapes_release()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v2

    aput v2, v1, v4

    .line 123
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v2

    aput v2, v1, v3

    .line 124
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v2

    aput v2, v1, v6

    .line 125
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v2

    aput v2, v1, v5

    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v2

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 130
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v7

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 131
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v8

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 132
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v9

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v10

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v4

    .line 137
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v2

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v3

    .line 138
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v2

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v6

    .line 139
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v2

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v5

    return-void

    .line 145
    :cond_1
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v10

    neg-float v10, v10

    int-to-float v11, v5

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v12

    mul-float/2addr v12, v11

    sub-float/2addr v10, v12

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v12

    add-float/2addr v10, v12

    int-to-float v12, v6

    .line 146
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v13

    mul-float/2addr v13, v12

    const/4 v14, 0x4

    int-to-float v14, v14

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v15

    mul-float/2addr v15, v14

    sub-float/2addr v13, v15

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v15

    mul-float/2addr v15, v12

    add-float/2addr v13, v15

    .line 147
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v15

    neg-float v15, v15

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v16

    add-float v15, v15, v16

    .line 149
    invoke-direct {v0, v10}, Landroidx/graphics/shapes/Cubic;->zeroIsh(F)Z

    move-result v16

    move/from16 v17, v3

    const/4 v3, -0x2

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    if-eqz v16, :cond_5

    cmpg-float v10, v13, v19

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    mul-float/2addr v15, v12

    int-to-float v10, v3

    mul-float/2addr v10, v13

    div-float/2addr v15, v10

    cmpg-float v10, v19, v15

    if-gtz v10, :cond_4

    cmpg-float v10, v15, v18

    if-gtz v10, :cond_4

    .line 154
    invoke-virtual {v0, v15}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v10

    cmpg-float v13, v10, v2

    if-gez v13, :cond_3

    move v2, v10

    :cond_3
    cmpl-float v13, v10, v8

    if-lez v13, :cond_4

    move v8, v10

    :cond_4
    :goto_0
    move/from16 v20, v4

    move/from16 v16, v5

    move/from16 v21, v6

    move v15, v7

    goto :goto_1

    :cond_5
    mul-float v16, v13, v13

    mul-float v20, v14, v10

    mul-float v20, v20, v15

    sub-float v15, v16, v20

    cmpl-float v16, v15, v19

    if-ltz v16, :cond_4

    neg-float v13, v13

    move/from16 v20, v4

    move/from16 v16, v5

    float-to-double v4, v15

    move/from16 v21, v6

    move v15, v7

    .line 163
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v6, v13

    mul-float/2addr v10, v12

    div-float/2addr v6, v10

    cmpg-float v7, v19, v6

    if-gtz v7, :cond_7

    cmpg-float v7, v6, v18

    if-gtz v7, :cond_7

    .line 165
    invoke-virtual {v0, v6}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v6

    cmpg-float v7, v6, v2

    if-gez v7, :cond_6

    move v2, v6

    :cond_6
    cmpl-float v7, v6, v8

    if-lez v7, :cond_7

    move v8, v6

    .line 171
    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v13, v4

    div-float/2addr v13, v10

    cmpg-float v4, v19, v13

    if-gtz v4, :cond_9

    cmpg-float v4, v13, v18

    if-gtz v4, :cond_9

    .line 173
    invoke-virtual {v0, v13}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_8

    move v2, v4

    :cond_8
    cmpl-float v5, v4, v8

    if-lez v5, :cond_9

    move v8, v4

    .line 182
    :cond_9
    :goto_1
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v5

    mul-float/2addr v5, v11

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v5

    mul-float/2addr v11, v5

    sub-float/2addr v4, v11

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v5

    add-float/2addr v4, v5

    .line 183
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v5

    mul-float/2addr v5, v12

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v6

    mul-float/2addr v6, v14

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v6

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    .line 184
    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v7

    add-float/2addr v6, v7

    .line 186
    invoke-direct {v0, v4}, Landroidx/graphics/shapes/Cubic;->zeroIsh(F)Z

    move-result v7

    if-eqz v7, :cond_c

    cmpg-float v4, v5, v19

    if-nez v4, :cond_a

    goto/16 :goto_5

    :cond_a
    mul-float/2addr v12, v6

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v12, v3

    cmpg-float v3, v19, v12

    if-gtz v3, :cond_10

    cmpg-float v3, v12, v18

    if-gtz v3, :cond_10

    .line 190
    invoke-virtual {v0, v12}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v3

    cmpg-float v4, v3, v15

    if-gez v4, :cond_b

    move v7, v3

    goto :goto_2

    :cond_b
    move v7, v15

    :goto_2
    cmpl-float v4, v3, v9

    if-lez v4, :cond_11

    :goto_3
    move v9, v3

    goto :goto_6

    :cond_c
    mul-float v3, v5, v5

    mul-float/2addr v14, v4

    mul-float/2addr v14, v6

    sub-float/2addr v3, v14

    cmpl-float v6, v3, v19

    if-ltz v6, :cond_10

    neg-float v5, v5

    float-to-double v6, v3

    .line 199
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v3, v10

    add-float/2addr v3, v5

    mul-float/2addr v12, v4

    div-float/2addr v3, v12

    cmpg-float v4, v19, v3

    if-gtz v4, :cond_e

    cmpg-float v4, v3, v18

    if-gtz v4, :cond_e

    .line 201
    invoke-virtual {v0, v3}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v3

    cmpg-float v4, v3, v15

    if-gez v4, :cond_d

    move v15, v3

    :cond_d
    cmpl-float v4, v3, v9

    if-lez v4, :cond_e

    move v9, v3

    .line 207
    :cond_e
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v5, v3

    div-float/2addr v5, v12

    cmpg-float v3, v19, v5

    if-gtz v3, :cond_10

    cmpg-float v3, v5, v18

    if-gtz v3, :cond_10

    .line 209
    invoke-virtual {v0, v5}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v3

    cmpg-float v4, v3, v15

    if-gez v4, :cond_f

    move v7, v3

    goto :goto_4

    :cond_f
    move v7, v15

    :goto_4
    cmpl-float v4, v3, v9

    if-lez v4, :cond_11

    goto :goto_3

    :cond_10
    :goto_5
    move v7, v15

    .line 216
    :cond_11
    :goto_6
    aput v2, v1, v20

    .line 217
    aput v7, v1, v17

    .line 218
    aput v8, v1, v21

    .line 219
    aput v9, v1, v16

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 280
    :cond_0
    instance-of v0, p1, Landroidx/graphics/shapes/Cubic;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 284
    :cond_1
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    check-cast p1, Landroidx/graphics/shapes/Cubic;

    iget-object p1, p1, Landroidx/graphics/shapes/Cubic;->points:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1
.end method

.method public final getAnchor0X()F
    .locals 2

    .line 39
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getAnchor0Y()F
    .locals 2

    .line 43
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getAnchor1X()F
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getAnchor1Y()F
    .locals 2

    .line 67
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getControl0X()F
    .locals 2

    .line 47
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getControl0Y()F
    .locals 2

    .line 51
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getControl1X()F
    .locals 2

    .line 55
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getControl1Y()F
    .locals 2

    .line 59
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getPoints$graphics_shapes_release()[F
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public final pointOnCurve-OOQOV4g$graphics_shapes_release(F)J
    .locals 6

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 97
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v1

    mul-float v2, v0, v0

    mul-float/2addr v2, v0

    mul-float/2addr v1, v2

    .line 98
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v3

    const/4 v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v4, p1

    mul-float v5, v4, v0

    mul-float/2addr v5, v0

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 99
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v3

    mul-float/2addr v4, p1

    mul-float/2addr v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 100
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v0

    mul-float v3, p1, p1

    mul-float/2addr v3, p1

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    .line 101
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result p1

    mul-float/2addr p1, v2

    .line 102
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr p1, v0

    .line 103
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr p1, v0

    .line 104
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    .line 96
    invoke-static {v1, p1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public final reverse()Landroidx/graphics/shapes/Cubic;
    .locals 8

    .line 255
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v0

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v1

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v2

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v3

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v4

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v5

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v6

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v7

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v0

    return-object v0
.end method

.method public final split(F)Lkotlin/Pair;
    .locals 22

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float v0, v0, p1

    .line 229
    invoke-virtual/range {p0 .. p1}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v1

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v3

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v4

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v6

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v6

    mul-float/2addr v6, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v7

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v7

    mul-float v11, v0, v0

    mul-float/2addr v7, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v8

    const/4 v9, 0x2

    int-to-float v9, v9

    mul-float/2addr v9, v0

    mul-float v12, v9, p1

    mul-float/2addr v8, v12

    add-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v8

    mul-float v13, p1, p1

    mul-float/2addr v8, v13

    add-float/2addr v7, v8

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v8

    mul-float/2addr v8, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v9

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v9

    mul-float/2addr v9, v13

    add-float/2addr v8, v9

    .line 237
    invoke-static {v1, v2}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v9

    .line 238
    invoke-static {v1, v2}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v10

    .line 230
    invoke-static/range {v3 .. v10}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v3

    .line 242
    invoke-static {v1, v2}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v14

    .line 243
    invoke-static {v1, v2}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v15

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v1

    mul-float/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v2

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v2

    mul-float/2addr v2, v13

    add-float v16, v1, v2

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v1

    mul-float/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v2

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v2

    mul-float/2addr v2, v13

    add-float v17, v1, v2

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v2

    mul-float v2, v2, p1

    add-float v18, v1, v2

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v0

    mul-float v0, v0, p1

    add-float v19, v1, v0

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v20

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v21

    .line 240
    invoke-static/range {v14 .. v21}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v0

    .line 230
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anchor0: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") control0: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "), control1: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v2

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v2

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 274
    const-string v2, "), anchor1: ("

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v2

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Cubic;
    .locals 8

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v0, Landroidx/graphics/shapes/MutableCubic;

    invoke-direct {v0}, Landroidx/graphics/shapes/MutableCubic;-><init>()V

    .line 295
    iget-object v1, p0, Landroidx/graphics/shapes/Cubic;->points:[F

    invoke-virtual {v0}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([F[FIIIILjava/lang/Object;)[F

    .line 296
    invoke-virtual {v0, p1}, Landroidx/graphics/shapes/MutableCubic;->transform(Landroidx/graphics/shapes/PointTransformer;)V

    return-object v0
.end method

.method public final zeroLength$graphics_shapes_release()Z
    .locals 3

    .line 109
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v0

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v0

    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
