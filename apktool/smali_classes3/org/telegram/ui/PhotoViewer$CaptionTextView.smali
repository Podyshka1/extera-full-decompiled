.class public Lorg/telegram/ui/PhotoViewer$CaptionTextView;
.super Lorg/telegram/ui/Components/spoilers/SpoilersTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionTextView"
.end annotation


# instance fields
.field private animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private hasQuote:Z

.field private lastLayout:Landroid/text/Layout;

.field private lastLoadingLayout:Landroid/text/Layout;

.field private loading:Z

.field private loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private loadingPath:Landroid/graphics/Path;

.field private quoteBlocks:Ljava/util/ArrayList;

.field private final textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;


# direct methods
.method public static synthetic $r8$lambda$68Zn0di2eVfMWIVJiaBZsioMkX4(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/high16 p1, 0x42800000    # 64.0f

    .line 9130
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$S3wTOxIcLltYn7fa03hYj78wWTA(Lorg/telegram/ui/PhotoViewer$CaptionTextView;Lorg/telegram/messenger/Utilities$Callback3;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->lambda$new$1(Lorg/telegram/messenger/Utilities$Callback3;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQ6J-h1TR2ZzQGmc2D4imlUHlKE(Lorg/telegram/ui/PhotoViewer$CaptionTextView;Lorg/telegram/messenger/Utilities$Callback2;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->lambda$new$0(Lorg/telegram/messenger/Utilities$Callback2;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionScrollView;Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0

    .line 9112
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 9113
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setClearLinkOnLongPress(Z)V

    .line 9114
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setDisablePaddingsOffsetY(Z)V

    .line 9115
    new-instance p1, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$CaptionTextView;Lorg/telegram/messenger/Utilities$Callback2;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    .line 9118
    new-instance p1, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$CaptionTextView;Lorg/telegram/messenger/Utilities$Callback3;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    .line 9121
    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    const/high16 p1, 0x41000000    # 8.0f

    const/high16 p3, 0x41800000    # 16.0f

    .line 9122
    invoke-static {p0, p3, p1, p3, p1}, Lorg/telegram/ui/Components/ViewHelper;->setPadding(Landroid/view/View;FFFF)V

    const p1, -0x863b04    # -3.3200057E38f

    .line 9123
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/4 p1, -0x1

    .line 9124
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    const p1, 0x33ffffff

    .line 9125
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 9126
    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    .line 9127
    invoke-virtual {p0, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9128
    new-instance p1, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private checkLoadingPath()V
    .locals 15

    .line 9238
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 9239
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->lastLoadingLayout:Landroid/text/Layout;

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 9243
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingPath:Landroid/graphics/Path;

    goto :goto_0

    .line 9245
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    :goto_0
    if-eqz v0, :cond_4

    const/high16 v1, 0x41800000    # 16.0f

    .line 9248
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    .line 9249
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9251
    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 9252
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float v7, v1, v6

    sub-float/2addr v5, v7

    .line 9253
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    add-float/2addr v8, v7

    if-nez v4, :cond_2

    .line 9255
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    div-float v7, v2, v6

    sub-float/2addr v3, v7

    .line 9257
    :cond_2
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    int-to-float v7, v7

    .line 9258
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_3

    div-float v6, v2, v6

    add-float/2addr v7, v6

    .line 9261
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    add-float v10, v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float v11, v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float v12, v3, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float v13, v3, v7

    sget-object v14, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_1

    .line 9265
    :cond_4
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->lastLoadingLayout:Landroid/text/Layout;

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/Utilities$Callback2;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 9116
    invoke-interface {p1, p2, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/Utilities$Callback3;Landroid/text/style/ClickableSpan;)V
    .locals 1

    .line 9119
    new-instance v0, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PhotoViewer$CaptionTextView;)V

    invoke-interface {p1, p2, p0, v0}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 9185
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loading:Z

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 9186
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->checkLoadingPath()V

    .line 9187
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez v1, :cond_0

    .line 9188
    new-instance v1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 9189
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->usePath(Landroid/graphics/Path;)V

    .line 9190
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 9191
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, -0x1

    .line 9192
    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    .line 9193
    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    .line 9194
    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    const v6, 0x3f333333    # 0.7f

    .line 9195
    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    .line 9191
    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 9197
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9199
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9200
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 9202
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loading:Z

    if-eqz v1, :cond_2

    .line 9203
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    const/16 v5, 0xb2

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 9205
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->hasQuote:Z

    if-eqz v1, :cond_5

    .line 9206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9207
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move v8, v7

    .line 9208
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 9209
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/QuoteSpan$Block;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->hasQuote:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    add-int/2addr v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/QuoteSpan$Block;->draw(Landroid/graphics/Canvas;FIIFLandroid/text/TextPaint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 9211
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9213
    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9214
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loading:Z

    if-eqz v1, :cond_6

    .line 9215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9217
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9218
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9219
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 9220
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 9221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 9171
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 9172
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    const/4 v0, 0x0

    .line 9173
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocksSpanned(Landroid/text/Layout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 9148
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9150
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9151
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->getStaticTextLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->isCurrent(Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleSelectabeleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9152
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;->draw(Landroid/graphics/Canvas;)V

    .line 9154
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 9157
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 9158
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eq p1, v0, :cond_4

    .line 9159
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/Layout;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v3, p0, p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 9160
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocksSpanned(Landroid/text/Layout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    .line 9161
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    instance-of p1, p1, Landroid/text/Spanned;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spanned;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {p1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    array-length p1, p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->hasQuote:Z

    if-eqz v1, :cond_3

    const/16 v3, 0x20

    :cond_3
    add-int/lit8 v3, v3, 0x10

    int-to-float p1, v3

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 9162
    invoke-static {p0, v0, v1, p1, v1}, Lorg/telegram/ui/Components/ViewHelper;->setPadding(Landroid/view/View;FFFF)V

    .line 9163
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->lastLayout:Landroid/text/Layout;

    :cond_4
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 9178
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 9179
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/text/Layout;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    invoke-static {p4, p0, p1, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 9180
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocksSpanned(Landroid/text/Layout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->quoteBlocks:Ljava/util/ArrayList;

    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    .line 9225
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loading:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 9228
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loading:Z

    .line 9229
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 9137
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9138
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    if-eqz v0, :cond_1

    .line 9140
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 9270
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
