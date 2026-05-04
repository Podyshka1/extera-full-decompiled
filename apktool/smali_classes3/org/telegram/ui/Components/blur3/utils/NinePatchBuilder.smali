.class public abstract Lorg/telegram/ui/Components/blur3/utils/NinePatchBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createNinePatch(I[FFIFF)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 34

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    if-eqz v0, :cond_2

    .line 27
    array-length v4, v0

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    .line 32
    aget v6, v0, v4

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/4 v8, 0x1

    .line 33
    aget v9, v0, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/4 v10, 0x2

    .line 34
    aget v11, v0, v10

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v12, 0x3

    .line 35
    aget v13, v0, v12

    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v14, 0x4

    .line 36
    aget v15, v0, v14

    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/16 v16, 0x5

    move/from16 v17, v4

    .line 37
    aget v4, v0, v16

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/16 v18, 0x6

    move/from16 v19, v10

    .line 38
    aget v10, v0, v18

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/16 v20, 0x7

    .line 39
    aget v0, v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v22, v12

    mul-float v12, v1, v21

    move/from16 v23, v14

    move/from16 v24, v15

    float-to-double v14, v12

    .line 42
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    neg-float v14, v2

    .line 45
    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    add-int/2addr v14, v12

    .line 46
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move/from16 v26, v6

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int v31, v12, v5

    neg-float v5, v3

    .line 47
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v12

    .line 48
    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move v15, v7

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int v32, v12, v6

    add-float v6, v26, v11

    add-float v7, v10, v24

    .line 52
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v7, v9, v0

    add-float v8, v13, v4

    .line 53
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float v6, v6, v21

    move/from16 p1, v7

    float-to-double v6, v6

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-float v7, p1, v21

    float-to-double v7, v7

    .line 56
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/2addr v6, v14

    add-int v8, v6, v31

    add-int/2addr v7, v5

    add-int v12, v7, v32

    move/from16 p1, v15

    .line 61
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v12, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    move/from16 v21, v8

    .line 62
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v28, v12

    .line 64
    new-instance v12, Landroid/graphics/Paint;

    move-object/from16 v33, v15

    const/4 v15, 0x1

    invoke-direct {v12, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 65
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v15, p0

    .line 66
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setColor(I)V

    cmpl-float v15, v1, p1

    move/from16 p0, v15

    if-lez v15, :cond_0

    move/from16 v15, p3

    .line 69
    invoke-virtual {v12, v1, v2, v3, v15}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 72
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v14

    int-to-float v3, v5

    int-to-float v6, v6

    int-to-float v7, v7

    invoke-direct {v1, v2, v3, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/16 v3, 0x8

    .line 81
    new-array v3, v3, [F

    aput v26, v3, v17

    const/16 v27, 0x1

    aput v9, v3, v27

    aput v11, v3, v19

    aput v13, v3, v22

    aput v24, v3, v23

    aput v4, v3, v16

    aput v10, v3, v18

    aput v0, v3, v20

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 88
    invoke-virtual {v8, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-lez p0, :cond_1

    .line 92
    invoke-virtual {v12}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 93
    invoke-virtual {v8, v2, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    move/from16 v1, v26

    .line 98
    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move/from16 v2, v24

    .line 99
    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 100
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 101
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v6, v1

    .line 103
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    add-int/2addr v1, v14

    add-int/lit8 v8, v21, -0x2

    const/4 v15, 0x1

    .line 104
    invoke-static {v1, v15, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v25

    sub-int v8, v21, v31

    float-to-double v1, v2

    .line 105
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v8, v1

    add-int/lit8 v1, v25, 0x1

    add-int/lit8 v2, v21, -0x1

    .line 106
    invoke-static {v8, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v26

    float-to-double v1, v3

    .line 108
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v5

    add-int/lit8 v12, v28, -0x2

    .line 109
    invoke-static {v1, v15, v12}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v27

    sub-int v12, v28, v32

    float-to-double v0, v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr v12, v0

    add-int/lit8 v0, v27, 0x1

    add-int/lit8 v1, v28, -0x1

    .line 111
    invoke-static {v12, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v28

    move/from16 v30, v5

    move/from16 v29, v14

    .line 113
    invoke-static/range {v25 .. v32}, Lorg/telegram/ui/Components/blur3/utils/NinePatchBuilder;->createNinePatchChunk(IIIIIIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    move/from16 v12, v29

    move/from16 v2, v30

    move/from16 v1, v31

    move/from16 v3, v32

    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 119
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v12, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v2, 0x0

    move-object/from16 v3, v33

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v1

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "radii must have 8 values: TLx,TLy, TRx,TRy, BRx,BRy, BLx,BLy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createNinePatchChunk(IIIIIIII)Ljava/nio/ByteBuffer;
    .locals 4

    const/16 v0, 0x54

    .line 139
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    .line 142
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x9

    .line 144
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {v0, p6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v3, v2, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
