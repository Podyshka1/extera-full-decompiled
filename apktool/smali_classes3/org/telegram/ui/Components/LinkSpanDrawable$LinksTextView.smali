.class public Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/LinkSpanDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinksTextView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;
    }
.end annotation


# instance fields
.field private currentLinkLoading:Landroid/text/style/CharacterStyle;

.field private disablePaddingsOffset:Z

.field private disablePaddingsOffsetX:Z

.field private disablePaddingsOffsetY:Z

.field private emojiColorFilter:Landroid/graphics/ColorFilter;

.field private emojiColorFilterColor:I

.field private emojiColorIsLink:Z

.field private isCustomLinkCollector:Z

.field private final links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private loggedError:Z

.field private maxWidth:I

.field private onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;


# direct methods
.method public static synthetic $r8$lambda$emsyP3OEetdZySKyxo5O8gy-eJ8(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->lambda$onTouchEvent$0(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 560
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 564
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 677
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->loggedError:Z

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorIsLink:Z

    .line 565
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->isCustomLinkCollector:Z

    .line 566
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 567
    iput-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 677
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->loggedError:Z

    const/4 p1, 0x1

    .line 718
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorIsLink:Z

    .line 572
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->isCustomLinkCollector:Z

    .line 573
    iput-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 574
    iput-object p3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0(Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V
    .locals 2

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne v1, p1, :cond_0

    .line 648
    invoke-interface {v0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    const/4 p1, 0x0

    .line 649
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear(Z)V

    return-void
.end method

.method protected emojiCacheType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextPaddingTop()I
    .locals 3

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 599
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public hasLinks()Z
    .locals 4

    .line 762
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 764
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 765
    instance-of v2, v0, Landroid/text/Spanned;

    if-nez v2, :cond_1

    return v1

    .line 766
    :cond_1
    check-cast v0, Landroid/text/Spanned;

    .line 767
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_2

    .line 768
    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public hit(II)Landroid/text/style/ClickableSpan;
    .locals 6

    .line 606
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    .line 611
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->getTextPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    .line 612
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float p1, p1

    .line 613
    invoke-virtual {v0, v2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 614
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    cmpg-float v5, v4, p1

    if-gtz v5, :cond_1

    .line 615
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v4, v2

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_1

    .line 616
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 617
    const-class p2, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v3, v3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 618
    array-length p2, p1

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 619
    aget-object p1, p1, p2

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 751
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 752
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiCacheType()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/Layout;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, p0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 757
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 681
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->isCustomLinkCollector:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 682
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 683
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->disablePaddingsOffset:Z

    if-nez v0, :cond_2

    .line 684
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->disablePaddingsOffsetX:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->disablePaddingsOffsetY:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->getTextPaddingTop()I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 686
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 689
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 691
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 694
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 695
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    goto :goto_2

    :catch_0
    move-object v3, p1

    goto/16 :goto_6

    :cond_5
    move v3, v1

    :goto_2
    cmpl-float v1, v3, v1

    if-nez v1, :cond_7

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_4

    .line 697
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move v1, v2

    .line 701
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiCacheType()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    new-array v7, v2, [Landroid/text/Layout;

    aput-object v6, v7, v0

    invoke-static {v3, p0, v5, v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 702
    iget-boolean v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorIsLink:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorFilterColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v3, v3, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v3, :cond_9

    goto :goto_5

    :catch_1
    move-object v3, p1

    :catch_2
    move v0, v1

    goto :goto_6

    .line 703
    :cond_8
    :goto_5
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v3, v3, Landroid/text/TextPaint;->linkColor:I

    iput v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorFilterColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorFilter:Landroid/graphics/ColorFilter;

    .line 705
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    iget-object v12, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorFilter:Landroid/graphics/ColorFilter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v3, p1

    :try_start_3
    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_3
    move-object v3, p1

    move v0, v2

    .line 707
    :goto_6
    iput-boolean v2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->loggedError:Z

    move v1, v0

    :goto_7
    if-eqz v1, :cond_a

    .line 710
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 742
    iget v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->maxWidth:I

    if-lez v0, :cond_0

    .line 743
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 745
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 746
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiCacheType()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/Layout;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, p0, p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 632
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->hit(II)Landroid/text/style/ClickableSpan;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 636
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v2, v4, v5, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    .line 637
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->overrideColor()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 638
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 640
    new-instance p1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v4, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 642
    iget-object v5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 643
    iget-object v5, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v5

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v4, v6}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 645
    invoke-virtual {v0, v4, p1, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 646
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/Components/LinkSpanDrawable;Landroid/text/style/ClickableSpan;)V

    .line 652
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    .line 646
    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 656
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    if-ne v0, v2, :cond_3

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    if-eqz p1, :cond_1

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;->run(Landroid/text/style/ClickableSpan;)V

    goto :goto_0

    .line 661
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 664
    :cond_2
    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return v1

    .line 667
    :cond_3
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 669
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 671
    iput-object v3, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 674
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_1
    return v1
.end method

.method public overrideColor()I
    .locals 2

    .line 626
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    return v0
.end method

.method protected processColor(I)I
    .locals 0

    return p1
.end method

.method public resetEmojiColor()V
    .locals 1

    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorIsLink:Z

    const/4 v0, 0x0

    .line 724
    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorFilter:Landroid/graphics/ColorFilter;

    .line 725
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDisablePaddingsOffset(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->disablePaddingsOffset:Z

    return-void
.end method

.method public setDisablePaddingsOffsetX(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->disablePaddingsOffsetX:Z

    return-void
.end method

.method public setDisablePaddingsOffsetY(Z)V
    .locals 0

    .line 586
    iput-boolean p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->disablePaddingsOffsetY:Z

    return-void
.end method

.method public setEmojiColor(I)V
    .locals 2

    const/4 v0, 0x0

    .line 729
    iput-boolean v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorIsLink:Z

    .line 730
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiColorFilter:Landroid/graphics/ColorFilter;

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLoading(Landroid/text/style/CharacterStyle;)V
    .locals 5

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->currentLinkLoading:Landroid/text/style/CharacterStyle;

    if-eq v0, p1, :cond_0

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clearLoading(Z)V

    .line 533
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->currentLinkLoading:Landroid/text/style/CharacterStyle;

    .line 534
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->makeLoading(Landroid/text/Layout;Landroid/text/style/CharacterStyle;F)Lorg/telegram/ui/Components/LoadingDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 536
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->processColor(I)I

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 538
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const v2, 0x3fa66666    # 1.3f

    .line 539
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 540
    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    .line 541
    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 537
    invoke-virtual {p1, v1, v2, v3, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 543
    iget-object v0, p1, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLoading(Lorg/telegram/ui/Components/LoadingDrawable;)V

    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 552
    iput p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->maxWidth:I

    return-void
.end method

.method public setOnLinkLongPressListener(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onLongPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    return-void
.end method

.method public setOnLinkPressListener(Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onPressListener:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 736
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 737
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->emojiCacheType()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/Layout;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, p0, p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->stack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method
