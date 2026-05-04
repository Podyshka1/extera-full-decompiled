.class Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;
.super Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiTabsView"
.end annotation


# instance fields
.field public id:J

.field private showT:F

.field private shown:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;


# direct methods
.method public static synthetic $r8$lambda$sh5jkq4CwdOxBo-9e_pB9ZhuTpE(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->lambda$show$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mintercept(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->intercept(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;)V
    .locals 10

    .line 1359
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 1360
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1440
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->-$$Nest$fgetforceTabsShow(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->shown:Z

    .line 1441
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->-$$Nest$fgetforceTabsShow(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->showT:F

    const/4 v0, 0x1

    .line 1361
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    const/4 v1, 0x0

    .line 1362
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1363
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1364
    invoke-virtual {p0, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 1365
    new-instance v0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiTabsStrip;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    .line 1389
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1390
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    :goto_1
    invoke-static {}, Lorg/telegram/ui/Components/EmojiTabsStrip;->-$$Nest$sfgetemojiTabsDrawableIds()[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$2;

    invoke-static {}, Lorg/telegram/ui/Components/EmojiTabsStrip;->-$$Nest$sfgetemojiTabsDrawableIds()[I

    move-result-object v3

    aget v5, v3, v1

    invoke-static {}, Lorg/telegram/ui/Components/EmojiTabsStrip;->-$$Nest$sfgetemojiTabsAnimatedDrawableIds()[I

    move-result-object v3

    aget v6, v3, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v9, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$2;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;Landroid/content/Context;IIZZLorg/telegram/ui/Components/EmojiTabsStrip;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private intercept(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1417
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->shown:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingAnimation:Z

    if-nez v0, :cond_3

    .line 1418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1420
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->touching:Z

    return-void

    .line 1424
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->touching:Z

    .line 1425
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollingAnimation:Z

    if-nez p1, :cond_2

    .line 1426
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->resetScrollTo()V

    .line 1428
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$show$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1458
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->showT:F

    .line 1459
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1460
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1461
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->updateButtonsVisibility()V

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public maxWidth()I
    .locals 2

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40b66666    # 5.7f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 p1, 0x41f00000    # 30.0f

    .line 1406
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->maxWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->showT:F

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1407
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1405
    invoke-super {p0, p2, p1}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1436
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->intercept(Landroid/view/MotionEvent;)V

    .line 1437
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public show(ZZ)V
    .locals 3

    .line 1444
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->shown:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1447
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->shown:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1449
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->scrollTo(I)V

    .line 1452
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1453
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 1456
    iget p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->showT:F

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput p2, p1, v0

    const/4 p2, 0x1

    aput v1, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->showAnimator:Landroid/animation/ValueAnimator;

    .line 1457
    new-instance p2, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1464
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->showAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1db

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1465
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->showAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1466
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    move v1, v2

    .line 1468
    :cond_5
    iput v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->showT:F

    .line 1469
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1470
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1471
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->updateButtonsVisibility()V

    .line 1472
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/ScrollableHorizontalScrollView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
