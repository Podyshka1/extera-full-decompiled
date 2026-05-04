.class public final Lorg/telegram/ui/MultiLayoutTypingAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final GRADIENT:Landroid/graphics/LinearGradient;

.field private static final GRAD_MTX:Landroid/graphics/Matrix;

.field private static final MASK_PAINT:Landroid/graphics/Paint;


# instance fields
.field private blocks:Ljava/util/ArrayList;

.field private final choreo:Landroid/view/Choreographer;

.field private curBlockIdx:I

.field private curLineIdx:I

.field private finished:Z

.field private invalidateTarget:Landroid/view/View;

.field private lastFrameNs:J

.field private onFinishRunnable:Ljava/lang/Runnable;

.field private running:Z

.field private speedPxPerSec:F

.field private xPosition:F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 337
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->GRAD_MTX:Landroid/graphics/Matrix;

    .line 340
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->MASK_PAINT:Landroid/graphics/Paint;

    .line 341
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 342
    invoke-static {}, Lorg/telegram/ui/Components/ProfileGalleryBlurView$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_0

    .line 344
    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 346
    :goto_0
    new-instance v3, Landroid/graphics/LinearGradient;

    const v9, 0xffffff

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v3, Lorg/telegram/ui/MultiLayoutTypingAnimator;->GRADIENT:Landroid/graphics/LinearGradient;

    .line 347
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->choreo:Landroid/view/Choreographer;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    .line 41
    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    .line 44
    iput-boolean v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->running:Z

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->finished:Z

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lastFrameNs:J

    const/high16 v0, 0x42200000    # 40.0f

    .line 49
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->speedPxPerSec:F

    return-void
.end method

.method private advance(F)V
    .locals 7

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 185
    :cond_0
    iget v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->speedPxPerSec:F

    mul-float/2addr v1, p1

    :cond_1
    :goto_0
    cmpl-float p1, v1, v0

    if-lez p1, :cond_9

    .line 188
    iget p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    iget-object v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt p1, v2, :cond_2

    iput-boolean v3, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->finished:Z

    goto/16 :goto_2

    .line 189
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_8

    .line 190
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 198
    :cond_3
    iget v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 200
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    .line 201
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lineWidth(Landroid/text/Layout;I)F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    .line 204
    :cond_4
    iget v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lineWidth(Landroid/text/Layout;I)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_5

    .line 207
    invoke-direct {p0, p1}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->nextLineOrBlock(Landroid/text/Layout;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 211
    :cond_5
    iget v4, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    sub-float v5, v2, v4

    cmpg-float v6, v5, v3

    if-gtz v6, :cond_6

    .line 214
    invoke-direct {p0, p1}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->nextLineOrBlock(Landroid/text/Layout;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_6
    cmpg-float v6, v1, v5

    if-gez v6, :cond_7

    move v5, v1

    :cond_7
    add-float/2addr v4, v5

    .line 219
    iput v4, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    sub-float/2addr v1, v5

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 223
    invoke-direct {p0, p1}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->nextLineOrBlock(Landroid/text/Layout;)Z

    move-result p1

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_8
    :goto_1
    iget p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    .line 194
    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    goto/16 :goto_0

    .line 229
    :cond_9
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->isAtAbsoluteEnd()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->finished:Z

    return-void

    .line 181
    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->finished:Z

    return-void
.end method

.method private computeRemainingPixels()F
    .locals 8

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 267
    :cond_0
    iget v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 268
    iget-object v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_1

    goto :goto_3

    .line 272
    :cond_1
    iget v3, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 273
    iget v3, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    move v3, v4

    .line 276
    :goto_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 277
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lineWidth(Landroid/text/Layout;I)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_3

    goto :goto_2

    .line 280
    :cond_3
    iget v7, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    if-ne v0, v7, :cond_4

    if-ne v3, v4, :cond_4

    .line 281
    iget v7, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    sub-float/2addr v5, v7

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    :cond_4
    add-float/2addr v1, v5

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method public static drawLayoutWithLastLineFade(Landroid/graphics/Canvas;Landroid/text/Layout;IF)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 367
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-ltz p2, :cond_7

    if-lt p2, v0, :cond_1

    goto/16 :goto_1

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 371
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    .line 373
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 374
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 377
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v0

    int-to-float v5, v1

    .line 378
    invoke-virtual {p0, v3, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 379
    invoke-virtual {p1, p0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 383
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    .line 384
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    .line 385
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 386
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    cmpg-float v4, v9, v7

    if-gtz v4, :cond_3

    goto/16 :goto_1

    .line 389
    :cond_3
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p2

    sub-float v4, v9, v7

    .line 392
    invoke-static {p3, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p3

    div-float v5, p3, v4

    cmpg-float v6, p3, v3

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    cmpl-float p3, p3, v4

    if-ltz p3, :cond_5

    .line 399
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, v1

    int-to-float p3, v0

    int-to-float v0, v2

    .line 400
    invoke-virtual {p0, v3, p2, p3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 401
    invoke-virtual {p1, p0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 402
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_5
    const/high16 p3, 0x42480000    # 50.0f

    .line 407
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 408
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    int-to-float v8, v1

    int-to-float v10, v2

    const/4 v11, 0x0

    move-object v6, p0

    .line 410
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p0

    .line 412
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 413
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 414
    invoke-virtual {p1, v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 415
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 417
    sget-object p1, Lorg/telegram/ui/MultiLayoutTypingAnimator;->GRAD_MTX:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz p2, :cond_6

    .line 419
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 420
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 422
    :cond_6
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    sub-float/2addr v4, v0

    .line 423
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 425
    :goto_0
    sget-object p2, Lorg/telegram/ui/MultiLayoutTypingAnimator;->GRADIENT:Landroid/graphics/LinearGradient;

    invoke-virtual {p2, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 427
    sget-object v11, Lorg/telegram/ui/MultiLayoutTypingAnimator;->MASK_PAINT:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 428
    invoke-virtual {v6, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method private isAtAbsoluteEnd()Z
    .locals 5

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 301
    iget-object v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_8

    if-nez v2, :cond_3

    goto :goto_2

    .line 306
    :cond_3
    iget v3, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    const/4 v4, 0x0

    if-ge v3, v0, :cond_4

    return v4

    :cond_4
    if-le v3, v0, :cond_5

    return v1

    .line 309
    :cond_5
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 310
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lineWidth(Landroid/text/Layout;I)F

    move-result v2

    .line 311
    iget v3, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    if-ge v3, v0, :cond_6

    return v4

    .line 312
    :cond_6
    iget v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    const v3, 0x3a83126f    # 0.001f

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_7

    return v1

    :cond_7
    return v4

    :cond_8
    :goto_2
    return v1
.end method

.method private lineWidth(Landroid/text/Layout;I)F
    .locals 1

    .line 316
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    return v0

    :cond_0
    neg-float p1, v0

    return p1
.end method

.method private nextLineOrBlock(Landroid/text/Layout;)Z
    .locals 4

    .line 234
    iget v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    const/4 v2, 0x0

    .line 235
    iput v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    .line 236
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 v3, 0x0

    if-lt v0, p1, :cond_0

    .line 237
    iget p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    .line 238
    iput v3, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    .line 239
    iput v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method private recalcSpeed()V
    .locals 3

    .line 249
    invoke-direct {p0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->computeRemainingPixels()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    .line 250
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 253
    iput v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->speedPxPerSec:F

    return-void

    :cond_0
    const v2, 0x3f866666    # 1.05f

    div-float/2addr v0, v2

    .line 258
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->speedPxPerSec:F

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4

    .line 155
    iget-boolean v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->running:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lastFrameNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    .line 159
    invoke-direct {p0, v0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->advance(F)V

    .line 161
    :cond_1
    iput-wide p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lastFrameNs:J

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->invalidateTarget:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 166
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->finished:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->running:Z

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->onFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 169
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->onFinishRunnable:Ljava/lang/Runnable;

    :cond_3
    :goto_0
    return-void

    .line 174
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->choreo:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public getFadeLineIndex(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)I
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->isFadeBlock(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getFadeXPosition(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)F
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->isFadeBlock(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public indexOf(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)I
    .locals 3

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 322
    iget-object v2, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isFadeBlock(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)Z
    .locals 3

    .line 145
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->indexOf(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)I

    move-result v0

    .line 146
    iget v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 147
    :cond_0
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_2

    .line 148
    iget v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public isRunning()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->running:Z

    return v0
.end method

.method public needDraw(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)Z
    .locals 3

    .line 133
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->indexOf(Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    return v2

    :cond_1
    if-le p1, v1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public setBlocks(Ljava/util/ArrayList;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    iget-object v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    .line 59
    iget-object v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curBlockIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    iget v1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->curLineIdx:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->xPosition:F

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->blocks:Ljava/util/ArrayList;

    .line 65
    invoke-direct {p0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->recalcSpeed()V

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->isAtAbsoluteEnd()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->finished:Z

    if-nez p1, :cond_2

    .line 68
    iget-boolean p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->running:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->start()V

    .line 70
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->invalidateTarget:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setOnFinishListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->onFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public start()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->running:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->running:Z

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/MultiLayoutTypingAnimator;->isAtAbsoluteEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->finished:Z

    :cond_1
    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->lastFrameNs:J

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/MultiLayoutTypingAnimator;->choreo:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
