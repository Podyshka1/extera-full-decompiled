.class public Lorg/telegram/ui/Components/MediaActionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;
    }
.end annotation


# instance fields
.field private animatedDownloadProgress:F

.field private animatingTransition:Z

.field private backPaint:Landroid/graphics/Paint;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private currentIcon:I

.field private delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

.field private downloadIconScale:F

.field private downloadProgress:F

.field private downloadProgressAnimationStart:F

.field private downloadProgressTime:F

.field private downloadRadOffset:F

.field public drawProgressCircle:Z

.field private gradientDrawable:Landroid/graphics/LinearGradient;

.field private gradientMatrix:Landroid/graphics/Matrix;

.field private hasOverlayImage:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isMini:Z

.field private lastAnimationTime:J

.field private lastPercent:I

.field private messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private nextIcon:I

.field private overrideAlpha:F

.field public paint:Landroid/graphics/Paint;

.field public paint2:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;

.field private percentString:Ljava/lang/String;

.field private percentStringWidth:I

.field private rect:Landroid/graphics/RectF;

.field private savedTransitionProgress:F

.field private scale:F

.field private textPaint:Landroid/text/TextPaint;

.field private transitionAnimationTime:F

.field private transitionProgress:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 107
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    .line 49
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x43c80000    # 400.0f

    .line 53
    iput v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    const/4 v2, -0x1

    .line 55
    iput v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    .line 59
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    .line 63
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    .line 90
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    .line 91
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadIconScale:F

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static getCircleValue(F)F
    .locals 2

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    return p0
.end method


# virtual methods
.method public applyShaderMatrix(Z)V
    .locals 4

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 296
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v3

    neg-int v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 302
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 308
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 310
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v2, :cond_0

    .line 311
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 312
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 313
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 314
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 315
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v2, :cond_1

    .line 316
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 317
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v9, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 318
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 319
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 320
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 321
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 323
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 324
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 325
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 328
    :goto_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    .line 329
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 333
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v12, 0xa

    const/4 v13, 0x6

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v2, v14, :cond_3

    .line 334
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v2, v15, :cond_2

    if-eq v2, v4, :cond_2

    .line 335
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 336
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v6, v5, v6

    int-to-float v8, v10

    move/from16 v17, v9

    int-to-float v9, v11

    .line 337
    invoke-virtual {v1, v6, v6, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_1
    move v8, v2

    goto :goto_3

    :cond_2
    move/from16 v17, v9

    goto :goto_2

    :cond_3
    move/from16 v17, v9

    if-eq v2, v13, :cond_4

    if-ne v2, v12, :cond_5

    .line 339
    :cond_4
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v2, v14, :cond_5

    .line 340
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 341
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    int-to-float v8, v10

    int-to-float v9, v11

    invoke-virtual {v1, v6, v6, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    :cond_5
    :goto_2
    move v8, v3

    :goto_3
    const/high16 v9, 0x40400000    # 3.0f

    .line 344
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 345
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const v18, 0x3e19999a    # 0.15f

    const/high16 v19, 0x42b40000    # 90.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x42c80000    # 100.0f

    const/high16 v22, 0x40600000    # 3.5f

    const/high16 v23, 0x40e00000    # 7.0f

    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v25, v9

    const/high16 v26, 0x3f000000    # 0.5f

    const/4 v13, 0x2

    const/high16 v27, 0x437f0000    # 255.0f

    if-eq v2, v13, :cond_6

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v13, :cond_24

    .line 346
    :cond_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 348
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    const/high16 v28, 0x41100000    # 9.0f

    const/high16 v29, 0x41000000    # 8.0f

    if-eqz v2, :cond_19

    int-to-float v2, v11

    .line 349
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v3, v6

    sub-float v3, v2, v3

    .line 350
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v12, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v6, v12

    add-float/2addr v6, v2

    .line 352
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v12, v14

    add-float/2addr v12, v2

    .line 355
    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v14, v15, :cond_7

    if-ne v14, v4, :cond_8

    :cond_7
    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v14, v13, :cond_8

    .line 356
    iget-object v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v9, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v9, v9, v26

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float v9, v9, v27

    float-to-int v9, v9

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 357
    iget v9, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    .line 358
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v14, v5

    add-float/2addr v14, v2

    const/high16 v33, 0x3f800000    # 1.0f

    goto :goto_6

    .line 360
    :cond_8
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v5, v15, :cond_9

    if-eq v5, v4, :cond_9

    if-eq v5, v13, :cond_9

    .line 361
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v9, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    div-float v9, v9, v26

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float v9, v9, v27

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v4, v14, v4

    mul-float/2addr v9, v4

    float-to-int v4, v9

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 362
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    :goto_4
    move v9, v4

    const/high16 v33, 0x3f800000    # 1.0f

    goto :goto_5

    .line 364
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 365
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_4

    .line 367
    :goto_5
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v5

    add-float v14, v2, v4

    .line 371
    :goto_6
    iget-boolean v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v4, :cond_16

    .line 373
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v4, v13, :cond_a

    cmpg-float v5, v9, v26

    if-gtz v5, :cond_b

    :cond_a
    move v1, v13

    goto/16 :goto_d

    :cond_b
    const/high16 v3, 0x41500000    # 13.0f

    .line 392
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v4

    iget-boolean v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v4, :cond_c

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v9, v9, v26

    div-float v4, v9, v26

    const v5, 0x3e4ccccd    # 0.2f

    cmpl-float v6, v9, v5

    if-lez v6, :cond_d

    sub-float/2addr v9, v5

    const v5, 0x3e99999a    # 0.3f

    div-float v5, v9, v5

    move/from16 v28, v5

    move/from16 v9, v33

    goto :goto_8

    :cond_d
    div-float v5, v9, v5

    move v9, v5

    move/from16 v28, v17

    .line 404
    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    int-to-float v6, v10

    sub-float v13, v6, v3

    div-float v3, v3, v24

    sub-float v15, v12, v3

    add-float/2addr v3, v12

    invoke-virtual {v5, v13, v15, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v3, v28, v21

    move v5, v2

    .line 406
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x42d00000    # 104.0f

    mul-float/2addr v4, v13

    sub-float/2addr v4, v3

    move v13, v5

    const/4 v5, 0x0

    move v15, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v35, v13

    move v13, v15

    const/16 v15, 0xe

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sub-float v2, v12, v14

    mul-float/2addr v2, v9

    add-float/2addr v14, v2

    cmpl-float v2, v28, v17

    if-lez v2, :cond_14

    .line 414
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v15, :cond_e

    move/from16 v2, v17

    goto :goto_9

    :cond_e
    const/high16 v2, -0x3dcc0000    # -45.0f

    sub-float v5, v33, v28

    mul-float/2addr v2, v5

    .line 419
    :goto_9
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v28

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v3, v4

    mul-float v4, v28, v27

    float-to-int v4, v4

    .line 421
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_f

    if-eq v5, v15, :cond_f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    .line 422
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v5, v5, v26

    move/from16 v6, v33

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float v5, v6, v5

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :cond_f
    move v9, v4

    cmpl-float v28, v2, v17

    if-eqz v28, :cond_10

    .line 428
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move/from16 v5, v35

    .line 429
    invoke-virtual {v1, v2, v13, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_a

    :cond_10
    move/from16 v5, v35

    :goto_a
    if-eqz v9, :cond_13

    .line 432
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 433
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v15, :cond_12

    .line 434
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 435
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v10, v3

    int-to-float v3, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v11, v4

    int-to-float v4, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v11

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 438
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v3, v9

    mul-float v3, v3, v18

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 439
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v2, :cond_11

    move/from16 v6, v24

    goto :goto_b

    :cond_11
    const/high16 v6, 0x40800000    # 4.0f

    :goto_b
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 440
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget v6, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    int-to-float v6, v6

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v2

    int-to-float v2, v15

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 441
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 442
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_c

    :cond_12
    sub-float v2, v13, v3

    move v1, v3

    sub-float v3, v5, v1

    add-float v4, v13, v1

    add-float/2addr v5, v1

    .line 444
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 445
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v1, v4

    move v4, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_13
    :goto_c
    if-eqz v28, :cond_14

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    move v6, v12

    move v1, v13

    move v2, v1

    move v3, v14

    goto :goto_f

    :goto_d
    if-ne v4, v1, :cond_15

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v9

    goto :goto_e

    :cond_15
    const/high16 v33, 0x3f800000    # 1.0f

    div-float v5, v9, v26

    sub-float v9, v33, v5

    :goto_e
    sub-float/2addr v14, v3

    mul-float/2addr v14, v5

    add-float/2addr v3, v14

    sub-float/2addr v12, v6

    mul-float/2addr v12, v5

    add-float/2addr v6, v12

    int-to-float v1, v10

    .line 385
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v4

    sub-float v2, v1, v2

    .line 386
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 387
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    goto :goto_10

    :goto_f
    move v9, v1

    move v5, v6

    move v13, v12

    move v12, v2

    goto :goto_11

    :cond_16
    int-to-float v1, v10

    .line 456
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v4

    sub-float v2, v1, v2

    .line 457
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 458
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    :goto_10
    mul-float/2addr v4, v5

    sub-float v12, v6, v4

    goto :goto_f

    :goto_11
    cmpl-float v1, v3, v5

    if-eqz v1, :cond_17

    int-to-float v2, v10

    .line 461
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v4, v2

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_17
    int-to-float v4, v10

    cmpl-float v1, v12, v4

    if-eqz v1, :cond_18

    .line 464
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 465
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v2, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_19

    :cond_18
    move-object/from16 v1, p1

    goto/16 :goto_19

    .line 468
    :cond_19
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v15, 0xe

    if-eq v2, v15, :cond_1b

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v15, :cond_1a

    goto :goto_12

    :cond_1a
    const/4 v3, 0x0

    goto :goto_13

    :cond_1b
    :goto_12
    const/4 v3, 0x1

    .line 469
    :goto_13
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1c

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v2

    move v9, v5

    goto :goto_14

    :cond_1c
    const/high16 v33, 0x3f800000    # 1.0f

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    move v9, v2

    .line 470
    :goto_14
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadIconScale:F

    mul-float/2addr v2, v4

    .line 472
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v12, v4, v2

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v13, v4, v2

    .line 473
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v14, v4, v2

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v15, v4, v2

    .line 474
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v28, v4, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    if-nez v3, :cond_22

    .line 477
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1d

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v6, :cond_1f

    .line 479
    :cond_1d
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v3, :cond_1f

    .line 480
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    mul-float v2, v9, v19

    int-to-float v3, v10

    int-to-float v4, v11

    .line 481
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v9

    cmpl-float v2, v5, v17

    if-lez v2, :cond_1e

    .line 485
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    mul-float v6, v5, v27

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    mul-float/2addr v5, v15

    move v2, v3

    sub-float v3, v4, v5

    add-float/2addr v5, v4

    .line 488
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v29, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v31, v2

    goto :goto_15

    :cond_1e
    move/from16 v31, v3

    move/from16 v29, v4

    .line 491
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    add-float v4, v29, v13

    mul-float v1, v12, v9

    sub-float v3, v4, v1

    add-float v4, v29, v15

    mul-float v28, v28, v9

    sub-float v5, v4, v28

    sub-float v1, v31, v12

    mul-float/2addr v13, v9

    add-float v2, v1, v13

    mul-float/2addr v14, v9

    add-float v4, v31, v14

    .line 494
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v1, v31, v12

    sub-float v2, v1, v13

    sub-float v4, v31, v14

    .line 495
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 497
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_19

    .line 499
    :cond_1f
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v3, :cond_20

    move v5, v9

    :goto_16
    const/high16 v33, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_20
    const/4 v6, 0x2

    if-ne v2, v6, :cond_21

    move/from16 v5, v17

    goto :goto_16

    :cond_21
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_16

    :goto_17
    sub-float v5, v33, v5

    mul-float v2, v5, v27

    float-to-int v2, v2

    if-lez v2, :cond_24

    .line 504
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v10

    int-to-float v3, v11

    .line 505
    invoke-virtual {v1, v5, v5, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 506
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    add-float v5, v3, v15

    sub-float v9, v5, v12

    sub-float/2addr v3, v15

    .line 511
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v2, v12

    .line 512
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v1, v4

    move v4, v2

    move v2, v1

    move-object/from16 v1, p1

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v4

    add-float v4, v2, v12

    .line 513
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v1, v4

    move v4, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 515
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_19

    :cond_22
    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v9

    cmpl-float v3, v5, v17

    if-lez v3, :cond_23

    .line 521
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v10

    int-to-float v3, v11

    .line 522
    invoke-virtual {v1, v5, v5, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 523
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    mul-float v5, v5, v27

    iget v13, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v5, v13

    float-to-int v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    add-float v5, v3, v15

    sub-float v13, v5, v12

    sub-float/2addr v3, v15

    .line 528
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v14, v2

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v2, v12

    .line 529
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v1, v4

    move v4, v2

    move v2, v1

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v4

    add-float v4, v2, v12

    .line 530
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v1, v4

    move v4, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 531
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_18

    :cond_23
    move v14, v2

    :goto_18
    cmpl-float v2, v9, v17

    if-lez v2, :cond_24

    .line 535
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v10

    int-to-float v3, v11

    .line 536
    invoke-virtual {v1, v9, v9, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 537
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    mul-float v9, v9, v27

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v9, v5

    float-to-int v5, v9

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 538
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    sub-float v5, v2, v14

    sub-float v6, v3, v14

    add-float/2addr v2, v14

    add-float/2addr v3, v14

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 539
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 541
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 547
    :cond_24
    :goto_19
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v9, 0x43b40000    # 360.0f

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x5

    const/16 v4, 0xd

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2c

    const/16 v5, 0xe

    if-eq v2, v5, :cond_2c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_26

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v5, :cond_25

    if-ne v3, v6, :cond_26

    :cond_25
    move/from16 v29, v4

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    const/16 v12, 0xf

    goto/16 :goto_1e

    :cond_26
    const/16 v3, 0xa

    if-eq v2, v3, :cond_28

    .line 673
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v5, v3, :cond_28

    if-ne v2, v4, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v12, 0xf

    goto/16 :goto_2d

    .line 675
    :cond_28
    :goto_1a
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2a

    const/4 v3, 0x6

    if-ne v2, v3, :cond_29

    goto :goto_1b

    :cond_29
    const/16 v2, 0xff

    goto :goto_1c

    .line 676
    :cond_2a
    :goto_1b
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v2

    mul-float v5, v5, v27

    float-to-int v2, v5

    :goto_1c
    if-eqz v2, :cond_27

    const/4 v3, 0x0

    .line 684
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 685
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 687
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    if-eqz v2, :cond_27

    .line 688
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    mul-float/2addr v2, v9

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 689
    iget-boolean v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v5, :cond_2b

    move/from16 v6, v24

    goto :goto_1d

    :cond_2b
    move v6, v3

    :goto_1d
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 690
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v6, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget v9, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v4, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v3

    int-to-float v3, v12

    invoke-virtual {v5, v6, v9, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move v4, v2

    .line 691
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v12, 0xf

    const/16 v29, 0xd

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_2d

    :cond_2c
    move/from16 v29, v4

    const/high16 v3, 0x40800000    # 4.0f

    const/16 v12, 0xf

    const/4 v2, 0x0

    .line 548
    :goto_1e
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 555
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2e

    .line 556
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    if-eqz v2, :cond_2d

    .line 557
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpg-float v4, v2, v26

    if-gtz v4, :cond_2d

    div-float v2, v2, v26

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v2

    .line 560
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v4

    mul-float v5, v5, v27

    float-to-int v4, v5

    goto :goto_1f

    :cond_2d
    move/from16 v2, v17

    const/4 v4, 0x0

    :goto_1f
    move v13, v4

    move/from16 v28, v9

    move/from16 v3, v17

    move v4, v3

    move v9, v4

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_20
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_29

    :cond_2e
    if-eq v2, v12, :cond_36

    if-eqz v2, :cond_36

    const/4 v4, 0x1

    if-eq v2, v4, :cond_36

    if-eq v2, v15, :cond_36

    if-eq v2, v14, :cond_36

    if-eq v2, v13, :cond_36

    const/4 v4, 0x7

    if-eq v2, v4, :cond_36

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2f

    move v3, v4

    move/from16 v28, v9

    goto/16 :goto_27

    :cond_2f
    const/4 v4, 0x4

    if-ne v2, v4, :cond_31

    .line 588
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v2

    .line 590
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v4

    mul-float v4, v5, v27

    float-to-int v4, v4

    .line 595
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v3, 0xe

    if-ne v6, v3, :cond_30

    .line 596
    iget v3, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 597
    iget v6, v7, Landroid/graphics/Rect;->top:I

    :goto_21
    int-to-float v6, v6

    goto :goto_22

    .line 599
    :cond_30
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    .line 600
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    goto :goto_21

    :goto_22
    move v13, v4

    move/from16 v28, v9

    move/from16 v4, v17

    move v9, v6

    goto :goto_20

    :cond_31
    const/16 v3, 0xe

    if-eq v2, v3, :cond_33

    const/4 v6, 0x3

    if-ne v2, v6, :cond_32

    goto :goto_23

    .line 624
    :cond_32
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v3

    move/from16 v28, v9

    move/from16 v3, v17

    move v4, v3

    move v9, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v13, 0xff

    goto/16 :goto_29

    .line 603
    :cond_33
    :goto_23
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v2, v33, v5

    .line 605
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    move v2, v5

    move/from16 v3, v17

    goto :goto_24

    :cond_34
    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v2, v3

    move v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 613
    :goto_24
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v6

    mul-float v5, v5, v27

    float-to-int v5, v5

    .line 615
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    move/from16 v28, v9

    const/16 v9, 0xe

    if-ne v6, v9, :cond_35

    .line 616
    iget v6, v7, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 617
    iget v9, v7, Landroid/graphics/Rect;->top:I

    :goto_25
    int-to-float v9, v9

    goto :goto_26

    .line 619
    :cond_35
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    .line 620
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    goto :goto_25

    :goto_26
    move v13, v5

    move v5, v2

    move v2, v4

    move v4, v3

    move v3, v6

    goto/16 :goto_20

    :cond_36
    move/from16 v28, v9

    const/4 v3, 0x6

    :goto_27
    if-ne v2, v3, :cond_37

    .line 575
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v2, v2, v26

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_28

    :cond_37
    const/high16 v6, 0x3f800000    # 1.0f

    .line 577
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_28
    sub-float v5, v6, v2

    .line 583
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    .line 584
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    .line 585
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v9, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v9

    mul-float v9, v5, v24

    .line 586
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float v9, v9, v27

    float-to-int v9, v9

    move v13, v9

    move v9, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v17

    :goto_29
    cmpl-float v36, v5, v6

    if-eqz v36, :cond_38

    .line 628
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 629
    invoke-virtual {v1, v5, v5, v3, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_38
    cmpl-float v9, v4, v17

    if-eqz v9, :cond_39

    .line 632
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v10

    int-to-float v5, v11

    .line 633
    invoke-virtual {v1, v4, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_39
    if-eqz v13, :cond_3c

    .line 636
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v4, v13

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 637
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v5, 0xe

    if-eq v3, v5, :cond_3a

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v5, :cond_3b

    :cond_3a
    const/high16 v14, 0x40800000    # 4.0f

    goto :goto_2a

    :cond_3b
    int-to-float v3, v10

    sub-float v4, v3, v2

    int-to-float v5, v11

    move v6, v3

    sub-float v3, v5, v2

    add-float/2addr v6, v2

    add-float/2addr v5, v2

    move v2, v6

    .line 642
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v14, v4

    move v4, v2

    move v2, v14

    const/high16 v14, 0x40800000    # 4.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 643
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v1, v4

    move v4, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2b

    .line 638
    :goto_2a
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 639
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v10, v3

    int-to-float v3, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v11, v4

    int-to-float v4, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v11

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 640
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2b

    :cond_3c
    const/high16 v14, 0x40800000    # 4.0f

    :goto_2b
    if-eqz v9, :cond_3d

    .line 647
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3d
    if-eqz v36, :cond_3e

    .line 650
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 656
    :cond_3e
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_3f

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3f

    const/4 v4, 0x4

    if-ne v2, v4, :cond_43

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v2, v3, :cond_3f

    if-ne v2, v6, :cond_43

    :cond_3f
    if-eqz v13, :cond_43

    .line 657
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    if-eqz v2, :cond_43

    .line 658
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    mul-float v2, v2, v28

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 659
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v2, :cond_40

    move/from16 v6, v24

    goto :goto_2c

    :cond_40
    move v6, v14

    :goto_2c
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 660
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget v6, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    int-to-float v6, v6

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v2

    int-to-float v2, v14

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 662
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_41

    const/4 v4, 0x4

    if-ne v2, v4, :cond_42

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v3, :cond_42

    .line 663
    :cond_41
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v3, v13

    mul-float v3, v3, v18

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 665
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 667
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 703
    :cond_43
    :goto_2d
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v3, :cond_44

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_30

    :cond_44
    const/4 v4, 0x4

    if-eq v2, v4, :cond_45

    const/4 v6, 0x3

    if-eq v2, v6, :cond_45

    const/16 v3, 0xe

    if-ne v2, v3, :cond_46

    :cond_45
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2f

    .line 709
    :cond_46
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v2, v2, v26

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 710
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v2, v2, v26

    sub-float v2, v6, v2

    move/from16 v3, v17

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_2e
    move v13, v2

    move v9, v5

    goto :goto_30

    .line 706
    :goto_2f
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v2, v6, v5

    goto :goto_2e

    .line 713
    :goto_30
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v12, :cond_47

    .line 714
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_updatePath:[Landroid/graphics/Path;

    :goto_31
    const/4 v4, 0x0

    goto :goto_32

    .line 715
    :cond_47
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v3, v12, :cond_48

    .line 716
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_updatePath:[Landroid/graphics/Path;

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_32

    :cond_48
    const/4 v3, 0x0

    goto :goto_31

    :goto_32
    if-ne v2, v15, :cond_4a

    .line 719
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_filePath:[Landroid/graphics/Path;

    :cond_49
    :goto_33
    move-object v12, v3

    move-object v14, v4

    const/4 v4, 0x7

    goto :goto_34

    .line 720
    :cond_4a
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v5, v15, :cond_49

    .line 721
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_filePath:[Landroid/graphics/Path;

    goto :goto_33

    :goto_34
    if-ne v2, v4, :cond_4b

    .line 724
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_flameIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/16 v4, 0x8

    goto :goto_36

    .line 725
    :cond_4b
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v3, v4, :cond_4c

    .line 726
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_flameIcon:Landroid/graphics/drawable/Drawable;

    :goto_35
    const/16 v4, 0x8

    const/16 v16, 0x0

    goto :goto_36

    :cond_4c
    const/4 v3, 0x0

    goto :goto_35

    :goto_36
    if-ne v2, v4, :cond_4e

    .line 729
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_gifIcon:Landroid/graphics/drawable/Drawable;

    :cond_4d
    :goto_37
    move-object v15, v3

    goto :goto_38

    .line 730
    :cond_4e
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v5, v4, :cond_4d

    .line 731
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_gifIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_37

    .line 735
    :goto_38
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v18, 0x40c00000    # 6.0f

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4f

    if-ne v2, v4, :cond_50

    :cond_4f
    const/4 v2, 0x0

    goto :goto_39

    :cond_50
    move-object/from16 v28, v7

    move-object/from16 v7, v16

    goto/16 :goto_3b

    .line 736
    :goto_39
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 737
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v4, :cond_51

    const/16 v3, 0xff

    goto :goto_3a

    :cond_51
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v3, v3, v27

    float-to-int v3, v3

    :goto_3a
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 738
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v11

    .line 739
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v10, v3

    .line 740
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v4, v5, :cond_52

    .line 741
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 742
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    int-to-float v5, v10

    int-to-float v6, v11

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 744
    :cond_52
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v3, v4

    int-to-float v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    move v6, v4

    int-to-float v4, v3

    move/from16 v22, v3

    move v3, v5

    int-to-float v5, v2

    move/from16 v24, v2

    move v2, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v4

    move v3, v5

    .line 745
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v1, v22, v1

    int-to-float v4, v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v24, v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 746
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v2, v3, :cond_53

    .line 747
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 750
    :cond_53
    :goto_3b
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_54

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v3, :cond_55

    :cond_54
    const/4 v2, 0x0

    goto :goto_3c

    :cond_55
    move/from16 v22, v8

    const/16 v8, 0xd

    goto/16 :goto_3f

    .line 751
    :goto_3c
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 753
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v3, :cond_56

    const/16 v4, 0xd

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3d

    :cond_56
    const/16 v4, 0xd

    if-ne v3, v4, :cond_57

    .line 756
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_3d

    .line 758
    :cond_57
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v5

    .line 761
    :goto_3d
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    if-ne v2, v3, :cond_58

    const/16 v2, 0xff

    goto :goto_3e

    :cond_58
    mul-float v2, v5, v27

    float-to-int v2, v2

    :goto_3e
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 762
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 763
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    .line 764
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v2, v3, :cond_59

    .line 765
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v10

    int-to-float v3, v11

    .line 766
    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 769
    :cond_59
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v3

    int-to-float v3, v10

    move v5, v2

    sub-float v2, v3, v5

    int-to-float v6, v11

    move/from16 v16, v3

    sub-float v3, v6, v5

    add-float v16, v16, v5

    add-float/2addr v5, v6

    .line 770
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v22, v8

    move v8, v4

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 771
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v1, v4

    move v4, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 773
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v2, v3, :cond_5a

    .line 774
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 777
    :cond_5a
    :goto_3f
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v3, 0x40a00000    # 5.0f

    if-eq v2, v8, :cond_5b

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v8, :cond_5c

    :cond_5b
    const/4 v2, 0x0

    goto :goto_40

    :cond_5c
    move/from16 v16, v3

    goto/16 :goto_42

    .line 778
    :goto_40
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 780
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v4, :cond_5d

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_41

    :cond_5d
    if-ne v4, v8, :cond_5e

    .line 783
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_41

    .line 785
    :cond_5e
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v2

    .line 788
    :goto_41
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    mul-float v4, v5, v27

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 789
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v11

    .line 790
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentStringWidth:I

    const/16 v34, 0x2

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v10, v4

    .line 791
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    move/from16 v16, v3

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v6, v3, :cond_5f

    .line 792
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v10

    int-to-float v6, v11

    .line 793
    invoke-virtual {v1, v5, v5, v3, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 795
    :cond_5f
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    mul-float v3, v3, v21

    float-to-int v3, v3

    .line 796
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    if-eqz v5, :cond_60

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    if-eq v3, v5, :cond_61

    .line 797
    :cond_60
    iput v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    .line 798
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v30, 0x0

    aput-object v3, v6, v30

    const-string v3, "%d%%"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    .line 799
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    iput v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentStringWidth:I

    .line 801
    :cond_61
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    int-to-float v4, v4

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 802
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v2, v3, :cond_62

    .line 803
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 806
    :cond_62
    :goto_42
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v4, 0x1

    if-eqz v2, :cond_63

    if-eq v2, v4, :cond_63

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eqz v3, :cond_63

    if-ne v3, v4, :cond_7a

    :cond_63
    if-nez v2, :cond_64

    .line 808
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v4, :cond_65

    :cond_64
    if-ne v2, v4, :cond_6a

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v3, :cond_69

    .line 809
    :cond_65
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v3, :cond_67

    .line 810
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v3, :cond_66

    .line 811
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v3

    :goto_43
    const/4 v4, 0x1

    goto :goto_45

    .line 813
    :cond_66
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_43

    .line 816
    :cond_67
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_68

    :goto_44
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_45

    :cond_68
    const/4 v5, 0x0

    goto :goto_45

    :cond_69
    const/4 v4, 0x1

    :cond_6a
    if-ne v2, v4, :cond_68

    goto :goto_44

    .line 822
    :goto_45
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eqz v3, :cond_6c

    if-ne v3, v4, :cond_6b

    goto :goto_47

    :cond_6b
    :goto_46
    const/4 v4, 0x4

    goto :goto_48

    :cond_6c
    :goto_47
    if-eqz v2, :cond_6f

    if-eq v2, v4, :cond_6f

    goto :goto_46

    :goto_48
    if-ne v3, v4, :cond_6d

    .line 824
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v3, v33, v3

    mul-float v3, v3, v27

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_49
    const/4 v4, 0x1

    goto :goto_4b

    .line 826
    :cond_6d
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    if-ne v2, v3, :cond_6e

    const/16 v2, 0xff

    goto :goto_4a

    :cond_6e
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v2, v2, v27

    float-to-int v2, v2

    :goto_4a
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_49

    .line 829
    :cond_6f
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_49

    .line 832
    :goto_4b
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 834
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 835
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v33, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v5, v2

    .line 837
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_70

    move/from16 v3, v19

    goto :goto_4c

    :cond_70
    const/4 v3, 0x0

    :goto_4c
    const/high16 v24, 0x42be0000    # 95.0f

    const/high16 v28, 0x43c00000    # 384.0f

    const/high16 v29, 0x43f20000    # 484.0f

    if-nez v2, :cond_74

    .line 838
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v6, v4, :cond_74

    cmpg-float v2, v5, v28

    if-gez v2, :cond_71

    .line 840
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float v3, v5, v28

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v19, v2, v24

    goto :goto_4d

    :cond_71
    cmpg-float v2, v5, v29

    if-gez v2, :cond_72

    .line 842
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v3, v5, v28

    div-float v3, v3, v21

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v2, v2, v16

    sub-float v19, v24, v2

    :cond_72
    :goto_4d
    add-float v5, v5, v21

    :cond_73
    :goto_4e
    move/from16 v3, v19

    goto :goto_4f

    :cond_74
    if-ne v2, v4, :cond_76

    .line 847
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v2, :cond_76

    cmpg-float v2, v5, v21

    const/high16 v3, -0x3f600000    # -5.0f

    if-gez v2, :cond_75

    .line 849
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float v4, v5, v21

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v19, v2, v3

    goto :goto_4e

    :cond_75
    cmpg-float v2, v5, v29

    if-gez v2, :cond_73

    .line 851
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v4, v5, v21

    div-float v4, v4, v28

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v2, v2, v24

    add-float v19, v2, v3

    goto :goto_4e

    .line 856
    :cond_76
    :goto_4f
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 857
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eqz v2, :cond_77

    const/4 v4, 0x1

    if-ne v2, v4, :cond_78

    :cond_77
    const/4 v4, 0x4

    if-ne v2, v4, :cond_79

    .line 858
    :cond_78
    invoke-virtual {v1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 860
    :cond_79
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->playPauseAnimator:Lorg/telegram/ui/Components/PathAnimator;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3, v5}, Lorg/telegram/ui/Components/PathAnimator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 861
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 862
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->playPauseAnimator:Lorg/telegram/ui/Components/PathAnimator;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3, v5}, Lorg/telegram/ui/Components/PathAnimator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 864
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 866
    :cond_7a
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7b

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v3, :cond_7c

    :cond_7b
    const/4 v2, 0x0

    goto :goto_50

    :cond_7c
    move/from16 v18, v9

    goto/16 :goto_56

    .line 867
    :goto_50
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 870
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v2, v3, :cond_7f

    .line 871
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpl-float v3, v2, v26

    if-lez v3, :cond_7e

    sub-float v2, v2, v26

    div-float v2, v2, v26

    div-float v3, v2, v26

    const/high16 v6, 0x3f800000    # 1.0f

    .line 873
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v5, v6, v3

    cmpl-float v3, v2, v26

    if-lez v3, :cond_7d

    sub-float v2, v2, v26

    div-float v2, v2, v26

    goto :goto_51

    :cond_7d
    const/4 v2, 0x0

    goto :goto_51

    :cond_7e
    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 879
    :goto_51
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move/from16 v16, v2

    goto :goto_53

    .line 883
    :cond_7f
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_80

    .line 884
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v3

    mul-float v5, v5, v27

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_52

    .line 886
    :cond_80
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_52
    const/4 v5, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    .line 889
    :goto_53
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v11

    .line 890
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v10, v3

    const/high16 v33, 0x3f800000    # 1.0f

    cmpg-float v4, v5, v33

    if-gez v4, :cond_81

    .line 892
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v3, v4

    int-to-float v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    int-to-float v6, v6

    int-to-float v8, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v8, v1

    int-to-float v1, v2

    move/from16 v19, v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float v5, v19, v1

    move v1, v3

    move v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v18, v8

    move v8, v2

    move v2, v4

    move/from16 v4, v18

    move/from16 v18, v9

    move v9, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_54
    const/16 v17, 0x0

    goto :goto_55

    :cond_81
    move v8, v2

    move/from16 v18, v9

    move v9, v3

    goto :goto_54

    :goto_55
    cmpl-float v1, v16, v17

    if-lez v1, :cond_82

    int-to-float v2, v9

    int-to-float v3, v8

    .line 895
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float v4, v2, v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    sub-float v5, v3, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_56

    :cond_82
    move-object/from16 v1, p1

    :goto_56
    if-eqz v15, :cond_84

    if-eq v15, v7, :cond_84

    .line 900
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    float-to-int v2, v2

    .line 901
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    float-to-int v3, v3

    .line 902
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v15, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 903
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v4, v5, :cond_83

    const/16 v5, 0xff

    goto :goto_57

    :cond_83
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v4

    mul-float v5, v5, v27

    float-to-int v5, v5

    :goto_57
    invoke-virtual {v15, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v34, 0x2

    .line 904
    div-int/lit8 v2, v2, 0x2

    sub-int v4, v10, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v11, v3

    add-int/2addr v2, v10

    add-int/2addr v3, v11

    invoke-virtual {v15, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 905
    invoke-virtual {v15, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_84
    if-eqz v7, :cond_86

    .line 908
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    float-to-int v2, v2

    .line 909
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    .line 910
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 911
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v4, v5, :cond_85

    const/16 v5, 0xff

    goto :goto_58

    :cond_85
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v4, v4, v27

    float-to-int v5, v4

    :goto_58
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v34, 0x2

    .line 912
    div-int/lit8 v2, v2, 0x2

    sub-int v4, v10, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v11, v3

    add-int/2addr v2, v10

    add-int/2addr v3, v11

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 913
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_86
    const/high16 v2, 0x41c00000    # 24.0f

    if-eqz v14, :cond_8a

    if-eq v14, v12, :cond_8a

    .line 917
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 918
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 919
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v5, v6, :cond_87

    const/16 v5, 0xff

    goto :goto_59

    :cond_87
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v33, 0x3f800000    # 1.0f

    sub-float v5, v33, v5

    mul-float v5, v5, v27

    float-to-int v5, v5

    :goto_59
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x1

    .line 920
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 921
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v10

    int-to-float v5, v11

    .line 922
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 923
    invoke-virtual {v1, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v3, v3

    const/16 v34, 0x2

    .line 924
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v30, 0x0

    .line 925
    aget-object v3, v14, v30

    if-eqz v3, :cond_88

    .line 926
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_88
    const/16 v32, 0x1

    .line 928
    aget-object v3, v14, v32

    if-eqz v3, :cond_89

    .line 929
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 931
    :cond_89
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_8a
    if-eqz v12, :cond_90

    .line 934
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 935
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v4, :cond_8b

    const/16 v5, 0xff

    goto :goto_5a

    :cond_8b
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v3, v3, v27

    float-to-int v5, v3

    .line 936
    :goto_5a
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 937
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x1

    .line 938
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 939
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v10

    int-to-float v4, v11

    .line 940
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v3, v18

    .line 941
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v2, v2

    const/16 v34, 0x2

    .line 942
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v30, 0x0

    .line 943
    aget-object v2, v12, v30

    if-eqz v2, :cond_8c

    .line 944
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 946
    :cond_8c
    array-length v2, v12

    const/4 v6, 0x3

    if-lt v2, v6, :cond_8d

    aget-object v2, v12, v34

    if-eqz v2, :cond_8d

    .line 947
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8d
    const/16 v32, 0x1

    .line 949
    aget-object v2, v12, v32

    if-eqz v2, :cond_8f

    const/16 v3, 0xff

    if-eq v5, v3, :cond_8e

    .line 951
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 952
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    int-to-float v5, v5

    div-float v5, v5, v27

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v32, 0x1

    .line 953
    aget-object v3, v12, v32

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 954
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5b

    .line 956
    :cond_8e
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 959
    :cond_8f
    :goto_5b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 962
    :cond_90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 963
    iget-wide v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastAnimationTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x11

    cmp-long v8, v4, v6

    if-lez v8, :cond_91

    move-wide v4, v6

    .line 967
    :cond_91
    iput-wide v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastAnimationTime:J

    .line 969
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_93

    const/16 v3, 0xe

    if-eq v2, v3, :cond_93

    const/4 v6, 0x4

    if-ne v2, v6, :cond_92

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v6, v3, :cond_93

    :cond_92
    const/16 v3, 0xa

    if-eq v2, v3, :cond_93

    const/16 v8, 0xd

    if-ne v2, v8, :cond_96

    .line 970
    :cond_93
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v4

    long-to-float v3, v6

    const v6, 0x451c4000    # 2500.0f

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    .line 971
    invoke-static {v2}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCircleValue(F)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    .line 973
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_95

    .line 974
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    sub-float v6, v2, v3

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-lez v8, :cond_95

    .line 976
    iget v8, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    long-to-float v9, v4

    add-float/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    const/high16 v9, 0x43480000    # 200.0f

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_94

    .line 978
    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 979
    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    .line 980
    iput v7, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    goto :goto_5c

    .line 982
    :cond_94
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v8, v7

    invoke-virtual {v2, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 986
    :cond_95
    :goto_5c
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    .line 989
    :cond_96
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v2, :cond_98

    .line 990
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v6

    if-gez v3, :cond_98

    long-to-float v3, v4

    .line 991
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_97

    .line 993
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 994
    iput v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/4 v2, 0x0

    .line 995
    iput-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    .line 997
    :cond_97
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    :cond_98
    move/from16 v2, v22

    const/4 v4, 0x1

    if-lt v2, v4, :cond_99

    .line 1001
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_99
    return-void
.end method

.method public getCurrentIcon()I
    .locals 1

    .line 216
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    return v0
.end method

.method public getDownloadIconScale()F
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 99
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadIconScale:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 1012
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 1007
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 1022
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    .line 1017
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPreviousIcon()I
    .locals 1

    .line 220
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 242
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    return v0
.end method

.method public getTransitionProgress()F
    .locals 1

    .line 257
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 284
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0}, Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackColor(I)V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method public setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    .line 266
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 276
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    const p2, 0x3f333333    # 0.7f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

    return-void
.end method

.method public setDownloadIconScale(F)V
    .locals 0

    .line 94
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadIconScale:F

    return-void
.end method

.method public setHasOverlayImage(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    return-void
.end method

.method public setIcon(IZ)Z
    .locals 7

    .line 170
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v0, p1, :cond_0

    .line 171
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 172
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x1

    if-eqz p2, :cond_e

    .line 175
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq p2, p1, :cond_d

    iget v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    if-eq p1, v5, :cond_3

    :cond_2
    if-ne p2, v5, :cond_4

    if-nez p1, :cond_4

    :cond_3
    const/high16 p2, 0x43960000    # 300.0f

    .line 179
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    if-eq p1, v0, :cond_5

    if-ne p1, v4, :cond_7

    .line 181
    :cond_5
    iget-boolean p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->drawProgressCircle:Z

    if-eqz p2, :cond_6

    const/high16 p2, 0x43c80000    # 400.0f

    goto :goto_0

    :cond_6
    const/high16 p2, 0x437a0000    # 250.0f

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_1

    :cond_7
    const/4 v2, 0x4

    if-eq p2, v2, :cond_8

    const/4 v6, 0x6

    if-ne p1, v6, :cond_8

    const/high16 p2, 0x43b40000    # 360.0f

    .line 183
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_1

    :cond_8
    if-ne p2, v2, :cond_9

    if-eq p1, v4, :cond_a

    :cond_9
    if-ne p2, v4, :cond_b

    if-ne p1, v2, :cond_b

    :cond_a
    const/high16 p2, 0x43200000    # 160.0f

    .line 185
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_1

    :cond_b
    const/high16 p2, 0x435c0000    # 220.0f

    .line 187
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    .line 189
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz p2, :cond_c

    .line 190
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 192
    :cond_c
    iput-boolean v5, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    .line 193
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    .line 194
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    .line 195
    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_3

    :cond_d
    :goto_2
    return v2

    .line 197
    :cond_e
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne p2, p1, :cond_f

    return v2

    .line 200
    :cond_f
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    .line 201
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 202
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    .line 203
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_3
    if-eq p1, v0, :cond_10

    if-ne p1, v4, :cond_11

    :cond_10
    const/high16 p1, 0x42e00000    # 112.0f

    .line 206
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    .line 207
    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 208
    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    .line 209
    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    .line 211
    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    return v5
.end method

.method public setMini(Z)V
    .locals 1

    .line 156
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40400000    # 3.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setOverrideAlpha(F)V
    .locals 0

    .line 128
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    .line 224
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 228
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 229
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    goto :goto_0

    .line 231
    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_2

    .line 232
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 234
    :cond_2
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    .line 236
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    const/4 p1, 0x0

    .line 237
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    .line 238
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    return-void
.end method
