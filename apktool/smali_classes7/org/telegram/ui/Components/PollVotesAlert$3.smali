.class Lorg/telegram/ui/Components/PollVotesAlert$3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PollVotesAlert;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 668
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 669
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v0, 0x41500000    # 13.0f

    .line 738
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 739
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$800(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 740
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->access$900(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    int-to-float v1, v1

    .line 741
    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    .line 743
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v1

    .line 745
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1000(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v4

    add-int/2addr v3, v4

    .line 748
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1100(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v4, v5, :cond_1

    .line 749
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 750
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1200(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 751
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    mul-float/2addr v5, v4

    float-to-int v0, v5

    sub-int/2addr v1, v0

    sub-int/2addr v2, v0

    add-int/2addr v3, v0

    sub-float v0, v7, v4

    goto :goto_0

    :cond_1
    move v0, v7

    .line 760
    :goto_0
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v4

    add-int/2addr v2, v4

    .line 763
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetshadowDrawable(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4, v5, v1, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 764
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetshadowDrawable(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v3, v0, v7

    if-eqz v3, :cond_2

    .line 767
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 768
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1300(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1400(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1500(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1600(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v9

    add-int/2addr v9, v1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v9, v1

    int-to-float v1, v9

    invoke-virtual {v3, v4, v5, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 769
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x42100000    # 36.0f

    .line 774
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 775
    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    int-to-float v1, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 776
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 777
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 778
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    mul-float/2addr v2, v7

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 783
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 784
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetactionBar(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 785
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1700(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$1800(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetactionBar(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 717
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 720
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 710
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 711
    iget-object p2, p1, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$mupdateLayout(Lorg/telegram/ui/Components/PollVotesAlert;Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 673
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 674
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$300(Lorg/telegram/ui/Components/PollVotesAlert;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 675
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 676
    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->access$400(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->access$500(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v5

    invoke-virtual {p0, v1, v4, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 677
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 679
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    .line 681
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 682
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 684
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetactionBarShadow(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 685
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 687
    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/PollVotesAlert;->access$600(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v4, v5

    .line 688
    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->getSectionCount()I

    move-result v5

    move v6, v3

    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    if-ge v6, v5, :cond_2

    if-nez v6, :cond_1

    .line 691
    iget-object v8, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/PollVotesAlert;->access$700(Lorg/telegram/ui/Components/PollVotesAlert;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, p1, v9

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v8, v7, p2}, Landroid/view/View;->measure(II)V

    .line 692
    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    .line 694
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->getCountForSection(I)I

    move-result v7

    const/high16 v8, 0x42000000    # 32.0f

    .line 695
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v7, v2

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-ge v4, v1, :cond_3

    sub-int/2addr v1, v4

    goto :goto_2

    .line 698
    :cond_3
    div-int/lit8 p2, v1, 0x5

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr v1, p2

    :goto_2
    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr v1, p2

    .line 699
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eq p2, v1, :cond_4

    .line 700
    iput-boolean v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 701
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    neg-int v2, v1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 702
    iget-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 703
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    .line 705
    :cond_4
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 730
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$3;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
