.class public Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;
.super Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawingInBackgroundLine"
.end annotation


# instance fields
.field private appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

.field drawInBackgroundViews:Ljava/util/ArrayList;

.field imageViewEmojis:Ljava/util/ArrayList;

.field lite:Z

.field public position:I

.field skewAlpha:F

.field skewBelow:Z

.field public startOffset:I

.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)V
    .locals 1

    .line 4552
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;-><init>()V

    .line 4557
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4558
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/4 p1, 0x0

    .line 4559
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    const/16 p1, 0x2008

    .line 4561
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->lite:Z

    .line 4774
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V
    .locals 3

    if-eqz p2, :cond_0

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p4, p3

    float-to-int p3, p4

    .line 4880
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4881
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object p3, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4882
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 4883
    :cond_0
    iget-boolean p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez p2, :cond_1

    iget-boolean p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p2, :cond_2

    .line 4884
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4885
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result p2

    iget-object v0, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v1, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    iget-object v2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4886
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4887
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private skew(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 4866
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 4867
    iget-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    int-to-float v0, p3

    .line 4868
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p2, p2

    mul-float/2addr p2, v3

    .line 4869
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    sub-float p2, v1, p2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    sub-float/2addr v1, v0

    neg-float v0, v1

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->skew(FF)V

    neg-int p2, p3

    int-to-float p2, p2

    .line 4870
    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    .line 4872
    :cond_0
    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float p2, p2

    mul-float/2addr p2, v3

    .line 4873
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float p2, v1, p2

    iget p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    sub-float/2addr v1, p3

    mul-float/2addr p2, v1

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->skew(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JIIF)V
    .locals 11

    .line 4565
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4568
    iput v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/4 v3, 0x0

    .line 4569
    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    .line 4570
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 4571
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4572
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 4573
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    invoke-static {v5, v4, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v1, v5

    const/high16 v5, 0x3e800000    # 0.25f

    add-float/2addr v1, v5

    .line 4574
    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    .line 4577
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    const/16 v5, 0xd

    const/4 v6, 0x1

    if-eq v1, v5, :cond_3

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x4

    if-le v1, v5, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->lite:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$menterAnimationInProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v6

    :goto_1
    if-nez v1, :cond_7

    .line 4579
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-gez v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v3

    .line 4580
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 4581
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4582
    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-nez v8, :cond_8

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-nez v8, :cond_8

    iget-object v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-nez v8, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v8

    cmpl-float v8, v8, v4

    if-nez v8, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v4

    if-nez v8, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v8

    cmpl-float v8, v8, v2

    if-nez v8, :cond_8

    if-eqz v5, :cond_5

    iget v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-le v8, v9, :cond_5

    iget v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-lt v8, v9, :cond_8

    :cond_5
    iget-boolean v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v6, v1

    .line 4589
    :cond_8
    :goto_3
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v2, p6

    :goto_4
    if-nez v6, :cond_a

    .line 4592
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    move v6, v2

    goto :goto_5

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move/from16 v5, p5

    move v6, v2

    move-wide v2, p2

    .line 4597
    invoke-super/range {v0 .. v6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->draw(Landroid/graphics/Canvas;JIIF)V

    return-void

    .line 4593
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->prepareDraw(J)V

    .line 4594
    invoke-virtual {p0, p1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInUiThread(Landroid/graphics/Canvas;F)V

    .line 4595
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    .line 4636
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 4760
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4761
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4762
    iget-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v2, :cond_1

    .line 4763
    iget-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    if-eqz v2, :cond_0

    .line 4764
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4765
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 4766
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_1

    .line 4768
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v2, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected drawInUiThread(Landroid/graphics/Canvas;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4778
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-eqz v2, :cond_19

    .line 4779
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4780
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    move/from16 v4, p2

    move v5, v2

    .line 4781
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    .line 4782
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4783
    iget-boolean v7, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v7, :cond_0

    goto/16 :goto_8

    .line 4787
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 4788
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_1

    const v8, 0x3f5eb852    # 0.87f

    mul-float/2addr v7, v8

    .line 4791
    :cond_1
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v8, v8, v3

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v8, :cond_2

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v8, v8, v3

    if-lez v8, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    if-eq v8, v11, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 4792
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    if-eq v8, v11, :cond_3

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    if-eq v8, v10, :cond_3

    const v8, 0x3f333333    # 0.7f

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v13

    mul-float/2addr v13, v8

    goto :goto_1

    :cond_3
    move v13, v12

    :goto_1
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sub-float v8, v12, v8

    const v13, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v8

    const v8, 0x3f4ccccd    # 0.8f

    add-float/2addr v8, v13

    mul-float/2addr v7, v8

    .line 4794
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-lez v8, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v17

    sub-long v13, v13, v17

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v17

    cmp-long v8, v13, v17

    if-gez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    if-eqz v8, :cond_6

    .line 4795
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    if-ltz v13, :cond_6

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    if-ltz v13, :cond_6

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v13

    cmp-long v13, v13, v15

    if-lez v13, :cond_6

    .line 4797
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v13, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v13

    .line 4798
    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v14, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v14

    sub-int/2addr v13, v14

    .line 4799
    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v14, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v14

    iget-object v15, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v15, v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v15}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v15

    sub-int/2addr v14, v15

    if-ltz v13, :cond_7

    if-ge v13, v14, :cond_7

    .line 4801
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v10

    long-to-float v4, v10

    .line 4802
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v15, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v15, v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v15}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v17

    sub-long v10, v10, v17

    long-to-float v10, v10

    div-float/2addr v10, v4

    invoke-static {v10, v3, v12}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    int-to-float v10, v13

    int-to-float v11, v14

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v11, v13

    .line 4803
    invoke-static {v4, v10, v11, v13}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v14

    .line 4804
    invoke-static {v4, v10, v11, v13}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v4

    .line 4805
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v10, v4}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v4, v10

    add-float/2addr v4, v10

    mul-float/2addr v7, v4

    move v4, v14

    goto :goto_3

    .line 4809
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v10

    mul-float/2addr v4, v10

    .line 4812
    :cond_7
    :goto_3
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    add-int/2addr v11, v13

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    sub-int v15, v15, v17

    invoke-virtual {v10, v11, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 4813
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsmoothScrolling(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v11

    if-nez v11, :cond_8

    if-nez v8, :cond_8

    .line 4814
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v10, v2, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 4817
    :cond_8
    iget-boolean v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const/16 v11, 0xff

    if-eqz v8, :cond_b

    .line 4818
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mgetPremiumStar(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4819
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v14, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->badgePicker:Z

    if-nez v14, :cond_9

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    const/4 v14, 0x5

    if-eq v13, v14, :cond_9

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_9

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    const/16 v14, 0x9

    if-eq v13, v14, :cond_9

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    const/4 v14, 0x7

    if-ne v13, v14, :cond_a

    .line 4820
    :cond_9
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    const v14, 0x3e19999a    # 0.15f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v14, v15

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 4822
    :cond_a
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4823
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 4824
    :cond_b
    iget-boolean v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez v8, :cond_f

    iget-boolean v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-nez v8, :cond_f

    .line 4825
    iget-object v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v8, :cond_c

    .line 4826
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    if-ne v8, v9, :cond_17

    :cond_c
    iget-boolean v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v8, :cond_d

    goto/16 :goto_8

    .line 4829
    :cond_d
    iget-object v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_e

    goto/16 :goto_8

    .line 4833
    :cond_e
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4834
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 4835
    :cond_f
    iget-object v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v8, :cond_10

    .line 4836
    invoke-virtual {v8, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    :cond_10
    const/4 v8, 0x0

    .line 4838
    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v11

    if-eqz v11, :cond_11

    iget-object v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v13, v11, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v13, :cond_11

    .line 4839
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4841
    :cond_11
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    iput v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    .line 4842
    iput v5, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    cmpl-float v13, v7, v12

    if-nez v13, :cond_13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_12

    goto :goto_5

    .line 4858
    :cond_12
    invoke-direct {v0, v1, v8, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V

    goto/16 :goto_8

    .line 4844
    :cond_13
    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4845
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v11

    cmpl-float v11, v11, v12

    const/4 v13, 0x6

    if-lez v11, :cond_14

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/4 v15, 0x3

    if-eq v11, v15, :cond_14

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/4 v14, 0x4

    if-eq v11, v14, :cond_14

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    if-eq v11, v13, :cond_14

    const v11, 0x3f59999a    # 0.85f

    .line 4847
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v14

    invoke-static {v12, v11, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    .line 4848
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v1, v11, v11, v12, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4850
    :cond_14
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    if-eq v11, v13, :cond_16

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    if-eq v11, v9, :cond_16

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    const/16 v11, 0xe

    if-ne v9, v11, :cond_15

    goto :goto_6

    .line 4853
    :cond_15
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v0, v1, v5, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skew(Landroid/graphics/Canvas;II)V

    goto :goto_7

    .line 4851
    :cond_16
    :goto_6
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v7, v7, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4855
    :goto_7
    invoke-direct {v0, v1, v8, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V

    .line 4856
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 4861
    :cond_18
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    return-void
.end method

.method public onFrameReady()V
    .locals 3

    .line 4894
    invoke-super {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onFrameReady()V

    const/4 v0, 0x0

    .line 4895
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4896
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4897
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 4898
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4901
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method public prepareDraw(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 4642
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move v4, v3

    .line 4643
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 4644
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4645
    iget-boolean v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v6, :cond_0

    goto/16 :goto_8

    .line 4649
    :cond_0
    iget-boolean v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v6, :cond_7

    .line 4650
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$mgetPremiumStar(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 4651
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v12, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->badgePicker:Z

    if-nez v12, :cond_2

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_1

    goto :goto_1

    :cond_1
    move v11, v9

    goto :goto_2

    :cond_2
    :goto_1
    const v11, 0x3fa66666    # 1.3f

    .line 4652
    :goto_2
    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v12

    cmpl-float v12, v12, v8

    if-nez v12, :cond_3

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v12

    cmpl-float v8, v12, v8

    if-lez v8, :cond_4

    .line 4653
    :cond_3
    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    mul-float/2addr v8, v7

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sub-float/2addr v9, v8

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v8

    add-float/2addr v9, v7

    mul-float/2addr v11, v9

    :cond_4
    if-nez v6, :cond_5

    goto/16 :goto_8

    :cond_5
    const/16 v7, 0xff

    .line 4658
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4660
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 4661
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 4662
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 4663
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v13

    mul-float/2addr v13, v7

    mul-float/2addr v13, v11

    sub-float/2addr v12, v13

    float-to-int v12, v12

    .line 4664
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v14

    mul-float/2addr v14, v8

    mul-float/2addr v14, v11

    sub-float/2addr v13, v14

    float-to-int v13, v13

    .line 4665
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v15

    mul-float/2addr v7, v15

    mul-float/2addr v7, v11

    add-float/2addr v14, v7

    float-to-int v7, v14

    .line 4666
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v10

    mul-float/2addr v8, v10

    mul-float/2addr v8, v11

    add-float/2addr v14, v8

    float-to-int v8, v14

    .line 4662
    invoke-virtual {v9, v12, v13, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 4668
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v9, v7, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4669
    iget-object v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    if-nez v7, :cond_6

    .line 4670
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    .line 4672
    :cond_6
    iget-object v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4673
    invoke-virtual {v5, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4674
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 4677
    :cond_7
    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_8

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_9

    .line 4678
    :cond_8
    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetselectedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v6

    mul-float/2addr v6, v7

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 4680
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    const/high16 v7, 0x40800000    # 4.0f

    if-lez v6, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v15

    cmp-long v6, v13, v15

    if-gez v6, :cond_b

    .line 4681
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v6

    if-ltz v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v6

    if-ltz v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v13

    cmp-long v6, v13, v11

    if-lez v6, :cond_b

    .line 4682
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 4683
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    sub-int/2addr v6, v11

    .line 4684
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v12

    sub-int/2addr v11, v12

    if-ltz v6, :cond_a

    if-ge v6, v11, :cond_a

    .line 4686
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v12

    long-to-float v12, v12

    .line 4687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v15, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v15, v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v15}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    long-to-float v13, v13

    div-float/2addr v13, v12

    invoke-static {v13, v8, v9}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v8

    int-to-float v6, v6

    int-to-float v11, v11

    div-float v12, v11, v7

    .line 4688
    invoke-static {v8, v6, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v13

    .line 4689
    invoke-static {v8, v6, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v6

    .line 4690
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v8, v6}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    mul-float/2addr v13, v9

    goto :goto_3

    :cond_a
    move v13, v9

    goto :goto_3

    .line 4694
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    mul-float v13, v9, v6

    .line 4697
    :goto_3
    iget-boolean v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez v6, :cond_f

    iget-boolean v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-nez v6, :cond_f

    .line 4698
    iget-object v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v6, :cond_c

    goto/16 :goto_8

    .line 4703
    :cond_c
    iget-object v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v8, v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v8, :cond_d

    .line 4704
    check-cast v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_4

    :cond_d
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_15

    .line 4707
    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    if-nez v8, :cond_e

    goto/16 :goto_8

    .line 4710
    :cond_e
    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v13, v11

    float-to-int v11, v13

    .line 4711
    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 4712
    invoke-virtual {v5, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4713
    iget-object v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetpremiumStarColorFilter(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    .line 4715
    :cond_f
    iget-object v8, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 4716
    invoke-virtual {v8, v13}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_5
    if-nez v8, :cond_10

    goto/16 :goto_8

    .line 4721
    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paused:Z

    if-eqz v11, :cond_12

    iget-boolean v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pausedExceptSelected:Z

    if-eqz v6, :cond_11

    iget-boolean v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-nez v6, :cond_12

    :cond_11
    const/4 v6, 0x1

    goto :goto_6

    :cond_12
    move v6, v3

    .line 4722
    :goto_6
    invoke-virtual {v8, v6}, Lorg/telegram/messenger/ImageReceiver;->setEmojiPaused(Z)V

    .line 4724
    iget-boolean v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v6, :cond_13

    .line 4725
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_7

    .line 4727
    :cond_13
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 4729
    :goto_7
    iget-object v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v7, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v11, v6, v7

    invoke-virtual {v8, v11, v7}, Lorg/telegram/messenger/ImageReceiver;->setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v11

    aput-object v11, v6, v7

    .line 4730
    iget-object v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v7, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v6, v6, v7

    iput-wide v1, v6, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    .line 4731
    iput-object v8, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 4733
    invoke-virtual {v5, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->update(J)V

    .line 4736
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 4737
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 4738
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v6, v7, v8, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 4739
    iget-boolean v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v7, :cond_14

    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_14

    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_14

    .line 4741
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    const v11, 0x3f5c28f6    # 0.86f

    mul-float/2addr v8, v11

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 4742
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    mul-float/2addr v12, v11

    sub-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 4743
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 4744
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v10

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 4740
    invoke-virtual {v6, v7, v8, v12, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4747
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4748
    iget-object v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v8, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->setBounds(Landroid/graphics/Rect;)V

    .line 4750
    iput v9, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    .line 4751
    iput v4, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    .line 4753
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_16
    return-void
.end method
