.class public Lorg/telegram/ui/Components/RadialProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private alphaForMiniPrevious:Z

.field private alphaForPrevious:Z

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private checkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private cicleRect:Landroid/graphics/RectF;

.field private currentDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMiniDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMiniWithRound:Z

.field private currentProgress:F

.field private currentProgressTime:J

.field private currentWithRound:Z

.field private diff:I

.field private disableUpdate:Z

.field private drawMiniProgress:Z

.field private hideCurrentDrawable:Z

.field private lastUpdateTime:J

.field private miniDrawBitmap:Landroid/graphics/Bitmap;

.field private miniDrawCanvas:Landroid/graphics/Canvas;

.field private miniProgressBackgroundPaint:Landroid/graphics/Paint;

.field private miniProgressPaint:Landroid/graphics/Paint;

.field private overrideAlpha:F

.field private overridePaint:Landroid/graphics/Paint;

.field private parent:Landroid/view/View;

.field private previousDrawable:Landroid/graphics/drawable/Drawable;

.field private previousMiniDrawable:Landroid/graphics/drawable/Drawable;

.field private previousMiniWithRound:Z

.field private previousWithRound:Z

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private final roundProgressRectMatrix:Landroid/graphics/Matrix;

.field private final roundProgressRectPath:Landroid/graphics/Path;

.field private final roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

.field private roundRectProgress:Z

.field private final roundRectProgressPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    const/4 v2, 0x0

    .line 32
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 33
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    .line 34
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    .line 35
    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 36
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    const/4 v1, -0x1

    .line 53
    iput v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    const/high16 v1, 0x40800000    # 4.0f

    .line 63
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    .line 67
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    .line 72
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    .line 543
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    .line 544
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    .line 545
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    .line 546
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    .line 163
    sget-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 166
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    .line 167
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    .line 172
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    .line 178
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 8

    .line 549
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgress:Z

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const v1, 0x3ea3d70a    # 0.32f

    mul-float/2addr v0, v1

    .line 551
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 552
    invoke-virtual {p1, p2, v0, v0, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    add-float v1, p3, p4

    float-to-int v3, p3

    .line 556
    div-int/lit8 v3, v3, 0x5a

    mul-int/lit8 v3, v3, 0x5a

    add-int/lit8 v3, v3, 0x5a

    int-to-float v3, v3

    const/high16 v4, -0x3cb90000    # -199.0f

    add-float/2addr v4, v3

    sub-float v5, p3, v4

    div-float/2addr v5, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    .line 562
    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 563
    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, p2, v0, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 571
    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 572
    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->roundProgressRectPathMeasure:Landroid/graphics/PathMeasure;

    mul-float/2addr v5, v0

    mul-float/2addr v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgressPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    add-float v4, p3, v0

    sub-float v5, p4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    move-object v7, p6

    .line 576
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RadialProgress;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    return-void

    .line 579
    :cond_2
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private invalidateParent()V
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    .line 319
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    sub-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private updateAnimation(Z)V
    .locals 14

    .line 202
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->disableUpdate:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    iget-wide v2, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 207
    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->checkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v4, v0, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v4, v0, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_a

    .line 215
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_5

    .line 216
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    const-wide/16 v8, 0x168

    mul-long/2addr v8, v2

    long-to-float v8, v8

    const v9, 0x453b8000    # 3000.0f

    div-float/2addr v8, v9

    add-float/2addr p1, v8

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 217
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iget v8, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    sub-float v9, p1, v8

    cmpl-float v10, v9, v6

    if-lez v10, :cond_4

    .line 219
    iget-wide v10, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    const-wide/16 v12, 0x12c

    cmp-long v12, v10, v12

    if-ltz v12, :cond_3

    .line 221
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 222
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    const-wide/16 v8, 0x0

    .line 223
    iput-wide v8, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    goto :goto_1

    .line 225
    :cond_3
    sget-object p1, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v10, v10

    const/high16 v11, 0x43960000    # 300.0f

    div-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr v9, p1

    add-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 228
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    .line 230
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    if-eqz p1, :cond_8

    .line 231
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float p1, p1, v7

    if-ltz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 232
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_7

    .line 234
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 235
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    move v0, v4

    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    .line 238
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void

    .line 241
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float p1, p1, v7

    if-ltz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 242
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v0, v2

    div-float/2addr v0, v5

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_9

    .line 244
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 245
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 247
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void

    .line 251
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    if-eqz p1, :cond_d

    .line 252
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 253
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_c

    .line 255
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 256
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_b

    move v0, v4

    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    .line 259
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void

    .line 262
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 263
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v0, v2

    div-float/2addr v0, v5

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_e

    .line 265
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 266
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    :cond_f
    :goto_2
    return-void
.end method


# virtual methods
.method public copyParams(Lorg/telegram/ui/Components/RadialProgress;)V
    .locals 2

    .line 82
    iget v0, p1, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    .line 83
    iget v0, p1, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 84
    iget p1, p1, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 415
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x437f0000    # 255.0f

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 416
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 420
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v10, v9

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 421
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v2, v8, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 423
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v10, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v10, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-virtual {v2, v11, v12, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 426
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v10, 0x42300000    # 44.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpg-float v2, v2, v10

    const/4 v10, 0x2

    if-gez v2, :cond_2

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/16 v11, 0x10

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v2, v12

    .line 437
    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v12, v11

    const/16 v11, 0x14

    move v13, v8

    goto :goto_1

    .line 441
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v2, v12

    .line 442
    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v12, v11

    const/16 v11, 0x16

    move v13, v10

    .line 444
    :goto_1
    div-int/lit8 v14, v11, 0x2

    .line 447
    iget-object v15, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_3

    iget-boolean v15, v0, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    if-eqz v15, :cond_3

    .line 448
    iget v15, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    const/high16 v16, 0x43b40000    # 360.0f

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v15, v3

    goto :goto_2

    :cond_3
    const/high16 v16, 0x43b40000    # 360.0f

    const/high16 v15, 0x3f800000    # 1.0f

    .line 451
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_4

    add-int/lit8 v11, v11, 0x12

    add-int/2addr v11, v13

    int-to-float v11, v11

    .line 452
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v17, -0x3d4c0000    # -90.0f

    add-int/lit8 v5, v14, 0x1

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13, v11, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    const/high16 v17, -0x3d4c0000    # -90.0f

    const/high16 v18, 0x3f800000    # 1.0f

    .line 454
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    .line 456
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v5, v9

    iget v6, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 458
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    const/high16 v3, 0x41400000    # 12.0f

    .line 460
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 463
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_6

    .line 464
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    int-to-float v5, v5

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v6, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 467
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    .line 468
    iget-boolean v5, v0, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    if-eqz v5, :cond_7

    .line 469
    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v5, v9

    iget v6, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 471
    :cond_7
    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 473
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    sub-float v6, v2, v6

    float-to-int v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v15

    sub-float v11, v12, v11

    float-to-int v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v15

    add-float/2addr v13, v2

    float-to-int v13, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    add-float/2addr v5, v12

    float-to-int v5, v5

    invoke-virtual {v3, v6, v11, v13, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 474
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    :cond_8
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    .line 478
    iget-object v5, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    .line 479
    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    sub-float v6, v18, v5

    mul-float/2addr v6, v9

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6

    .line 481
    :cond_9
    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 483
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    float-to-int v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v12, v11

    float-to-int v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v2

    float-to-int v13, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v12

    float-to-int v5, v5

    invoke-virtual {v3, v6, v11, v13, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 487
    :cond_a
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniWithRound:Z

    if-nez v3, :cond_c

    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniWithRound:Z

    if-eqz v3, :cond_b

    goto :goto_7

    .line 498
    :cond_b
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    return-void

    .line 488
    :cond_c
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniWithRound:Z

    if-eqz v3, :cond_d

    .line 490
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v5, v9

    iget v6, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    .line 492
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 494
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    sub-int/2addr v14, v10

    int-to-float v5, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    sub-float v6, v2, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v15

    sub-float v8, v12, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v15

    add-float/2addr v2, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    add-float/2addr v12, v5

    invoke-virtual {v3, v6, v8, v2, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    add-float v3, v3, v17

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    mul-float v5, v5, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 496
    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    return-void

    :cond_e
    const/high16 v16, 0x43b40000    # 360.0f

    const/high16 v17, -0x3d4c0000    # -90.0f

    const/high16 v18, 0x3f800000    # 1.0f

    .line 501
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10

    .line 502
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    if-eqz v3, :cond_f

    .line 503
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v3, v9

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_9

    .line 505
    :cond_f
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 507
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v10, v3, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v5, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 508
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 511
    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    if-nez v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    .line 512
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11

    .line 513
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    sub-float v6, v18, v3

    mul-float/2addr v6, v9

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_a

    .line 515
    :cond_11
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 517
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v10, v3, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v5, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 518
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 521
    :cond_12
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    if-nez v2, :cond_14

    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v2, :cond_13

    goto :goto_b

    .line 538
    :cond_13
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    return-void

    .line 523
    :cond_14
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_15

    :goto_c
    move-object v6, v2

    goto :goto_e

    .line 526
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v2, :cond_16

    .line 528
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v3, v9

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d

    .line 530
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 532
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    goto :goto_c

    .line 534
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v8, v0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    int-to-float v9, v8

    add-float/2addr v5, v9

    iget v9, v3, Landroid/graphics/RectF;->top:F

    int-to-float v10, v8

    add-float/2addr v9, v10

    iget v10, v3, Landroid/graphics/RectF;->right:F

    int-to-float v11, v8

    sub-float/2addr v10, v11

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v8

    sub-float/2addr v3, v8

    invoke-virtual {v2, v5, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 535
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    add-float v3, v3, v17

    iget v5, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    mul-float v5, v5, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RadialProgress;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 536
    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    return-void
.end method

.method public getAnimatedProgress()F
    .locals 1

    .line 78
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 2

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    if-eqz p3, :cond_0

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 343
    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 344
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 345
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 346
    invoke-virtual {p0, v0, p3}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    .line 351
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    .line 352
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 356
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void
.end method

.method public setDiff(I)V
    .locals 0

    .line 275
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setProgress(FZ)V
    .locals 4

    .line 291
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    .line 292
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 293
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 294
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    goto :goto_1

    :cond_1
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    .line 298
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 299
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 300
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 304
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 305
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    goto :goto_2

    .line 307
    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_4

    .line 308
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 310
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    .line 312
    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    const-wide/16 p1, 0x0

    .line 313
    iput-wide p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 315
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 279
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    return-void
.end method

.method public setProgressRect(IIII)V
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setRoundRectProgress(Z)V
    .locals 0

    .line 588
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->roundRectProgress:Z

    return-void
.end method
