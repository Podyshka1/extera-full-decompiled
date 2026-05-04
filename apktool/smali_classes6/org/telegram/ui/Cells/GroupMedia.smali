.class public Lorg/telegram/ui/Cells/GroupMedia;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;,
        Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;
    }
.end annotation


# instance fields
.field private final animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

.field public attached:Z

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapHeight:I

.field private blurBitmapMessageId:I

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapState:I

.field private blurBitmapWidth:I

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private buttonText:Lorg/telegram/ui/Components/Text;

.field private buttonTextPrice:J

.field public final cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private clipPath:Landroid/graphics/Path;

.field private clipPath2:Landroid/graphics/Path;

.field private clipRect:Landroid/graphics/RectF;

.field public height:I

.field public hidden:Z

.field public final holders:Ljava/util/ArrayList;

.field private layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field public maxWidth:I

.field private overrideWidth:I

.field private pressButton:Z

.field private pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

.field private priceText:Lorg/telegram/ui/Components/Text;

.field private priceTextPrice:J

.field spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    .line 410
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    .line 411
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    .line 412
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 86
    invoke-static {p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    .line 87
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x15e

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 88
    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-void
.end method


# virtual methods
.method public allVisible()Z
    .locals 5

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    .line 399
    iget-object v4, v4, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public checkBlurBitmap()V
    .locals 9

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 522
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    iget v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    const/high16 v4, 0x42c80000    # 100.0f

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    .line 523
    iget v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    if-le v5, v6, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    move v4, v1

    move v5, v4

    .line 525
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 526
    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    .line 527
    iget-object v7, v6, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, v6, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 529
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapMessageId:I

    if-ne v6, v0, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapState:I

    if-ne v6, v5, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapWidth:I

    if-ne v6, v2, :cond_5

    iget v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapHeight:I

    if-eq v6, v3, :cond_8

    .line 530
    :cond_5
    iput v5, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapState:I

    .line 531
    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapMessageId:I

    .line 532
    iput v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapWidth:I

    .line 533
    iput v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapHeight:I

    if-eqz v4, :cond_6

    .line 536
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    .line 539
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v2

    .line 540
    iget v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v4, v3

    div-float v4, v2, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 541
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 542
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    .line 543
    iget-object v3, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v4, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    int-to-float v5, v4

    iget v6, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    int-to-float v7, v6

    iget v8, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    sub-int/2addr v8, v4

    int-to-float v4, v8

    iget v8, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    sub-int/2addr v8, v6

    int-to-float v6, v8

    invoke-virtual {v3, v5, v7, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 544
    iget-object v2, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 546
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_8

    .line 549
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    .line 550
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 551
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 552
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 415
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 416
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    const/4 v7, 0x1

    .line 428
    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Cells/GroupMedia;->drawImages(Landroid/graphics/Canvas;Z)V

    .line 429
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    cmpl-float v1, v6, v1

    if-lez v1, :cond_6

    .line 431
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    const/high16 v3, 0x41e00000    # 28.0f

    .line 432
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x42000000    # 32.0f

    .line 433
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 434
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v10, v9

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v12, v11

    sub-float/2addr v12, v3

    div-float/2addr v12, v8

    add-float/2addr v10, v12

    iget v12, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v13, v12

    iget v14, v0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    int-to-float v15, v14

    sub-float/2addr v15, v4

    div-float/2addr v15, v8

    add-float/2addr v13, v15

    int-to-float v9, v9

    int-to-float v11, v11

    add-float/2addr v11, v3

    div-float/2addr v11, v8

    add-float/2addr v9, v11

    int-to-float v11, v12

    int-to-float v12, v14

    add-float/2addr v12, v4

    div-float/2addr v12, v8

    add-float/2addr v11, v12

    invoke-virtual {v5, v10, v13, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 440
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 441
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    div-float v10, v4, v8

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v9, v10, v10, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 442
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 443
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v5, v5

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    add-float/2addr v5, v9

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 445
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 446
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 447
    invoke-virtual {v0, v2, v6}, Lorg/telegram/ui/Cells/GroupMedia;->drawBlurred(Landroid/graphics/Canvas;F)V

    const/high16 v1, 0x50000000

    .line 448
    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 449
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    div-float/2addr v3, v8

    sub-float/2addr v4, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 450
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 452
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GroupMedia;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v1, :cond_1

    .line 455
    new-instance v1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 456
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 457
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, -0x1

    .line 458
    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const v5, 0x3e99999a    # 0.3f

    .line 459
    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const v9, 0x3eb33333    # 0.35f

    .line 460
    invoke-static {v4, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    const v11, 0x3f4ccccd    # 0.8f

    .line 461
    invoke-static {v4, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    .line 457
    invoke-virtual {v1, v3, v5, v9, v4}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 463
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 464
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 467
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappeared()Z

    move-result v1

    if-nez v1, :cond_4

    .line 470
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    .line 473
    :cond_4
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v1, :cond_5

    .line 474
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    .line 475
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 476
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 477
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 480
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 483
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v6, v1

    if-gez v3, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GroupMedia;->allVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    sub-float/2addr v1, v6

    .line 484
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTimeAlpha()F

    move-result v3

    mul-float v6, v1, v3

    const v1, 0x41351eb8    # 11.32f

    .line 485
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    .line 486
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 487
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    add-int v10, v7, v9

    int-to-float v10, v10

    sub-float/2addr v10, v1

    sub-float/2addr v10, v4

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v12, v11

    add-float/2addr v12, v4

    add-int/2addr v7, v9

    int-to-float v7, v7

    sub-float/2addr v7, v4

    int-to-float v9, v11

    add-float/2addr v9, v4

    add-float/2addr v9, v3

    invoke-virtual {v5, v10, v12, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 488
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 489
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    div-float/2addr v3, v8

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v7, v3, v3, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 490
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 491
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v5, 0x40000000    # 2.0f

    .line 493
    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    move v5, v1

    .line 494
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v7, v5

    sub-float/2addr v7, v4

    const v5, 0x40b51eb8    # 5.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    add-float v4, v5, v3

    const/4 v5, -0x1

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_1
    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 1

    .line 504
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 505
    iget-object p4, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->rewind()V

    .line 506
    iget-object p4, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, p2, p3, p3, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 507
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 p2, 0x40000000    # 2.0f

    .line 509
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawBlurred(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    if-nez v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/GroupMedia;->checkBlurBitmap()V

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 562
    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 563
    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 565
    iget-object p2, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->blurBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawImages(Landroid/graphics/Canvas;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 571
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->animatedHidden:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v8

    .line 572
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 574
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x1

    move v5, v4

    move v6, v5

    const/4 v7, 0x0

    move v4, v3

    .line 575
    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 576
    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    .line 578
    iget-object v14, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v15, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v9, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v15, v9

    int-to-float v15, v15

    const/high16 v16, 0x437f0000    # 255.0f

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    const/16 v17, 0x0

    iget v12, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v18, 0x40000000    # 2.0f

    iget v13, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    sub-int/2addr v13, v9

    int-to-float v9, v13

    iget v13, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    sub-int/2addr v13, v12

    int-to-float v12, v13

    invoke-virtual {v14, v15, v11, v9, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 579
    iget-object v9, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 580
    iget-object v9, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 581
    iget-object v9, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v9

    iget-wide v11, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentTime:J

    long-to-float v9, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 582
    invoke-virtual {v10, v9}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setTime(I)V

    :cond_0
    cmpl-float v9, v8, v17

    if-lez v9, :cond_1

    .line 585
    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v11, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 586
    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v11, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 587
    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v11, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 588
    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v11, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 589
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v12, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v12, v11

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v14, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v14, v13

    int-to-float v14, v14

    iget v15, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    add-int/2addr v11, v15

    int-to-float v11, v11

    iget v15, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    add-int/2addr v13, v15

    int-to-float v13, v13

    invoke-virtual {v9, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 590
    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    iget-object v12, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radii:[F

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v9, v12, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 593
    :cond_1
    iget-object v9, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhoto:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoSelected:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIcon:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaLoaderPhotoIconSelected:I

    invoke-virtual {v9, v11, v12, v13, v14}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 594
    iget-object v9, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget-object v11, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 595
    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v11

    iget-object v12, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v12

    div-float v12, v12, v18

    iget-object v13, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    add-float/2addr v11, v12

    iget-object v12, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 596
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v12

    iget-object v13, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v13

    div-float v13, v13, v18

    iget-object v14, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    add-float/2addr v12, v13

    iget-object v13, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 597
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v13

    iget-object v14, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v14

    div-float v14, v14, v18

    iget-object v15, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    add-float/2addr v13, v14

    iget-object v14, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 598
    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v14

    iget-object v15, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v15

    div-float v15, v15, v18

    move/from16 v17, v3

    iget-object v3, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgress2;->getRadius()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v15, v3

    add-float/2addr v14, v15

    .line 594
    invoke-virtual {v9, v11, v12, v13, v14}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(FFFF)V

    .line 600
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    .line 601
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    .line 602
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v11

    iget-object v12, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/ImageLoader;->getFileProgressSizes(Ljava/lang/String;)[J

    move-result-object v11

    .line 603
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    invoke-virtual {v3, v12, v7}, Lorg/telegram/messenger/SendMessagesHelper;->isSendingPaidMessage(II)Z

    move-result v3

    if-nez v11, :cond_5

    if-eqz v3, :cond_5

    .line 605
    iget-object v3, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v11}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 606
    iget-boolean v3, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->album:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->-$$Nest$mgetDefaultIcon(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)I

    move-result v3

    :goto_1
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    goto :goto_2

    .line 608
    :cond_3
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v11, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->filename:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    .line 609
    invoke-virtual {v10, v3}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    goto :goto_2

    .line 611
    :cond_4
    invoke-static {v10}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->-$$Nest$mgetDefaultIcon(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)I

    move-result v3

    invoke-virtual {v10, v3}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    .line 613
    :cond_5
    :goto_2
    iget-object v3, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v3

    sub-float/2addr v9, v8

    mul-float v9, v9, v16

    float-to-int v9, v9

    const/16 v11, 0x1f

    invoke-virtual {v2, v3, v9, v11}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 614
    iget-object v3, v10, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 615
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    goto/16 :goto_0

    :cond_6
    const/high16 v16, 0x437f0000    # 255.0f

    const/16 v17, 0x0

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v1, v8, v17

    if-lez v1, :cond_7

    if-eqz p2, :cond_7

    .line 618
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 619
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath2:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 620
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float/2addr v5, v3

    float-to-int v9, v5

    move v3, v4

    int-to-float v4, v9

    sub-float/2addr v6, v3

    float-to-int v10, v6

    int-to-float v5, v10

    mul-float v11, v8, v16

    float-to-int v6, v11

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    .line 621
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/high16 v6, 0x3f800000    # 1.0f

    iget-boolean v7, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    move-object/from16 v2, p1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->draw(Landroid/graphics/Canvas;Landroid/view/View;IIFZ)V

    .line 623
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 624
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 625
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_7
    const/4 v9, 0x0

    .line 627
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_a

    .line 628
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    .line 630
    invoke-static {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->-$$Nest$fgetdurationText(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    if-eqz v3, :cond_9

    const v3, 0x41366666    # 11.4f

    .line 632
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->-$$Nest$fgetdurationText(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)Lorg/telegram/ui/Components/Text;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    .line 633
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    .line 634
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v10, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int v11, v7, v10

    int-to-float v11, v11

    add-float/2addr v11, v5

    iget v12, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v13, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int v14, v12, v13

    int-to-float v14, v14

    add-float/2addr v14, v5

    add-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v7, v5

    add-float/2addr v7, v3

    add-int/2addr v12, v13

    int-to-float v3, v12

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    invoke-virtual {v6, v11, v14, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 635
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    const v7, 0x41351eb8    # 11.32f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v10

    add-float/2addr v7, v10

    sub-float/2addr v6, v7

    sub-float/2addr v6, v5

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_8

    goto :goto_4

    .line 638
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 639
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipRect:Landroid/graphics/RectF;

    div-float v4, v4, v18

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v6, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 640
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 641
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 642
    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Cells/GroupMedia;->drawBlurred(Landroid/graphics/Canvas;F)V

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 643
    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 644
    invoke-static {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->-$$Nest$fgetdurationText(Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->x:I

    iget v10, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    add-int/2addr v7, v10

    int-to-float v7, v7

    add-float/2addr v7, v5

    const v10, 0x40b51eb8    # 5.66f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->y:I

    iget v1, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int/2addr v10, v1

    int-to-float v1, v10

    add-float/2addr v1, v5

    add-float/2addr v4, v1

    const/4 v5, -0x1

    move-object v1, v3

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_3

    :cond_a
    return-void
.end method

.method public getHolderAt(FF)Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;
    .locals 2

    const/4 v0, 0x0

    .line 346
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v1, v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPhotoImage(I)Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_3

    .line 356
    iget-object v0, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget-object v0, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    const/4 v0, 0x0

    .line 358
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 359
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v2, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    if-ne v2, p1, :cond_2

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object p1, p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public isLoading()Z
    .locals 3

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 871
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_1

    .line 874
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->attach(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 876
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 877
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 882
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 883
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->attached:Z

    .line 884
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v1, :cond_1

    .line 885
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    .line 887
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->detach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 321
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/GroupMedia;->getHolderAt(FF)Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result p1

    if-eq p1, v3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object p1, p1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressButton:Z

    goto/16 :goto_3

    .line 323
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 324
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/GroupMedia;->getHolderAt(FF)Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 325
    iget-object v7, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v7

    if-eq v7, v3, :cond_3

    iget-object v3, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RadialProgress2;->getProgressRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v4

    .line 326
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 328
    iget-boolean v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressButton:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, v2, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v0

    if-ne v0, v6, :cond_4

    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 330
    iget p1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_2

    .line 335
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getDelegate()Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-interface/range {v6 .. v11}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;->didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V

    .line 338
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressButton:Z

    const/4 p1, 0x0

    .line 339
    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    .line 341
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz v0, :cond_7

    move v0, v5

    goto :goto_4

    :cond_7
    move v0, v4

    :goto_4
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 342
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->pressHolder:Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_b

    .line 98
    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez p2, :cond_1

    goto/16 :goto_b

    .line 99
    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-nez p3, :cond_2

    goto/16 :goto_b

    .line 101
    :cond_2
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    .line 103
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    if-nez p3, :cond_3

    .line 104
    new-instance p3, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    invoke-direct {p3}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    .line 106
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget-object p3, p3, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget-object p3, p3, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->calculate()V

    .line 110
    iget p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->overrideWidth:I

    const/4 v0, 0x0

    if-lez p3, :cond_4

    .line 111
    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_2

    .line 113
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 114
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result p3

    const/high16 v1, 0x42f40000    # 122.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_1

    .line 116
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getParentWidth()I

    move-result p3

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkNeedDrawShareButton(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    goto :goto_0

    :cond_6
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x40

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    .line 118
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawAvatar()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 119
    iget p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    :cond_7
    :goto_2
    move p3, v0

    .line 123
    :goto_3
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p3, v1, :cond_10

    .line 124
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p3, v1, :cond_8

    move-object v1, v3

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    :goto_4
    if-nez v1, :cond_f

    .line 127
    iget-object v1, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getPosition(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v1

    .line 128
    iget v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    int-to-float v2, v2

    mul-float/2addr v5, v2

    float-to-int v10, v5

    .line 129
    iget v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v2, v2, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 130
    new-instance v5, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v4, :cond_9

    move v9, v4

    :goto_5
    move-object v7, p1

    goto :goto_6

    :cond_9
    move v9, v0

    goto :goto_5

    :goto_6
    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;-><init>(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;ZII)V

    .line 131
    iget-object p1, v8, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 132
    iput-object p1, v5, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    goto :goto_7

    .line 133
    :cond_a
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v4, :cond_c

    .line 134
    iget-object p1, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_b

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_b
    iput-object v3, v5, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    .line 136
    :cond_c
    :goto_7
    iget-object p1, v5, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    iget-object v1, v5, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attachPath:Ljava/lang/String;

    invoke-virtual {p1, v1, v7, v5}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 138
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 139
    iget-object p1, v5, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v1, v8, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->uploadProgress:F

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 142
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 143
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->attach()V

    .line 145
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    move-object v7, p1

    .line 147
    invoke-virtual {v1, v8, v7}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->updateMedia(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;Lorg/telegram/messenger/MessageObject;)V

    :goto_8
    add-int/lit8 p3, p3, 0x1

    move-object p1, v7

    goto/16 :goto_3

    :cond_10
    move-object v7, p1

    .line 151
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_9
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_13

    .line 152
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_11

    move-object p3, v3

    goto :goto_a

    :cond_11
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    :goto_a
    if-eqz p3, :cond_12

    .line 154
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->detach()V

    .line 155
    iget-object p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_12
    add-int/2addr p1, v4

    goto :goto_9

    .line 200
    :cond_13
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Cells/GroupMedia;->updateHolders(Lorg/telegram/messenger/MessageObject;)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget p3, p1, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    int-to-float p3, p3

    div-float/2addr p3, v2

    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    .line 203
    iget p3, p1, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    iget p1, p1, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    .line 205
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    if-eqz p1, :cond_14

    .line 206
    new-instance p1, Lorg/telegram/ui/Components/Text;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int p3, v0

    const-string v0, "UnlockPaidContent"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    const v0, 0x3f333333    # 0.7f

    invoke-static {p3, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p1, p3, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    .line 207
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result p1

    iget p3, p0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_14

    .line 208
    new-instance p1, Lorg/telegram/ui/Components/Text;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v3, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int p3, v3

    const-string v1, "UnlockPaidContentShort"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p1, p3, v2, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    .line 211
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    if-eqz p1, :cond_16

    iget-wide v0, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceTextPrice:J

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_15

    goto :goto_c

    :cond_15
    :goto_b
    return-void

    .line 212
    :cond_16
    :goto_c
    new-instance p1, Lorg/telegram/ui/Components/Text;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide p2, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceTextPrice:J

    long-to-int p2, p2

    const-string p3, "PaidMediaPrice"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x3f666666    # 0.9f

    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->priceText:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method public setOverrideWidth(I)V
    .locals 0

    .line 93
    iput p1, p0, Lorg/telegram/ui/Cells/GroupMedia;->overrideWidth:I

    return-void
.end method

.method public updateHolders(Lorg/telegram/messenger/MessageObject;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 217
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->namesOffset:I

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    iget-boolean v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->captionAbove:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 218
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->captionAbove:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->isEmpty:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasCommentLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 221
    :goto_3
    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->overrideWidth:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    if-lez v6, :cond_5

    .line 222
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v9, v9, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    int-to-float v9, v9

    div-float v9, v8, v9

    .line 223
    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_6

    .line 225
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 226
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v6

    const/high16 v9, 0x42f40000    # 122.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    goto :goto_5

    .line 228
    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getParentWidth()I

    move-result v6

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkNeedDrawShareButton(Lorg/telegram/messenger/MessageObject;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0xa

    goto :goto_4

    :cond_7
    move v9, v5

    :goto_4
    add-int/lit8 v9, v9, 0x40

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    .line 230
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawAvatar()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 231
    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    const/high16 v9, 0x42500000    # 52.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    :cond_8
    move v9, v7

    .line 235
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v10, v6, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    mul-float/2addr v10, v9

    iget v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    .line 236
    iget v10, v6, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    iget v6, v6, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float/2addr v10, v6

    float-to-int v6, v10

    iput v6, v0, Lorg/telegram/ui/Cells/GroupMedia;->height:I

    .line 238
    iput-boolean v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    .line 239
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    .line 240
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 241
    sget v10, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_9

    move v12, v11

    goto :goto_7

    :cond_9
    move v12, v5

    :goto_7
    sub-int/2addr v10, v12

    int-to-float v10, v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v12, 0x40400000    # 3.0f

    .line 242
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v13, v5

    .line 243
    :goto_8
    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_1a

    .line 244
    iget-object v14, v0, Lorg/telegram/ui/Cells/GroupMedia;->holders:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;

    .line 245
    iget-object v15, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    const/16 v16, 0x1

    iget-object v4, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->media:Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getPosition(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v4

    if-nez v4, :cond_a

    move/from16 v20, v2

    move/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v11

    goto/16 :goto_11

    .line 249
    :cond_a
    iget v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->left:F

    div-float/2addr v15, v8

    mul-float/2addr v15, v9

    move/from16 v17, v5

    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia;->maxWidth:I

    move/from16 v18, v8

    int-to-float v8, v5

    mul-float/2addr v15, v8

    float-to-int v8, v15

    .line 250
    iget v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->top:F

    move/from16 v19, v11

    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->layout:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;

    iget v11, v11, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float/2addr v15, v11

    float-to-int v15, v15

    move/from16 v20, v2

    .line 251
    iget v2, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    int-to-float v2, v2

    div-float v2, v2, v18

    mul-float/2addr v2, v9

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 252
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    mul-float/2addr v5, v11

    float-to-int v5, v5

    .line 254
    iget v11, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v21, v11, 0x1

    if-nez v21, :cond_b

    add-int/2addr v8, v6

    sub-int/2addr v2, v6

    :cond_b
    and-int/lit8 v21, v11, 0x4

    if-nez v21, :cond_c

    add-int/2addr v15, v6

    sub-int/2addr v5, v6

    :cond_c
    and-int/lit8 v21, v11, 0x2

    if-nez v21, :cond_d

    sub-int/2addr v2, v6

    :cond_d
    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_e

    sub-int/2addr v5, v6

    .line 259
    :cond_e
    iput v8, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->l:I

    .line 260
    iput v15, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->t:I

    add-int v11, v8, v2

    .line 261
    iput v11, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->r:I

    add-int v11, v15, v5

    .line 262
    iput v11, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->b:I

    .line 263
    iget-object v11, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v8, v8

    int-to-float v15, v15

    int-to-float v2, v2

    int-to-float v5, v5

    invoke-virtual {v11, v8, v15, v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 267
    iget v2, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_f

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_f

    if-nez v20, :cond_f

    move v4, v10

    goto :goto_9

    :cond_f
    move v4, v7

    :goto_9
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_10

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_10

    if-nez v20, :cond_10

    move v5, v10

    goto :goto_a

    :cond_10
    move v5, v7

    :goto_a
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_11

    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_11

    if-nez v3, :cond_11

    move v8, v10

    goto :goto_b

    :cond_11
    move v8, v7

    :goto_b
    and-int/lit8 v11, v2, 0x8

    if-eqz v11, :cond_12

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    if-nez v3, :cond_12

    move v2, v10

    goto :goto_c

    :cond_12
    move v2, v7

    :goto_c
    if-nez v3, :cond_14

    .line 273
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v11

    if-eqz v11, :cond_13

    move v2, v7

    goto :goto_d

    :cond_13
    move v8, v7

    :cond_14
    :goto_d
    if-nez v20, :cond_16

    .line 279
    iget-object v11, v0, Lorg/telegram/ui/Cells/GroupMedia;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v11, v11, Lorg/telegram/ui/Cells/ChatMessageCell;->pinnedTop:Z

    if-eqz v11, :cond_16

    .line 280
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v11

    if-eqz v11, :cond_15

    move v5, v12

    goto :goto_e

    :cond_15
    move v4, v12

    .line 287
    :cond_16
    :goto_e
    iget-object v11, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11, v4, v5, v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 289
    iget-object v11, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->radii:[F

    int-to-float v4, v4

    aput v4, v11, v16

    aput v4, v11, v17

    int-to-float v4, v5

    const/4 v5, 0x3

    .line 290
    aput v4, v11, v5

    aput v4, v11, v19

    int-to-float v2, v2

    const/4 v4, 0x5

    .line 291
    aput v2, v11, v4

    const/4 v4, 0x4

    aput v2, v11, v4

    int-to-float v2, v8

    const/4 v4, 0x7

    .line 292
    aput v2, v11, v4

    const/4 v4, 0x6

    aput v2, v11, v4

    if-eqz v1, :cond_17

    .line 295
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 296
    invoke-virtual {v14, v5}, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->setIcon(I)V

    .line 300
    :cond_17
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    if-nez v2, :cond_19

    iget-boolean v2, v14, Lorg/telegram/ui/Cells/GroupMedia$MediaHolder;->hidden:Z

    if-eqz v2, :cond_18

    goto :goto_f

    :cond_18
    move/from16 v2, v17

    goto :goto_10

    :cond_19
    :goto_f
    move/from16 v2, v16

    :goto_10
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    :goto_11
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    move/from16 v8, v18

    move/from16 v11, v19

    move/from16 v2, v20

    goto/16 :goto_8

    .line 303
    :cond_1a
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->hidden:Z

    if-eqz v2, :cond_1c

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_12

    .line 304
    :cond_1b
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    :goto_12
    if-eqz v1, :cond_1c

    .line 306
    new-instance v2, Lorg/telegram/ui/Components/Text;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int v3, v3

    const-string v4, "UnlockPaidContent"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-direct {v2, v3, v6, v5}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    .line 307
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia;->width:I

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    .line 308
    new-instance v2, Lorg/telegram/ui/Components/Text;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    iput-wide v7, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonTextPrice:J

    long-to-int v1, v7

    const-string v3, "UnlockPaidContentShort"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v2, v1, v6, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia;->buttonText:Lorg/telegram/ui/Components/Text;

    :cond_1c
    return-void
.end method
