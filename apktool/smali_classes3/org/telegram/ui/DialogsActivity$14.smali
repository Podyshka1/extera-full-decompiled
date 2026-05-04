.class Lorg/telegram/ui/DialogsActivity$14;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fixOffset:Z

.field lastDragging:Z

.field storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method public static synthetic $r8$lambda$3dw5aLpXRJi1BWQZBijf8pXA7Ws(Lorg/telegram/ui/DialogsActivity$14;Lorg/telegram/ui/DialogsActivity$ViewPage;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$14;->lambda$onScrollStateChanged$0(Lorg/telegram/ui/DialogsActivity$ViewPage;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EL9giux7MIULQRcdwn3oaGjcxlI(Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 4553
    invoke-static {p0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 4290
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onScrollStateChanged$0(Lorg/telegram/ui/DialogsActivity$ViewPage;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4341
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetStoriesOvercroll(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    return-void
.end method


# virtual methods
.method protected firstPosition()I
    .locals 2

    .line 4294
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 4542
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    .line 4550
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4552
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4553
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance p2, Lorg/telegram/ui/DialogsActivity$14$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lorg/telegram/ui/DialogsActivity$14$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .line 4333
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 4334
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 4335
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 4336
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4338
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 4339
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstoriesOverscroll(Lorg/telegram/ui/DialogsActivity;)F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x0

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    .line 4340
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    new-instance v1, Lorg/telegram/ui/DialogsActivity$14$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/DialogsActivity$14$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$14;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4343
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/DialogsActivity$14$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$14$1;-><init>(Lorg/telegram/ui/DialogsActivity$14;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4349
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4350
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4351
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->storiesOverscrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    .line 4312
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$14;->fixOffset:Z

    .line 4313
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 4314
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$14;->fixOffset:Z

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    .line 4304
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$14;->fixOffset:Z

    if-eqz v0, :cond_0

    .line 4305
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 4307
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 4357
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    .line 4360
    :cond_0
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 4361
    :goto_0
    iget-boolean v7, v0, Lorg/telegram/ui/DialogsActivity$14;->lastDragging:Z

    if-eq v4, v7, :cond_2

    .line 4362
    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity$14;->lastDragging:Z

    if-nez v4, :cond_2

    .line 4364
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v7, v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckAutoscrollToStories(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_2
    const/4 v7, 0x0

    if-lez v1, :cond_4

    .line 4370
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstoriesOverscroll(Lorg/telegram/ui/DialogsActivity;)F

    move-result v8

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_4

    .line 4371
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstoriesOverscroll(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    int-to-float v1, v1

    sub-float/2addr v4, v1

    cmpg-float v1, v4, v7

    if-gez v1, :cond_3

    neg-float v1, v4

    float-to-int v6, v1

    goto :goto_1

    :cond_3
    move v7, v4

    .line 4378
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v4, v7}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetStoriesOvercroll(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    .line 4379
    invoke-super {v0, v6, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    return v1

    .line 4381
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 4383
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v10, v9, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v10, :cond_5

    iget-object v9, v9, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v9}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v9

    cmpl-float v9, v9, v7

    if-nez v9, :cond_5

    move v9, v5

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    const/high16 v10, 0x42a20000    # 81.0f

    if-eqz v9, :cond_6

    .line 4385
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int v11, v8, v11

    goto :goto_3

    :cond_6
    move v11, v8

    .line 4387
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v12

    const/4 v13, 0x2

    if-nez v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetonlySelect(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfolderId(Lorg/telegram/ui/DialogsActivity;)I

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesController;->hasHiddenArchive()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v12

    if-ne v12, v13, :cond_7

    move v12, v5

    goto :goto_4

    :cond_7
    move v12, v6

    :goto_4
    if-nez v12, :cond_9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v16, v10

    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_9

    :cond_9
    :goto_5
    if-gez v1, :cond_8

    .line 4389
    iget-object v15, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v15, v15, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v15, v6}, Landroid/view/View;->setOverScrollMode(I)V

    .line 4390
    iget-object v15, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v15}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v15

    move/from16 v16, v10

    if-nez v15, :cond_a

    .line 4392
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 4393
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v11

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    if-gt v10, v14, :cond_b

    move v15, v5

    goto :goto_6

    :cond_a
    const/high16 v17, 0x3f800000    # 1.0f

    :cond_b
    :goto_6
    if-nez v4, :cond_12

    .line 4398
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v8

    invoke-virtual {v8, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_19

    const/16 v10, 0xa

    if-ge v15, v10, :cond_19

    move v10, v6

    :goto_7
    if-ge v12, v15, :cond_c

    .line 4402
    iget-object v14, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v14}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsAdapter(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v14

    invoke-virtual {v14, v12}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemHeight(I)I

    move-result v14

    add-int/2addr v10, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 4404
    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v11

    neg-int v8, v8

    add-int/2addr v8, v10

    .line 4405
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v10, v10, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v10}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v10

    const/high16 v12, 0x42400000    # 48.0f

    if-nez v10, :cond_d

    .line 4406
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v8, v10

    :cond_d
    if-eqz v9, :cond_f

    .line 4408
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v10, v10, Lorg/telegram/ui/DialogsActivity$ViewPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    invoke-virtual {v10}, Lorg/telegram/ui/RecyclerListViewScroller;->isRunning()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v10, v10, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 4409
    :cond_e
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v8, v10

    :cond_f
    if-eqz v9, :cond_11

    .line 4411
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v10, v10, Lorg/telegram/ui/DialogsActivity$ViewPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    invoke-virtual {v10}, Lorg/telegram/ui/RecyclerListViewScroller;->isRunning()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v10, v10, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v10}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4412
    :cond_10
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v8, v10

    .line 4414
    :cond_11
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v8, v10, :cond_19

    neg-int v8, v8

    goto/16 :goto_a

    :cond_12
    const/4 v10, -0x1

    if-nez v15, :cond_15

    if-eqz v12, :cond_15

    .line 4420
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v12

    invoke-virtual {v12, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    .line 4421
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v8

    int-to-float v8, v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v8, v12

    add-float v8, v8, v17

    cmpl-float v12, v8, v17

    if-lez v12, :cond_13

    move/from16 v8, v17

    .line 4425
    :cond_13
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v12, v12, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v12, v13}, Landroid/view/View;->setOverScrollMode(I)V

    int-to-float v12, v1

    const/high16 v14, 0x3e800000    # 0.25f

    mul-float/2addr v8, v14

    const v14, 0x3ee66666    # 0.45f

    sub-float/2addr v14, v8

    mul-float/2addr v12, v14

    float-to-int v8, v12

    if-le v8, v10, :cond_14

    move v8, v10

    .line 4430
    :cond_14
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v10

    aget-object v10, v10, v6

    if-eqz v10, :cond_1a

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1a

    .line 4431
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-virtual {v10, v5, v5}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    goto :goto_a

    :cond_15
    if-ne v15, v5, :cond_16

    if-nez v12, :cond_17

    :cond_16
    if-nez v15, :cond_19

    :cond_17
    if-eqz v9, :cond_19

    if-eqz v4, :cond_19

    .line 4434
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollYOffset(Lorg/telegram/ui/DialogsActivity;)F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_18

    .line 4435
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_8

    .line 4437
    :cond_18
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8, v13}, Landroid/view/View;->setOverScrollMode(I)V

    :goto_8
    int-to-float v8, v1

    const v12, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v12

    float-to-int v8, v8

    if-le v8, v10, :cond_1a

    move v8, v10

    goto :goto_a

    :cond_19
    :goto_9
    move v8, v1

    .line 4446
    :cond_1a
    :goto_a
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v10

    if-nez v10, :cond_1c

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v10, v10, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v10}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v10

    cmpl-float v10, v10, v7

    if-eqz v10, :cond_1c

    if-lez v1, :cond_1c

    if-eqz v4, :cond_1c

    .line 4447
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    int-to-float v10, v1

    sub-float/2addr v8, v10

    cmpg-float v10, v8, v7

    if-gez v10, :cond_1b

    float-to-int v8, v8

    move v10, v8

    move v8, v7

    goto :goto_b

    :cond_1b
    move v10, v6

    .line 4455
    :goto_b
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v12, v12, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v12, v8}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    move v8, v10

    .line 4458
    :cond_1c
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v10

    if-nez v10, :cond_2d

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v10

    if-eqz v10, :cond_2d

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v10

    if-eqz v10, :cond_2d

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 4459
    invoke-super {v0, v8, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    .line 4460
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 4461
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iput v2, v3, Lorg/telegram/ui/Components/PullForegroundDrawable;->scrollDy:I

    .line 4463
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-nez v3, :cond_1e

    .line 4466
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    goto :goto_c

    :cond_1e
    const/4 v10, 0x0

    :goto_c
    const-wide/16 v14, 0x0

    if-nez v3, :cond_26

    if-eqz v10, :cond_26

    .line 4468
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v11

    const/high16 v18, 0x40800000    # 4.0f

    const p2, 0x3e4ccccd    # 0.2f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    if-lt v3, v12, :cond_27

    .line 4469
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartArchivePullingTime(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v18

    cmp-long v3, v18, v14

    if-nez v3, :cond_1f

    .line 4470
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstartArchivePullingTime(Lorg/telegram/ui/DialogsActivity;J)V

    .line 4472
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-ne v3, v13, :cond_20

    .line 4473
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 4474
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->showHidden()V

    :cond_20
    if-eqz v9, :cond_21

    .line 4478
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v11, v3

    .line 4480
    :cond_21
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v11

    int-to-float v3, v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v3, v9

    add-float v3, v3, v17

    cmpl-float v9, v3, v17

    if-lez v9, :cond_22

    move/from16 v3, v17

    .line 4484
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstartArchivePullingTime(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v14

    sub-long/2addr v11, v14

    const v9, 0x3f59999a    # 0.85f

    cmpl-float v9, v3, v9

    if-lez v9, :cond_23

    const-wide/16 v14, 0xdc

    cmp-long v9, v11, v14

    if-lez v9, :cond_23

    move v6, v5

    .line 4486
    :cond_23
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetcanShowHiddenArchive(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v9

    if-eq v9, v6, :cond_24

    .line 4487
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9, v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputcanShowHiddenArchive(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4488
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v9

    if-ne v9, v13, :cond_24

    .line 4490
    :try_start_0
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v9, v9, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    const/4 v11, 0x3

    invoke-virtual {v9, v11, v13}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4492
    :catch_0
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v9

    if-eqz v9, :cond_24

    .line 4493
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/PullForegroundDrawable;->colorize(Z)V

    .line 4497
    :cond_24
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-ne v6, v13, :cond_25

    sub-int/2addr v8, v2

    if-eqz v8, :cond_25

    if-gez v1, :cond_25

    if-eqz v4, :cond_25

    .line 4499
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v6}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v6

    invoke-static {}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getMaxOverscroll()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float v14, v17, v6

    .line 4501
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v6}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v6

    int-to-float v8, v1

    mul-float v8, v8, p2

    mul-float/2addr v8, v14

    sub-float/2addr v6, v8

    .line 4502
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v8, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v8, v6}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    .line 4504
    :cond_25
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v6

    if-eqz v6, :cond_2a

    .line 4505
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setPullProgress(F)V

    .line 4506
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_d

    :cond_26
    const p2, 0x3e4ccccd    # 0.2f

    .line 4509
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v14, v15}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputstartArchivePullingTime(Lorg/telegram/ui/DialogsActivity;J)V

    .line 4510
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputcanShowHiddenArchive(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4511
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-eq v3, v13, :cond_28

    move v6, v5

    .line 4512
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3, v13}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fputarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;I)V

    if-eqz v6, :cond_29

    .line 4513
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4514
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrArchivedChatsHidden:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    .line 4516
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 4517
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->resetText()V

    .line 4518
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setPullProgress(F)V

    .line 4519
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setListView(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_2a
    :goto_d
    if-eqz v10, :cond_2b

    .line 4523
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 4525
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-ne v3, v5, :cond_2c

    if-nez v2, :cond_2c

    if-gez v1, :cond_2c

    if-eqz v4, :cond_2c

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v4, :cond_2c

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    cmpl-float v3, v3, v7

    if-nez v3, :cond_2c

    .line 4526
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstoriesOverscroll(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollProgress()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    move/from16 v6, p2

    invoke-static {v6, v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 4527
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v4, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetStoriesOvercroll(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    :cond_2c
    return v2

    .line 4532
    :cond_2d
    invoke-super {v0, v8, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    if-nez v2, :cond_2e

    if-gez v1, :cond_2e

    if-eqz v4, :cond_2e

    .line 4533
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-nez v3, :cond_2e

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v4, :cond_2e

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetprogressToActionMode(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    cmpl-float v3, v3, v7

    if-nez v3, :cond_2e

    .line 4534
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetstoriesOverscroll(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getOverScrollCoef()F

    move-result v4

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 4535
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$14;->val$viewPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1, v4, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$msetStoriesOvercroll(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;F)V

    :cond_2e
    return v2
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 4319
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 4320
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void

    .line 4322
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 4323
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4324
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
