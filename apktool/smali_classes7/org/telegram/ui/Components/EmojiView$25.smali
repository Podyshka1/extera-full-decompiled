.class Lorg/telegram/ui/Components/EmojiView$25;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 2569
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetignorePagerScroll(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2575
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2576
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2579
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public setCurrentItem(IZ)V
    .locals 5

    .line 2587
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mstartStopVisibleGifs(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 2588
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-nez p1, :cond_2

    .line 2590
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgettabsMinusDy(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object p1

    aput v1, p1, v2

    .line 2591
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTabs(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    new-array p2, v2, [F

    const/4 v0, 0x0

    aput v0, p2, v1

    sget-object v0, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v3, 0x96

    .line 2592
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2593
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2594
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 2595
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mscrollEmojisToPosition(Lorg/telegram/ui/Components/EmojiView;II)V

    .line 2596
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTabs(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2597
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTabs(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiTabsStrip;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    :cond_1
    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    .line 2600
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 2602
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$25;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 2606
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
