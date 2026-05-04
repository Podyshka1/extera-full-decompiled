.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imageBlockX:I

.field private imageBloks:I

.field private imageSize:I

.field public includeSideQuads:Z

.field private input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field private radii:[F

.field private sideQuadSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 53
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->includeSideQuads:Z

    return-void
.end method

.method public static drawSideQuads(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;FFIFF[FZ)V
    .locals 11

    move/from16 v0, p6

    .line 263
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_0

    int-to-float v3, v0

    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    mul-float v3, p4, p5

    sub-float v3, p7, v3

    int-to-float v4, v0

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_1
    int-to-float v3, v0

    mul-float v4, p4, p5

    sub-float v4, p7, v4

    sub-float/2addr v4, v3

    :goto_1
    add-float/2addr v3, p1

    add-float/2addr v4, p2

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz p10, :cond_2

    .line 282
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v7, v3, p5

    add-float v8, v4, p5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, p4, v9

    mul-float v9, v9, p5

    add-float v10, v3, v9

    add-float/2addr v9, v4

    invoke-virtual {v6, v7, v8, v10, v9}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v7, p4, p5

    div-float/2addr v7, v5

    mul-float v7, v7, p8

    .line 284
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 285
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v6, v7, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 286
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 287
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 288
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_2
    mul-float v6, p4, p5

    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v6, v7

    mul-float v7, v7, p8

    .line 291
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v9, v3, v6

    add-float/2addr v6, v4

    invoke-virtual {v8, v3, v4, v9, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 292
    invoke-virtual {p0, v8, v7, v7, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz p10, :cond_3

    .line 294
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    const/high16 v6, 0x40000000    # 2.0f

    sub-float v7, p4, v6

    mul-float v7, v7, p5

    div-float v5, v7, v5

    mul-float v5, v5, p8

    mul-float v6, v6, p5

    add-float v9, v3, v6

    add-float/2addr v6, v4

    add-float/2addr v3, v7

    add-float/2addr v4, v7

    .line 298
    invoke-virtual {v8, v9, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    invoke-virtual {p0, v8, v5, v5, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static drawSideQuadsGradient(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/drawable/GradientDrawable;FFIFF[FII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move/from16 v7, p5

    move-object/from16 v8, p8

    move/from16 v9, p10

    .line 208
    invoke-static/range {p9 .. p9}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v2

    .line 209
    :goto_0
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 210
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 211
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 212
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move v14, v2

    :goto_1
    const/4 v1, 0x3

    if-ge v14, v1, :cond_6

    if-nez v14, :cond_1

    int-to-float v1, v7

    move v15, v1

    goto :goto_3

    :cond_1
    if-ne v14, v10, :cond_2

    mul-float v1, p3, p4

    sub-float v1, p6, v1

    int-to-float v2, v7

    sub-float/2addr v1, v2

    :goto_2
    move v15, v1

    move v1, v2

    goto :goto_3

    :cond_2
    int-to-float v1, v7

    mul-float v2, p3, p4

    sub-float v2, p6, v2

    sub-float/2addr v2, v1

    goto :goto_2

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v16, 0x40800000    # 4.0f

    if-eqz v11, :cond_3

    add-float v3, v15, p4

    add-float v4, v1, p4

    sub-float v5, p3, v2

    mul-float v5, v5, p4

    move/from16 v17, v2

    add-float v2, v15, v5

    add-float/2addr v5, v1

    .line 228
    invoke-virtual {v13, v3, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v2, p3, p4

    div-float v2, v2, v16

    mul-float v2, v2, p7

    .line 230
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 231
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v13, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 232
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 233
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 234
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v12, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_4

    :cond_3
    move/from16 v17, v2

    :goto_4
    mul-float v18, p3, p4

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v18, v2

    mul-float v2, v2, p7

    .line 237
    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 238
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    float-to-int v2, v15

    float-to-int v3, v1

    add-float v4, v15, v18

    float-to-int v4, v4

    add-float v5, v1, v18

    float-to-int v5, v5

    .line 239
    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 240
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v1

    add-float v1, v15, p4

    move v3, v2

    add-float v2, v3, p4

    sub-float v4, p3, v17

    mul-float v4, v4, p4

    move v5, v3

    add-float v3, v15, v4

    add-float/2addr v4, v5

    move/from16 v17, v5

    move-object/from16 v5, p1

    .line 241
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v11, :cond_4

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    if-nez v11, :cond_5

    div-float v18, v18, v16

    mul-float v5, v18, p7

    .line 248
    invoke-static {v8, v5}, Ljava/util/Arrays;->fill([FF)V

    move/from16 v5, p9

    .line 249
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v4, v4

    .line 250
    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_5
    move/from16 v5, p9

    :goto_5
    const/high16 v1, 0x40000000    # 2.0f

    sub-float v2, p3, v1

    mul-float v2, v2, p4

    div-float v3, v2, v16

    mul-float v3, v3, p7

    .line 255
    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 256
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float v1, v1, p4

    add-float v3, v15, v1

    float-to-int v3, v3

    add-float v1, v17, v1

    float-to-int v1, v1

    add-float/2addr v15, v2

    float-to-int v4, v15

    add-float v2, v17, v2

    float-to-int v2, v2

    .line 257
    invoke-virtual {v6, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private has(II)Z
    .locals 4

    .line 304
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBlockX:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    iget v2, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    add-int v3, v0, v2

    if-ge p1, v3, :cond_0

    if-lt p2, v0, :cond_0

    add-int/2addr v0, v2

    if-ge p2, v0, :cond_0

    return v1

    .line 307
    :cond_0
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    if-ge p2, v0, :cond_2

    return v1

    .line 310
    :cond_2
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_3

    return v1

    :cond_3
    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    .line 313
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    return p2

    :cond_4
    return v1
.end method


# virtual methods
.method public encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v7, -0x1

    const/high16 v8, -0x1000000

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 62
    invoke-virtual/range {v0 .. v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 66
    invoke-virtual/range {v0 .. v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v10, p7

    move/from16 v11, p8

    .line 71
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    if-ltz v1, :cond_17

    if-ltz v2, :cond_17

    .line 79
    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v3, :cond_1

    .line 82
    sget-object v5, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v4

    .line 85
    :cond_0
    sget-object v5, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v6, p1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    const/4 v5, 0x4

    .line 90
    :goto_0
    invoke-static {v6, v4, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v3

    iput-object v3, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-eqz v3, :cond_16

    .line 96
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v13

    .line 97
    iget-object v3, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->input:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    move v3, v15

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v13, :cond_2

    .line 100
    invoke-direct {v0, v3, v15}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    iget v6, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v13, v5

    add-int/2addr v5, v14

    .line 109
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 110
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 112
    div-int/2addr v1, v3

    div-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v2, v1, v13

    add-int/lit8 v3, v2, 0x20

    if-eqz p5, :cond_4

    .line 117
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eq v5, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v5, p5

    goto :goto_3

    .line 118
    :cond_4
    :goto_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 120
    :goto_3
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {v6, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 123
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 126
    invoke-virtual {v8, v15}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 127
    iget-object v9, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    if-nez p9, :cond_5

    move v2, v15

    goto :goto_4

    :cond_5
    int-to-float v2, v2

    const v9, 0x4094cccd    # 4.65f

    div-float/2addr v2, v9

    int-to-float v9, v1

    div-float/2addr v2, v9

    .line 129
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_4
    iput v2, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    .line 130
    rem-int/lit8 v9, v2, 0x2

    move/from16 p1, v4

    rem-int/lit8 v4, v13, 0x2

    if-eq v9, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 131
    iput v2, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    .line 133
    :cond_6
    iget v2, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBloks:I

    sub-int v4, v13, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageBlockX:I

    mul-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x18

    .line 134
    iput v2, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageSize:I

    sub-int v2, v3, v2

    .line 135
    div-int/lit8 v2, v2, 0x2

    .line 136
    iget-boolean v4, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->includeSideQuads:Z

    move-object v9, v6

    const/16 v6, 0x10

    if-eqz v4, :cond_7

    .line 137
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget v4, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->sideQuadSize:I

    int-to-float v4, v4

    move-object/from16 v17, v5

    int-to-float v5, v1

    int-to-float v3, v3

    move/from16 v18, v1

    move-object v1, v9

    iget-object v9, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    move/from16 v20, v2

    move-object v2, v7

    move-object/from16 v19, v17

    move/from16 v12, v18

    const/16 v18, 0x4

    move/from16 v17, p1

    move v7, v3

    move-object v3, v8

    move/from16 v8, p6

    invoke-static/range {v1 .. v11}, Lcom/google/zxing/qrcode/QRCodeWriter;->drawSideQuadsGradient(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/drawable/GradientDrawable;FFIFF[FII)V

    goto :goto_5

    :cond_7
    move/from16 v17, p1

    move v12, v1

    move/from16 v20, v2

    move-object/from16 v19, v5

    move-object v2, v7

    move-object v3, v8

    move-object v1, v9

    const/16 v18, 0x4

    .line 140
    :goto_5
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_8

    move/from16 v4, v17

    goto :goto_6

    :cond_8
    move v4, v15

    :goto_6
    int-to-float v5, v12

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    mul-float v5, v5, p6

    move v7, v6

    move v8, v15

    :goto_7
    if-ge v8, v14, :cond_14

    move v9, v6

    move v6, v15

    :goto_8
    if-ge v6, v13, :cond_13

    .line 145
    invoke-direct {v0, v6, v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    const/16 v22, 0x5

    const/16 v23, 0x7

    const/16 v24, 0x6

    const/16 v25, 0x3

    move/from16 v26, v15

    if-eqz v21, :cond_d

    const/16 p1, 0x0

    .line 146
    iget-object v15, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    invoke-static {v15, v5}, Ljava/util/Arrays;->fill([FF)V

    add-int/lit8 v15, v8, -0x1

    .line 147
    invoke-direct {v0, v6, v15}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 148
    iget-object v15, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput p1, v15, v17

    aput p1, v15, v26

    .line 149
    aput p1, v15, v25

    aput p1, v15, v16

    :cond_9
    add-int/lit8 v15, v8, 0x1

    .line 151
    invoke-direct {v0, v6, v15}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 152
    iget-object v15, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput p1, v15, v23

    aput p1, v15, v24

    .line 153
    aput p1, v15, v22

    aput p1, v15, v18

    :cond_a
    add-int/lit8 v15, v6, -0x1

    .line 155
    invoke-direct {v0, v15, v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 156
    iget-object v15, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput p1, v15, v17

    aput p1, v15, v26

    .line 157
    aput p1, v15, v23

    aput p1, v15, v24

    :cond_b
    add-int/lit8 v15, v6, 0x1

    .line 159
    invoke-direct {v0, v15, v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 160
    iget-object v15, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput p1, v15, v25

    aput p1, v15, v16

    .line 161
    aput p1, v15, v22

    aput p1, v15, v18

    .line 163
    :cond_c
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int v15, v9, v12

    move-object/from16 p2, v2

    add-int v2, v7, v12

    .line 164
    invoke-virtual {v3, v9, v7, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v15, p2

    move-object v2, v1

    move/from16 v21, v4

    goto/16 :goto_c

    :cond_d
    move-object/from16 p2, v2

    const/16 p1, 0x0

    .line 168
    iget-object v2, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    move/from16 v15, p1

    invoke-static {v2, v15}, Ljava/util/Arrays;->fill([FF)V

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v15, v8, -0x1

    .line 169
    invoke-direct {v0, v2, v15}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-direct {v0, v2, v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-direct {v0, v6, v15}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 p1, v1

    .line 170
    iget-object v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v5, v1, v17

    aput v5, v1, v26

    move/from16 v1, v17

    goto :goto_9

    :cond_e
    move-object/from16 p1, v1

    move/from16 v1, v26

    :goto_9
    move/from16 p3, v1

    add-int/lit8 v1, v6, 0x1

    .line 173
    invoke-direct {v0, v1, v15}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-direct {v0, v6, v15}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 174
    iget-object v15, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v5, v15, v25

    aput v5, v15, v16

    move/from16 v15, v17

    goto :goto_a

    :cond_f
    move/from16 v15, p3

    :goto_a
    move/from16 v21, v4

    add-int/lit8 v4, v8, 0x1

    .line 177
    invoke-direct {v0, v2, v4}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-direct {v0, v2, v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {v0, v6, v4}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 178
    iget-object v2, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v5, v2, v23

    aput v5, v2, v24

    move/from16 v15, v17

    .line 181
    :cond_10
    invoke-direct {v0, v1, v4}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {v0, v6, v4}, Lcom/google/zxing/qrcode/QRCodeWriter;->has(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 182
    iget-object v1, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->radii:[F

    aput v5, v1, v22

    aput v5, v1, v18

    move/from16 v4, v17

    goto :goto_b

    :cond_11
    move v4, v15

    :goto_b
    if-eqz v4, :cond_12

    if-nez v21, :cond_12

    int-to-float v1, v9

    int-to-float v2, v7

    add-int v4, v9, v12

    int-to-float v15, v4

    move/from16 v22, v1

    add-int v1, v7, v12

    move/from16 p3, v2

    int-to-float v2, v1

    move-object/from16 p6, p2

    move/from16 p5, v2

    move/from16 p4, v15

    move/from16 p2, v22

    .line 186
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v2, p1

    move-object/from16 v15, p6

    .line 187
    invoke-virtual {v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    invoke-virtual {v3, v9, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c

    :cond_12
    move-object/from16 v2, p1

    move-object/from16 v15, p2

    :goto_c
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v9, v12

    move-object v1, v2

    move-object v2, v15

    move/from16 v4, v21

    move/from16 v15, v26

    goto/16 :goto_8

    :cond_13
    move/from16 v21, v4

    move/from16 v26, v15

    move-object v15, v2

    move-object v2, v1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v12

    move-object v2, v15

    move/from16 v15, v26

    const/16 v6, 0x10

    goto/16 :goto_7

    :cond_14
    move-object v2, v1

    move/from16 v26, v15

    const/4 v1, 0x0

    if-eqz p9, :cond_15

    .line 196
    sget v3, Lorg/telegram/messenger/R$raw;->qr_logo:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v3

    .line 197
    iget v4, v0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageSize:I

    move/from16 v5, v26

    invoke-static {v3, v4, v4, v5}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move/from16 v4, v20

    int-to-float v4, v4

    .line 198
    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_15
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v19

    .line 94
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 76
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested dimensions are too small: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Found empty contents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImageSize()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/google/zxing/qrcode/QRCodeWriter;->imageSize:I

    return v0
.end method
