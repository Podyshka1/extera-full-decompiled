.class public Lorg/telegram/ui/ActionBar/SimpleTextView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;
    }
.end annotation


# instance fields
.field private attachedToWindow:Z

.field private buildFullLayout:Z

.field private canHideRightDrawable:Z

.field private currentScrollDelay:I

.field private drawablePadding:I

.field private ellipsizeByGradient:Z

.field private ellipsizeByGradientLeft:Z

.field private ellipsizeByGradientWidthDp:I

.field private emojiCacheType:I

.field private emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private emojiStackColorFilter:Landroid/graphics/ColorFilter;

.field private fadeEllpsizePaint:Landroid/graphics/Paint;

.field private fadeEllpsizePaintWidth:I

.field private fadePaint:Landroid/graphics/Paint;

.field private fadePaintBack:Landroid/graphics/Paint;

.field private firstLineLayout:Landroid/text/Layout;

.field private forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

.field private fullAlpha:F

.field private fullLayout:Landroid/text/Layout;

.field private fullLayoutAdditionalWidth:I

.field private fullLayoutLeftCharactersOffset:F

.field private fullLayoutLeftOffset:I

.field private fullTextMaxLines:I

.field private gravity:I

.field private lastUpdateTime:J

.field private lastWidth:I

.field private layout:Landroid/text/Layout;

.field private layoutX:F

.field private layoutY:F

.field private leftDrawable:Landroid/graphics/drawable/Drawable;

.field private leftDrawableOutside:Z

.field private leftDrawableTopPadding:I

.field private final longPressRunnable:Ljava/lang/Runnable;

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private maxLines:I

.field private maybeClickDrawable1:Z

.field private maybeClickDrawable2:Z

.field private minWidth:I

.field private minusWidth:I

.field private offsetX:I

.field private offsetY:I

.field private paddingRight:I

.field private partLayout:Landroid/text/Layout;

.field private path:Landroid/graphics/Path;

.field private replacedDrawable:Landroid/graphics/drawable/Drawable;

.field private replacedText:Ljava/lang/String;

.field private replacingDrawableTextIndex:I

.field private replacingDrawableTextOffset:F

.field private rightDrawable:Landroid/graphics/drawable/Drawable;

.field private rightDrawable2:Landroid/graphics/drawable/Drawable;

.field private rightDrawable2OnClickListener:Landroid/view/View$OnClickListener;

.field public rightDrawable2X:I

.field public rightDrawable2Y:I

.field private rightDrawableHidden:Z

.field private rightDrawableInside:Z

.field private rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

.field private rightDrawableOutside:Z

.field private rightDrawableScale:F

.field private rightDrawableTopPadding:I

.field public rightDrawableX:I

.field public rightDrawableY:I

.field private scrollNonFitText:Z

.field private scrollingOffset:F

.field private spoilers:Ljava/util/List;

.field private spoilersPool:Ljava/util/Stack;

.field private text:Ljava/lang/CharSequence;

.field private textDoesNotFit:Z

.field private textHeight:I

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field private totalWidth:I

.field private touchDownXDrawable1:F

.field private touchDownXDrawable2:F

.field private touchDownYDrawable1:F

.field private touchDownYDrawable2:F

.field private usaAlphaForEmoji:Z

.field private wasLayout:Z

.field private widthWrapContent:Z

.field private wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$INzI8479wtYP6zBpt2nO8OTcKn8(Lorg/telegram/ui/ActionBar/SimpleTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 149
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x33

    .line 62
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 74
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    const/16 v0, 0x10

    .line 109
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    const/4 v0, 0x3

    .line 124
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    .line 128
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiCacheType:I

    .line 142
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1325
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable1:Z

    const/4 v1, 0x0

    .line 1326
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownXDrawable1:F

    .line 1327
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownYDrawable1:F

    .line 1329
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable2:Z

    .line 1330
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownXDrawable2:F

    .line 1331
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownYDrawable2:F

    .line 1352
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/SimpleTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/SimpleTextView;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->longPressRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    .line 151
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private calcOffset(I)V
    .locals 7

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_c

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    sub-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    goto :goto_0

    .line 337
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    .line 343
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v0, 0x7

    if-ne v4, v3, :cond_3

    .line 344
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, 0x7

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 351
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    int-to-float v4, p1

    .line 353
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    sub-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 355
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    :cond_7
    const/high16 v0, 0x41000000    # 8.0f

    .line 358
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    .line 360
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    .line 362
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    if-eqz v0, :cond_9

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v4, :cond_8

    .line 364
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_2

    :cond_8
    move v0, v2

    .line 366
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v5, :cond_a

    .line 367
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    goto :goto_3

    :cond_9
    move v0, v2

    .line 370
    :cond_a
    :goto_3
    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr p1, v0

    if-le v4, p1, :cond_b

    goto :goto_4

    :cond_b
    move v3, v2

    :goto_4
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz p1, :cond_c

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    if-lez v0, :cond_c

    .line 373
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    .line 377
    :cond_c
    iget p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-ltz p1, :cond_d

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    return-void

    .line 380
    :cond_d
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    return-void
.end method

.method private clipOutSpoilers(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 1210
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1211
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 1213
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1177
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    if-eqz v1, :cond_1

    .line 1178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1179
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v1, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1180
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutX:F

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutX:F

    .line 1182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1183
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->clipOutSpoilers(Landroid/graphics/Canvas;)V

    .line 1184
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v1, :cond_0

    .line 1185
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->clearPositions()V

    .line 1187
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1190
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStackColorFilter:Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 1191
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawSpoilers(Landroid/graphics/Canvas;)V

    .line 1192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1194
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1195
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->clipOutSpoilers(Landroid/graphics/Canvas;)V

    .line 1196
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v1, :cond_2

    .line 1197
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->clearPositions()V

    .line 1199
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1202
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStackColorFilter:Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 1203
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawSpoilers(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSpoilers(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 1218
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private handleDrawableTouch(Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Z)Z
    .locals 7

    if-eqz p4, :cond_0

    .line 1361
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable1:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable2:Z

    :goto_0
    if-eqz p4, :cond_1

    .line 1362
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownXDrawable1:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownXDrawable2:F

    :goto_1
    if-eqz p4, :cond_2

    .line 1363
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownYDrawable1:F

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownYDrawable2:F

    .line 1365
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1369
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1371
    instance-of p1, p2, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;

    if-eqz p1, :cond_3

    .line 1372
    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;

    invoke-interface {p2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;->setPressed(Z)V

    .line 1374
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->longPressRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1f4

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    move v0, v4

    goto/16 :goto_4

    .line 1375
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_7

    if-eqz v0, :cond_7

    .line 1376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    sub-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p3, p3, v3

    if-gez p3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_a

    .line 1378
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1379
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1381
    instance-of p1, p2, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;

    if-eqz p1, :cond_6

    .line 1382
    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;

    invoke-interface {p2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;->setPressed(Z)V

    :cond_6
    :goto_3
    move v0, v6

    goto :goto_4

    .line 1385
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_a

    .line 1386
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_9

    .line 1387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 1388
    invoke-interface {p3, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1390
    instance-of p1, p2, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;

    if-eqz p1, :cond_9

    .line 1391
    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;

    invoke-interface {p2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView$PressableDrawable;->setPressed(Z)V

    .line 1395
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :cond_a
    :goto_4
    if-eqz p4, :cond_b

    .line 1399
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable1:Z

    .line 1400
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownXDrawable1:F

    .line 1401
    iput v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownYDrawable1:F

    return v0

    .line 1403
    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable2:Z

    .line 1404
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownXDrawable2:F

    .line 1405
    iput v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownYDrawable2:F

    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 1353
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1354
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable1:Z

    return-void

    .line 1355
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable2:Z

    if-eqz v0, :cond_1

    .line 1356
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClickDrawable2:Z

    :cond_1
    return-void
.end method

.method private recreateLayoutMaybe()Z
    .locals 3

    .line 730
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    if-nez v0, :cond_1

    .line 731
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    move-result v0

    .line 732
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    return v0

    .line 735
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    return v0

    .line 739
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    return v0
.end method

.method private updateFadePaints()V
    .locals 22

    move-object/from16 v0, p0

    .line 262
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v1, :cond_1

    .line 263
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    .line 264
    new-instance v5, Landroid/graphics/LinearGradient;

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v8, v6

    filled-new-array {v3, v4}, [I

    move-result-object v10

    new-array v11, v2, [F

    fill-array-data v11, :array_0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v12, v21

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 265
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 267
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    .line 268
    new-instance v14, Landroid/graphics/LinearGradient;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    filled-new-array {v4, v3}, [I

    move-result-object v19

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v5

    move-object/from16 v20, v7

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 269
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 272
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 278
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_3

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-eq v5, v1, :cond_6

    :cond_3
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v5, :cond_6

    .line 279
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_4

    .line 280
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    .line 282
    :cond_4
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-eqz v1, :cond_5

    .line 284
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    int-to-float v8, v6

    filled-new-array {v3, v4}, [I

    move-result-object v10

    new-array v11, v2, [F

    fill-array-data v11, :array_2

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 286
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    int-to-float v8, v6

    filled-new-array {v4, v3}, [I

    move-result-object v10

    new-array v11, v2, [F

    fill-array-data v11, :array_3

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 288
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateScrollAnimation()V
    .locals 11

    .line 1222
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1225
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1226
    iget-wide v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastUpdateTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x11

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move-wide v4, v6

    .line 1230
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    if-lez v0, :cond_2

    int-to-long v0, v0

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 1231
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    goto :goto_1

    .line 1233
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v0, v6

    .line 1235
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    const/high16 v8, 0x41a00000    # 20.0f

    if-gez v6, :cond_3

    .line 1236
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v8

    const/high16 v7, 0x41f00000    # 30.0f

    add-float/2addr v6, v7

    goto :goto_0

    .line 1237
    :cond_3
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    cmpl-float v6, v6, v9

    const/high16 v9, 0x42480000    # 50.0f

    if-ltz v6, :cond_4

    .line 1238
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v0, v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    .line 1239
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v8

    sub-float v6, v9, v6

    goto :goto_0

    :cond_4
    move v6, v9

    .line 1243
    :goto_0
    iget v7, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v7, v4

    iput v7, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    .line 1244
    iput-wide v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastUpdateTime:J

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_5

    .line 1246
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v0, 0x1f4

    .line 1247
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 1250
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public copyScrolling(Lorg/telegram/ui/ActionBar/SimpleTextView;)V
    .locals 0

    .line 716
    iget p1, p1, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    return-void
.end method

.method protected createLayout(I)Z
    .locals 23

    move-object/from16 v0, p0

    .line 385
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    const/4 v2, -0x1

    .line 386
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    const/4 v6, 0x0

    .line 387
    iput-boolean v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_18

    .line 391
    :try_start_0
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-nez v4, :cond_0

    .line 392
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 393
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, p1, v3

    .line 394
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    .line 397
    :goto_0
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    if-nez v4, :cond_2

    .line 398
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v5, :cond_1

    .line 399
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 401
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_1
    move v4, v6

    .line 403
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v8, :cond_3

    .line 404
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 406
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v3, v5

    goto :goto_2

    :cond_2
    move v4, v6

    .line 409
    :cond_3
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 410
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-ltz v5, :cond_5

    .line 412
    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 413
    new-instance v5, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-direct {v5, v8}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    iget v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v1, v5, v8, v9, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_3
    move-object v8, v1

    goto :goto_4

    .line 416
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v3, v5

    .line 417
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v3, v5

    goto :goto_3

    .line 420
    :goto_4
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v1, :cond_6

    .line 421
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v5, v3

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v8, v1, v5, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 422
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 423
    iput-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    add-int/2addr v3, v4

    .line 425
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v1

    :cond_6
    move v10, v3

    .line 428
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v1, :cond_10

    .line 430
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v1, :cond_7

    .line 431
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v5, v10

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v8, v1, v5, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :cond_7
    move-object v1, v8

    .line 433
    :goto_5
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v5, :cond_d

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 434
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v11

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    const/16 v18, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v10

    move/from16 v17, v2

    invoke-static/range {v8 .. v18}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v2

    move-object v5, v15

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v2, :cond_16

    .line 436
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 437
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 438
    invoke-interface {v8, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 439
    invoke-static {v8}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 440
    new-instance v11, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v11}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v8, v11, v6, v9, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 442
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v2, v9, :cond_8

    .line 443
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v1, v2, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_6

    .line 445
    :cond_8
    const-string/jumbo v2, "\u2026"

    .line 447
    :goto_6
    new-instance v11, Landroid/text/StaticLayout;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v9, :cond_9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_7
    move/from16 v16, v9

    goto :goto_8

    :cond_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v10

    goto :goto_7

    :goto_8
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v12, v1

    invoke-direct/range {v11 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    .line 448
    new-instance v11, Landroid/text/StaticLayout;

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v1, :cond_a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_9
    move/from16 v16, v1

    goto :goto_a

    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    goto :goto_9

    :goto_a
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v12, v21

    invoke-direct/range {v11 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 449
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    const/4 v9, 0x0

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_b

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u200f"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    move-object v12, v2

    .line 452
    new-instance v11, Landroid/text/StaticLayout;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v1, :cond_c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_b
    move/from16 v16, v1

    goto :goto_c

    :cond_c
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    goto :goto_b

    :goto_c
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    .line 453
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    add-int v14, v1, v2

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v15

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    add-int v20, v10, v1

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    const/16 v22, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v21, v1

    move-object/from16 v19, v5

    move-object v12, v8

    invoke-static/range {v12 .. v22}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    goto/16 :goto_14

    :cond_d
    move-object v12, v1

    .line 456
    new-instance v11, Landroid/text/StaticLayout;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_e

    goto :goto_e

    :cond_e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    :goto_d
    move/from16 v16, v1

    goto :goto_f

    :cond_f
    :goto_e
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_d

    :goto_f
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 457
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    .line 458
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    .line 459
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    goto :goto_14

    .line 461
    :cond_10
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    if-le v1, v7, :cond_11

    .line 462
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v11

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/16 v18, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v10

    move/from16 v17, v1

    invoke-static/range {v8 .. v18}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    goto :goto_14

    .line 465
    :cond_11
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v1, :cond_13

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_12

    goto :goto_10

    .line 468
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v2, v10

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v8, v1, v2, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    :cond_13
    :goto_10
    move-object v12, v8

    .line 474
    new-instance v11, Landroid/text/StaticLayout;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_14

    goto :goto_12

    :cond_14
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    :goto_11
    move/from16 v16, v1

    goto :goto_13

    :cond_15
    :goto_12
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_11

    :goto_13
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 477
    :cond_16
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 478
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 479
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_17

    .line 480
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V

    .line 482
    :cond_17
    invoke-direct {v0, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->calcOffset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    .line 487
    :cond_18
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 488
    iput v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    .line 489
    iput v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    .line 491
    :catch_0
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 492
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    if-eqz v1, :cond_19

    .line 493
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiCacheType:I

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    new-array v4, v7, [Landroid/text/Layout;

    aput-object v3, v4, v6

    invoke-static {v1, v0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 495
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return v7
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 595
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExactWidth()F
    .locals 2

    .line 1171
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 1172
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getSideDrawablesSize()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1173
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    :goto_1
    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getFullAlpha()F
    .locals 1

    .line 222
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    return v0
.end method

.method public getLayout()Landroid/text/Layout;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    return-object v0
.end method

.method public getLayoutX()F
    .locals 1

    .line 169
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutX:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .line 173
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutY:F

    return v0
.end method

.method public getLeftDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLineCount()I
    .locals 2

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 756
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getMaxTextWidth()I
    .locals 4

    .line 1167
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v1

    :cond_1
    sub-int/2addr v0, v2

    return v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getRightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRightDrawable2()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRightDrawableOutside()Z
    .locals 1

    .line 1314
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    return v0
.end method

.method public getRightDrawableWidth()I
    .locals 3

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getRightDrawableX()I
    .locals 1

    .line 1159
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    return v0
.end method

.method public getRightDrawableY()I
    .locals 1

    .line 1163
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    return v0
.end method

.method public getSideDrawablesSize()I
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 316
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 318
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 320
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 746
    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextHeight()I
    .locals 1

    .line 554
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    return v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getTextStartX()I
    .locals 4

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 767
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 768
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v2, :cond_1

    .line 769
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v1, v0

    .line 772
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v3, :cond_2

    .line 773
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v2, :cond_2

    .line 774
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 777
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTextStartY()I
    .locals 2

    .line 785
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 788
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTextWidth()I
    .locals 4

    .line 544
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :cond_1
    add-int/2addr v2, v1

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1256
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1258
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    .line 1259
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1260
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    .line 1261
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_3

    .line 1262
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 178
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    .line 180
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiCacheType:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    new-array v0, v0, [Landroid/text/Layout;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v1, p0, v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    .line 197
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 198
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    .line 835
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x0

    .line 837
    iput v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutX:F

    .line 838
    iput v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutY:F

    .line 840
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    if-nez v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_1

    :cond_0
    move v11, v9

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    if-nez v11, :cond_3

    .line 842
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, -0x80000000

    move v7, v1

    move-object/from16 v1, p1

    goto :goto_2

    .line 843
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v2

    move v7, v2

    .line 846
    :goto_2
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    .line 847
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    const/16 v12, 0x10

    if-eqz v2, :cond_8

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-nez v4, :cond_8

    .line 848
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v2, v2

    float-to-int v2, v2

    .line 849
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v4, 0x7

    if-ne v5, v9, :cond_4

    .line 850
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v5

    :cond_4
    and-int/lit8 v4, v4, 0x70

    if-ne v4, v12, :cond_5

    .line 854
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    :goto_3
    add-int/2addr v4, v5

    goto :goto_4

    .line 856
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    goto :goto_3

    .line 858
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v5, v2, v4, v6, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 859
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 860
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v2, 0x7

    if-eq v4, v3, :cond_7

    and-int/lit8 v2, v2, 0x7

    if-ne v2, v9, :cond_6

    goto :goto_5

    :cond_6
    move v2, v10

    goto :goto_6

    .line 861
    :cond_7
    :goto_5
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 863
    :goto_6
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    goto :goto_7

    .line 864
    :cond_8
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 865
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_7

    :cond_9
    move v2, v10

    .line 867
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_e

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 868
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 869
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v13, v6, 0x7

    if-ne v13, v9, :cond_a

    .line 870
    iget v13, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v5, v13

    :cond_a
    and-int/lit8 v6, v6, 0x70

    if-ne v6, v12, :cond_b

    .line 874
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    add-int/2addr v4, v6

    goto :goto_8

    .line 876
    :cond_b
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    add-int/2addr v4, v6

    .line 878
    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v13, v5

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v14, v4

    invoke-virtual {v6, v5, v4, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 879
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 880
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v4, :cond_e

    .line 881
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v4, 0x7

    if-eq v5, v3, :cond_c

    and-int/lit8 v3, v4, 0x7

    if-ne v3, v9, :cond_d

    .line 882
    :cond_c
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 884
    :cond_d
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    :cond_e
    move v13, v2

    .line 888
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    if-eqz v2, :cond_12

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    if-nez v4, :cond_12

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_12

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v4, :cond_12

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    if-nez v4, :cond_12

    .line 889
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v4, v13

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v5, v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 890
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v6, v5, 0x7

    if-eq v6, v9, :cond_f

    and-int/lit8 v5, v5, 0x7

    if-ne v5, v3, :cond_10

    .line 892
    :cond_f
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v4, v5

    .line 894
    :cond_10
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 895
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 897
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v6, v6, 0x70

    if-ne v6, v12, :cond_11

    .line 898
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_9
    add-int/2addr v6, v14

    goto :goto_a

    .line 900
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v6, v14

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_9

    .line 902
    :goto_a
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int v15, v4, v2

    move/from16 v16, v8

    add-int v8, v6, v5

    invoke-virtual {v14, v4, v6, v15, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/lit8 v8, v2, 0x1

    add-int/2addr v4, v8

    .line 903
    iput v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v4, v5, 0x1

    add-int/2addr v6, v4

    .line 904
    iput v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 905
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 906
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    iput v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    goto :goto_b

    :cond_12
    move/from16 v16, v8

    .line 908
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    if-nez v2, :cond_17

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    cmpl-float v2, v2, v16

    if-lez v2, :cond_17

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_17

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    if-nez v2, :cond_17

    .line 909
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v2, v13

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 910
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_13

    .line 911
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 913
    :cond_13
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v4, 0x7

    if-eq v5, v9, :cond_14

    and-int/lit8 v4, v4, 0x7

    if-ne v4, v3, :cond_15

    .line 915
    :cond_14
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v4

    .line 917
    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 918
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 920
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v6, v6, 0x70

    if-ne v6, v12, :cond_16

    .line 921
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    iget v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_c
    add-int/2addr v6, v8

    goto :goto_d

    .line 923
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_c

    .line 925
    :goto_d
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    add-int v14, v2, v4

    add-int v15, v6, v5

    invoke-virtual {v8, v2, v6, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/lit8 v8, v4, 0x1

    add-int/2addr v2, v8

    .line 926
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2X:I

    shr-int/lit8 v2, v5, 0x1

    add-int/2addr v6, v2

    .line 927
    iput v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2Y:I

    .line 928
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 929
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    .line 931
    :cond_17
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int v8, v2, v5

    .line 933
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v5, v2, v16

    if-eqz v5, :cond_1e

    .line 934
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_19

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-nez v5, :cond_19

    neg-float v2, v2

    float-to-int v2, v2

    add-int/2addr v2, v8

    .line 937
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v5, 0x70

    if-ne v5, v12, :cond_18

    .line 938
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    :goto_e
    add-int/2addr v5, v6

    goto :goto_f

    .line 940
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    goto :goto_e

    .line 942
    :goto_f
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v14, v2

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v6, v2, v5, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 943
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 945
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1b

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v5, :cond_1b

    .line 946
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 947
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 948
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v6, v13

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v6, v14

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v14, v14

    float-to-int v14, v14

    add-int/2addr v6, v14

    add-int/2addr v6, v8

    .line 950
    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v14, v14, 0x70

    if-ne v14, v12, :cond_1a

    .line 951
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x2

    iget v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_10
    add-int/2addr v14, v15

    goto :goto_11

    .line 953
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v15, v5

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    iget v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_10

    .line 955
    :goto_11
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v17, v4

    add-int v4, v6, v2

    add-int v3, v14, v5

    invoke-virtual {v15, v6, v14, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/2addr v2, v9

    add-int/2addr v6, v2

    .line 956
    iput v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v2, v5, 0x1

    add-int/2addr v14, v2

    .line 957
    iput v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 958
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_12

    :cond_1b
    move/from16 v17, v4

    .line 960
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1f

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v3, :cond_1f

    .line 961
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 962
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 963
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v4, v13

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v5, v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v8

    .line 964
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1c

    .line 965
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 968
    :cond_1c
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v5, 0x70

    if-ne v5, v12, :cond_1d

    .line 969
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_13
    add-int/2addr v5, v6

    goto :goto_14

    .line 971
    :cond_1d
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_13

    .line 973
    :goto_14
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 974
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_15

    :cond_1e
    move/from16 v17, v4

    .line 978
    :cond_1f
    :goto_15
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-eqz v2, :cond_3e

    .line 979
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-nez v2, :cond_20

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_20

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v2, :cond_20

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    if-lez v2, :cond_22

    .line 980
    :cond_20
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 981
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v2

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_21

    instance-of v4, v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v4, :cond_21

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v4, :cond_21

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_16

    :cond_21
    move/from16 v4, v16

    :goto_16
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v13, v10, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 983
    :cond_22
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->usaAlphaForEmoji:Z

    sput-boolean v2, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    .line 984
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_23

    .line 985
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v2, v5

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 987
    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    .line 988
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v2, v10, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 989
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 991
    :cond_23
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v13

    if-nez v2, :cond_24

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    if-nez v2, :cond_24

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_25

    .line 992
    :cond_24
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 993
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    sub-float/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 994
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutX:F

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v4, v13

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    sub-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutX:F

    .line 995
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutY:F

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layoutY:F

    .line 997
    :cond_25
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawLayout(Landroid/graphics/Canvas;)V

    .line 998
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x437f0000    # 255.0f

    if-eqz v2, :cond_29

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_29

    .line 999
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 1000
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    sub-float v14, v4, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1001
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1003
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v9, :cond_27

    .line 1004
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    if-ne v6, v9, :cond_26

    const/high16 v6, 0x3f000000    # 0.5f

    :goto_17
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    goto :goto_18

    :cond_26
    const/high16 v6, 0x40800000    # 4.0f

    goto :goto_17

    :cond_27
    move/from16 v6, v16

    .line 1006
    :goto_18
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v14, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v14

    cmpl-float v14, v14, v16

    if-eqz v14, :cond_28

    .line 1007
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v14, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v14

    neg-float v14, v14

    add-float/2addr v14, v6

    move/from16 v15, v16

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_19

    :cond_28
    move/from16 v15, v16

    .line 1009
    iget-object v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v14, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v14

    sub-float/2addr v14, v6

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1011
    :goto_19
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v6, v14

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float/2addr v3, v14

    add-float/2addr v6, v3

    invoke-virtual {v1, v6, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1012
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1013
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1014
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1016
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v2, :cond_2a

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    const/16 v16, 0x0

    cmpl-float v2, v2, v16

    if-lez v2, :cond_2a

    .line 1017
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 1018
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1020
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v3, v6

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float/2addr v6, v14

    add-float/2addr v3, v6

    sub-float/2addr v3, v14

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1021
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1022
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1a

    :cond_2a
    const/4 v15, 0x0

    .line 1024
    :goto_1a
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_2b

    int-to-float v2, v8

    .line 1025
    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1026
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawLayout(Landroid/graphics/Canvas;)V

    .line 1028
    :cond_2b
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v13

    if-nez v2, :cond_2c

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    if-nez v2, :cond_2c

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_2d

    .line 1029
    :cond_2c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1031
    :cond_2d
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_31

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    if-nez v3, :cond_31

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    const/16 v16, 0x0

    cmpl-float v3, v3, v16

    if-lez v3, :cond_31

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v3, :cond_31

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    if-eqz v3, :cond_31

    .line 1032
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v3, v13

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v6, v6

    float-to-int v6, v6

    add-int/2addr v3, v6

    .line 1033
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v14, v6, 0x7

    if-eq v14, v9, :cond_2e

    and-int/lit8 v6, v6, 0x7

    const/4 v14, 0x5

    if-ne v6, v14, :cond_2f

    .line 1035
    :cond_2e
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v3, v6

    .line 1037
    :cond_2f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 1038
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v6, v14

    float-to-int v6, v6

    .line 1040
    iget v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v14, v14, 0x70

    if-ne v14, v12, :cond_30

    .line 1041
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v6

    div-int/lit8 v14, v14, 0x2

    iget v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_1b
    add-int/2addr v14, v15

    goto :goto_1c

    .line 1043
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v15, v6

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    iget v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_1b

    .line 1045
    :goto_1c
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v19, v4

    add-int v4, v3, v2

    move/from16 v20, v5

    add-int v5, v14, v6

    invoke-virtual {v15, v3, v14, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v3, v4

    .line 1046
    iput v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v3, v6, 0x1

    add-int/2addr v14, v3

    .line 1047
    iput v14, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 1048
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1049
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    goto :goto_1d

    :cond_31
    move/from16 v19, v4

    move/from16 v20, v5

    .line 1051
    :goto_1d
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_36

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    if-nez v2, :cond_36

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    const/16 v16, 0x0

    cmpl-float v2, v2, v16

    if-lez v2, :cond_36

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_36

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    if-eqz v2, :cond_36

    .line 1052
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v2, v13

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v3, v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 1053
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_32

    .line 1054
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1056
    :cond_32
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v3, 0x7

    if-eq v4, v9, :cond_33

    and-int/lit8 v3, v3, 0x7

    const/4 v14, 0x5

    if-ne v3, v14, :cond_34

    .line 1058
    :cond_33
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v3

    .line 1060
    :cond_34
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1061
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1063
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v5, 0x70

    if-ne v5, v12, :cond_35

    .line 1064
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_1e
    add-int/2addr v5, v6

    goto :goto_1f

    .line 1066
    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_1e

    .line 1068
    :goto_1f
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    add-int v14, v2, v3

    add-int v15, v5, v4

    invoke-virtual {v6, v2, v5, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/lit8 v6, v3, 0x1

    add-int/2addr v2, v6

    .line 1069
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2X:I

    shr-int/lit8 v2, v4, 0x1

    add-int/2addr v5, v2

    .line 1070
    iput v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2Y:I

    .line 1071
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1072
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    :cond_36
    if-eqz v11, :cond_39

    .line 1075
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_37

    .line 1076
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    mul-float v4, v4, v20

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_20

    .line 1077
    :cond_37
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_38

    .line 1078
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 1079
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v19, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_20

    .line 1081
    :cond_38
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_20
    int-to-float v2, v13

    const/high16 v14, 0x40c00000    # 6.0f

    .line 1083
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v13

    int-to-float v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v5, v3

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1084
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1085
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v2, v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1086
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1087
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_22

    .line 1088
    :cond_39
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v2, :cond_3c

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3c

    .line 1089
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1090
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    .line 1091
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-nez v2, :cond_3b

    .line 1092
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3a

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v3, :cond_3a

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v3, :cond_3a

    const/high16 v18, 0x40000000    # 2.0f

    goto :goto_21

    :cond_3a
    const/16 v18, 0x0

    :goto_21
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3b
    int-to-float v2, v13

    .line 1094
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    int-to-float v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v5, v3

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1095
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1097
    :cond_3c
    :goto_22
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateScrollAnimation()V

    .line 1098
    sput-boolean v9, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    .line 1099
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-nez v2, :cond_3d

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_3d

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v2, :cond_3d

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    if-lez v2, :cond_3e

    .line 1100
    :cond_3d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3e
    if-nez v11, :cond_3f

    .line 1103
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v2, :cond_40

    .line 1104
    :cond_3f
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1107
    :cond_40
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_42

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-eqz v3, :cond_42

    .line 1109
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1110
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1112
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v12, :cond_41

    .line 1113
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    :goto_23
    add-int/2addr v4, v5

    goto :goto_24

    .line 1115
    :cond_41
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    goto :goto_23

    .line 1117
    :goto_24
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v4

    invoke-virtual {v5, v10, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1118
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1120
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_45

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v2, :cond_45

    .line 1121
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v2, v13

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v16, 0x0

    cmpl-float v4, v3, v16

    if-nez v4, :cond_43

    neg-int v3, v8

    goto :goto_25

    :cond_43
    neg-float v3, v3

    float-to-int v3, v3

    :goto_25
    add-int/2addr v2, v3

    add-int/2addr v2, v8

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1122
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1123
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1125
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v5, 0x70

    if-ne v5, v12, :cond_44

    .line 1126
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_26
    add-int/2addr v5, v6

    goto :goto_27

    .line 1128
    :cond_44
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_26

    .line 1130
    :goto_27
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int v7, v2, v3

    add-int v10, v5, v4

    invoke-virtual {v6, v2, v5, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/2addr v3, v9

    add-int/2addr v2, v3

    .line 1131
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v2, v4, 0x1

    add-int/2addr v5, v2

    .line 1132
    iput v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 1133
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1135
    :cond_45
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_49

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v2, :cond_49

    .line 1136
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v13, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v13, v2

    .line 1137
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v16, 0x0

    cmpl-float v3, v2, v16

    if-nez v3, :cond_46

    neg-int v2, v8

    goto :goto_28

    :cond_46
    neg-float v2, v2

    float-to-int v2, v2

    :goto_28
    add-int/2addr v13, v2

    add-int/2addr v13, v8

    .line 1138
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v3

    .line 1136
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1140
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_47

    .line 1141
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1143
    :cond_47
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1144
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1146
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v5, v5, 0x70

    if-ne v5, v12, :cond_48

    .line 1147
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_29
    add-int/2addr v5, v6

    goto :goto_2a

    .line 1149
    :cond_48
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_29

    .line 1151
    :goto_2a
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    add-int v7, v2, v3

    add-int v8, v5, v4

    invoke-virtual {v6, v2, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/2addr v3, v9

    add-int/2addr v2, v3

    .line 1152
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2X:I

    shr-int/lit8 v2, v4, 0x1

    add-int/2addr v5, v2

    .line 1153
    iput v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2Y:I

    .line 1154
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_49
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1273
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 1274
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1275
    const-string v0, "android.widget.TextView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 510
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 511
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 512
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastWidth:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_0

    .line 513
    iput v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastWidth:I

    const/4 v1, 0x0

    .line 514
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v1, 0x1f4

    .line 515
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    .line 520
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_4

    goto :goto_3

    .line 523
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p2

    .line 525
    :goto_3
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->widthWrapContent:Z

    if-eqz p2, :cond_8

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p2, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    add-int/2addr p2, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    add-int/2addr p2, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v2

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    add-int/2addr p2, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int v3, v1, v2

    :cond_7
    add-int/2addr p2, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 529
    :cond_8
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 531
    iget p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-ne p1, p2, :cond_9

    .line 532
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    return-void

    .line 534
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1338
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    .line 1339
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 1338
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0, v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->handleDrawableTouch(Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1343
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2OnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 1344
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v5, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2X:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2Y:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2X:I

    .line 1345
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2Y:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v8, v2

    int-to-float v2, v8

    .line 1344
    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1346
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2OnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v2, v4, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->handleDrawableTouch(Landroid/view/MotionEvent;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1349
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method public replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 624
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 626
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 628
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 630
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 633
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    return-void
.end method

.method public resetScrolling()V
    .locals 1

    const/4 v0, 0x0

    .line 712
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 501
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 583
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 584
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 587
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBuildFullLayout(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    return-void
.end method

.method public setCanHideRightDrawable(Z)V
    .locals 0

    .line 1296
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 1

    .line 720
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    .line 724
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 725
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEllipsizeByGradient(I)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ILjava/lang/Boolean;)V

    return-void
.end method

.method public setEllipsizeByGradient(ILjava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ZLjava/lang/Boolean;)V

    .line 253
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    .line 254
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    return-void
.end method

.method public setEllipsizeByGradient(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public setEllipsizeByGradient(ZLjava/lang/Boolean;)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 246
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    .line 247
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

    .line 248
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    return-void
.end method

.method public setEmojiCacheType(I)V
    .locals 4

    .line 184
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiCacheType:I

    if-eq p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 186
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiCacheType:I

    .line 187
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/Layout;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p1, p0, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    :cond_0
    return-void
.end method

.method public setEmojiColor(I)V
    .locals 2

    .line 145
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStackColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFullAlpha(F)V
    .locals 0

    .line 217
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFullLayoutAdditionalWidth(II)V
    .locals 1

    .line 1280
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1281
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    .line 1282
    iput p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    .line 1283
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    return-void
.end method

.method public setFullTextMaxLines(I)V
    .locals 0

    .line 1288
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 297
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    if-eq v0, p1, :cond_0

    .line 298
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    .line 299
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLeftDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 603
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 605
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 607
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 609
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setLeftDrawableOutside(Z)V
    .locals 0

    .line 1304
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    return-void
.end method

.method public setLeftDrawableTopPadding(I)V
    .locals 0

    .line 558
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    return-void
.end method

.method public setLinkTextColor(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iput p1, v0, Landroid/text/TextPaint;->linkColor:I

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 293
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 578
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minWidth:I

    return-void
.end method

.method public setMinusWidth(I)V
    .locals 1

    .line 637
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    .line 641
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRightDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method public setRightDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 655
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 657
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 659
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 661
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setRightDrawable2(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 672
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 674
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 676
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 678
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 679
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setRightDrawable2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1322
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2OnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightDrawableInside(Z)V
    .locals 0

    .line 1309
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    return-void
.end method

.method public setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightDrawableOutside(Z)V
    .locals 0

    .line 1300
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    return-void
.end method

.method public setRightDrawableScale(F)V
    .locals 0

    .line 689
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    return-void
.end method

.method public setRightDrawableTopPadding(I)V
    .locals 0

    .line 562
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    return-void
.end method

.method public setRightPadding(I)V
    .locals 5

    .line 792
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    if-eq v0, p1, :cond_5

    .line 793
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    .line 795
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr p1, v0

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableOutside:Z

    if-nez v1, :cond_0

    .line 797
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 798
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v0

    .line 801
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableInside:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_1

    .line 803
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    sub-int/2addr p1, v1

    .line 805
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v0

    .line 807
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_2

    .line 808
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    sub-int/2addr p1, v1

    .line 810
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v0

    .line 813
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v0, :cond_3

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 816
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v0

    .line 819
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v0, :cond_4

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, p1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 821
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 822
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    add-int/2addr p1, v1

    .line 824
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr p1, v0

    .line 827
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->calcOffset(I)V

    .line 829
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public setScrollNonFitText(Z)V
    .locals 1

    .line 226
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 229
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    .line 230
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSideDrawablesColor(I)V
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    .line 698
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;Z)Z
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 705
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    const/16 p1, 0x1f4

    .line 706
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 707
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    const/4 p1, 0x1

    return p1
.end method

.method public setTextColor(I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    int-to-float p1, p1

    .line 202
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->widthWrapContent:Z

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable2:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
