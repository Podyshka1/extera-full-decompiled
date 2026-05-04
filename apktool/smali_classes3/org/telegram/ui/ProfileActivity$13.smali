.class Lorg/telegram/ui/ProfileActivity$13;
.super Lorg/telegram/ui/ProfileActivity$ClippedListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 4223
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProfileActivity$ClippedListView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 1

    .line 4234
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 0

    .line 4229
    instance-of p1, p1, Lorg/telegram/ui/Cells/AboutLinkCell;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 4249
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 4250
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4251
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 4257
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_4

    .line 4258
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canEditStories()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    return v1

    .line 4261
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->canEditStories()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoryAlbumPageType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 4264
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->giftsContainer:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->isReordering()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4267
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesContainer:Lorg/telegram/ui/ProfileStoriesCollectionTabs;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileStoriesCollectionTabs;->isReordering()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 4271
    :cond_4
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4349
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 4350
    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateBottomButtonY(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 4276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4278
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 4279
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 4281
    :cond_0
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 4283
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_1
    const/16 v4, 0x3e8

    if-ne v0, v2, :cond_2

    .line 4285
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_5

    .line 4286
    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4287
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4288
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlistViewVelocityY(Lorg/telegram/ui/ProfileActivity;F)V

    goto :goto_1

    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_5

    .line 4291
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_5

    if-ne v0, v3, :cond_4

    .line 4293
    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4294
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4295
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlistViewVelocityY(Lorg/telegram/ui/ProfileActivity;F)V

    .line 4298
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v4, 0x0

    .line 4299
    iput-object v4, p0, Lorg/telegram/ui/ProfileActivity$13;->velocityTracker:Landroid/view/VelocityTracker;

    .line 4302
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_8

    .line 4304
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    add-int/2addr v2, v5

    .line 4306
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisInLandscapeMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v6, v5, Lorg/telegram/ui/ProfileActivity;->hasMainTabs:Z

    if-nez v6, :cond_7

    .line 4307
    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    goto :goto_3

    .line 4309
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    .line 4311
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v2, v6

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_8

    .line 4312
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mopenAvatar(Lorg/telegram/ui/ProfileActivity;Z)V

    move p1, v4

    :cond_8
    if-eq v0, v3, :cond_9

    if-ne v0, v1, :cond_13

    .line 4317
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4319
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetjustFullyExpanded(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4320
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputjustFullyExpanded(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 4321
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iput-boolean v3, v1, Landroidx/recyclerview/widget/RecyclerView;->canStopFlinger:Z

    .line 4323
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetallowPullingDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4324
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetisPulledDown(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4325
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_4

    :cond_b
    move v2, v4

    :goto_4
    add-int/2addr v1, v2

    .line 4326
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return p1

    .line 4328
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    sub-int/2addr v0, v2

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return p1

    .line 4331
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-lez v1, :cond_e

    goto :goto_5

    :cond_e
    move v3, v4

    :goto_5
    const/high16 v1, -0x3b860000    # -1000.0f

    const v2, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    if-eqz v3, :cond_10

    .line 4332
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_10

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistViewVelocityY(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_10

    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_10

    .line 4333
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return p1

    :cond_10
    if-eqz v3, :cond_11

    .line 4334
    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_11

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    cmpg-float v2, v6, v7

    if-gez v2, :cond_11

    .line 4335
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetActionsExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return p1

    :cond_11
    if-nez v3, :cond_12

    .line 4336
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistViewVelocityY(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_12

    .line 4337
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return p1

    .line 4338
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetextraHeight(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_13

    .line 4339
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$13;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetHeaderExtraHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    sub-int/2addr v0, v2

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v4, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :cond_13
    return p1
.end method

.method protected requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
