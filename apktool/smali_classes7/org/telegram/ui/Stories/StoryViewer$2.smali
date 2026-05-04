.class Lorg/telegram/ui/Stories/StoryViewer$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->open(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastTouchX:F

.field lastX:Landroid/util/SparseArray;

.field final outFromRectAvatar:Landroid/graphics/RectF;

.field final outFromRectContainer:Landroid/graphics/RectF;

.field final path:Landroid/graphics/Path;

.field final radii:[F

.field final rect1:Landroid/graphics/RectF;

.field final rect2:Landroid/graphics/RectF;

.field final rect3:Landroid/graphics/RectF;

.field startX:F

.field startY:F

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$5rtTT8iOZP3RLVfIJU_EH7ICwAU(Lorg/telegram/ui/Stories/StoryViewer$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$2;->lambda$dispatchTouchEvent$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ez5i_jJ-rLBPta8JgpZvF6faQ8(Lorg/telegram/ui/Stories/StoryViewer$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$2;->lambda$onInterceptTouchEvent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kggqMoeA28_Rg9Hq10wLXSeh_Ss(Lorg/telegram/ui/Stories/StoryViewer$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$2;->lambda$onTouchEvent$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 569
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    .line 570
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    .line 571
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    .line 572
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    .line 573
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    .line 574
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    .line 575
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    .line 893
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mupdateProgressToDismiss(Lorg/telegram/ui/Stories/StoryViewer;)V

    return-void
.end method

.method private synthetic lambda$onInterceptTouchEvent$1()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$msetInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    .line 1100
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mupdateProgressToDismiss(Lorg/telegram/ui/Stories/StoryViewer;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 588
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mgetBlackoutAlpha(Lorg/telegram/ui/Stories/StoryViewer;)F

    move-result v2

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    const/high16 v3, -0x1000000

    .line 589
    invoke-static {v3, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 591
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 592
    iget v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    iget v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float v4, v11, v4

    mul-float/2addr v3, v4

    cmpl-float v3, v3, v11

    if-nez v3, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v10

    .line 593
    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetfullyVisible(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eq v2, v3, :cond_1

    .line 594
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputfullyVisible(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 595
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 596
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 601
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    const/4 v13, 0x0

    if-eqz v2, :cond_8

    .line 604
    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    .line 605
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 606
    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_2

    move v5, v9

    goto :goto_1

    :cond_2
    move v5, v10

    :goto_1
    invoke-virtual {v4, v5, v9}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto :goto_2

    .line 608
    :cond_3
    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 611
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetinvalidateOutRect(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 612
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4, v10}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputinvalidateOutRect(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 613
    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    move v5, v13

    move v6, v5

    :goto_3
    if-eq v4, v0, :cond_6

    .line 616
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-ne v7, v0, :cond_4

    .line 617
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 618
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    :goto_4
    add-float/2addr v6, v7

    goto :goto_5

    .line 619
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v14, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eq v7, v14, :cond_5

    .line 620
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v5, v7

    .line 621
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v7

    goto :goto_4

    .line 623
    :cond_5
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_3

    .line 625
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    iget-object v7, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    iget-object v14, v3, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v14, v6

    invoke-virtual {v4, v5, v6, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 626
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v13, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 627
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 628
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_7
    move-object v14, v3

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    .line 634
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetvolumeControl(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeControl;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float v4, v11, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 637
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v4, v4, v13

    if-nez v4, :cond_9

    .line 638
    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v11, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    sub-float v3, v11, v3

    goto :goto_7

    :cond_9
    move v3, v11

    .line 640
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v6, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Stories/StoriesViewPager;->setHorizontalProgressToDismiss(F)V

    .line 641
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    cmpl-float v5, v5, v13

    const v6, 0x3e19999a    # 0.15f

    if-nez v5, :cond_a

    iget v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    cmpl-float v5, v5, v13

    if-eqz v5, :cond_b

    :cond_a
    iget v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v7, v5, v11

    if-nez v7, :cond_c

    .line 642
    :cond_b
    iget-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 643
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f400000    # 0.75f

    add-float/2addr v4, v5

    mul-float/2addr v3, v6

    add-float/2addr v4, v3

    .line 644
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 645
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 646
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 647
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 648
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1b

    .line 652
    :cond_c
    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 654
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const v4, 0x3f4ccccd    # 0.8f

    sub-float v7, v11, v5

    sub-float/2addr v7, v4

    const v4, 0x3dccccd0    # 0.100000024f

    div-float/2addr v7, v4

    .line 658
    invoke-static {v7, v11, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    sub-float v4, v11, v4

    const v7, 0x3d4ccccd    # 0.05f

    sub-float v15, v11, v4

    mul-float/2addr v15, v7

    sub-float v7, v5, v15

    .line 659
    invoke-static {v7, v11, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    .line 660
    iget-object v15, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v15, v15, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v15, v4}, Landroid/view/View;->setAlpha(F)V

    move v15, v5

    move v5, v7

    goto :goto_8

    .line 662
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4, v11}, Landroid/view/View;->setAlpha(F)V

    move v15, v5

    .line 664
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v7, :cond_e

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v7, :cond_e

    .line 665
    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v7

    move/from16 v16, v6

    move/from16 v17, v7

    float-to-double v6, v15

    move/from16 v18, v11

    const-wide v11, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v7, v17, v6

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_9

    :cond_e
    move/from16 v16, v6

    move/from16 v18, v11

    .line 666
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    .line 669
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    sub-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v12, v7, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v17, v18, v12

    mul-float v4, v4, v17

    iget v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    mul-float/2addr v7, v12

    add-float/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 670
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    sub-float/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v12, v7, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v17, v18, v12

    mul-float v4, v4, v17

    iget v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    mul-float/2addr v7, v12

    add-float/2addr v4, v7

    invoke-virtual {v6, v4}, Landroid/view/View;->setTranslationY(F)V

    const v4, 0x3f59999a    # 0.85f

    mul-float v3, v3, v16

    add-float/2addr v3, v4

    .line 672
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v6, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 673
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 674
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 676
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 677
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v6, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget v7, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    div-float v12, v7, v11

    sub-float v12, v6, v12

    move/from16 v16, v8

    iget v8, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    div-float v17, v4, v11

    move/from16 v19, v11

    sub-float v11, v8, v17

    div-float v7, v7, v19

    add-float/2addr v6, v7

    div-float v4, v4, v19

    add-float/2addr v8, v4

    invoke-virtual {v3, v12, v11, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 681
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 682
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_a

    :cond_f
    if-eqz v2, :cond_10

    .line 684
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    add-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    add-float/2addr v6, v7

    invoke-virtual {v3, v13, v2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    .line 686
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 689
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 690
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 692
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 693
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 694
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v6, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 695
    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v7, v8, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 696
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 697
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v8, v11, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 700
    :cond_12
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float v7, v7, v19

    sub-float v8, v2, v7

    div-float v6, v6, v19

    sub-float v11, v4, v6

    add-float/2addr v2, v7

    add-float/2addr v4, v6

    invoke-virtual {v3, v8, v11, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 701
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v2, :cond_13

    .line 702
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    const/16 v17, 0x7

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    div-float v4, v4, v19

    .line 703
    invoke-static {v4, v13, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    aput v4, v2, v17

    aput v4, v2, v6

    aput v4, v2, v7

    aput v4, v2, v8

    aput v4, v2, v11

    aput v4, v2, v12

    aput v4, v2, v9

    aput v4, v2, v10

    goto :goto_b

    :cond_13
    const/16 v17, 0x7

    .line 704
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetfromRadius(Lorg/telegram/ui/Stories/StoryViewer;)[I

    move-result-object v2

    if-eqz v2, :cond_14

    .line 705
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetfromRadius(Lorg/telegram/ui/Stories/StoryViewer;)[I

    move-result-object v4

    aget v4, v4, v10

    invoke-static {v4, v10, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v9

    aput v4, v2, v10

    .line 706
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetfromRadius(Lorg/telegram/ui/Stories/StoryViewer;)[I

    move-result-object v4

    aget v4, v4, v9

    invoke-static {v4, v10, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v11

    aput v4, v2, v12

    .line 707
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetfromRadius(Lorg/telegram/ui/Stories/StoryViewer;)[I

    move-result-object v4

    aget v4, v4, v12

    invoke-static {v4, v10, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v7

    aput v4, v2, v8

    .line 708
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetfromRadius(Lorg/telegram/ui/Stories/StoryViewer;)[I

    move-result-object v4

    aget v4, v4, v11

    invoke-static {v4, v10, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v17

    aput v4, v2, v6

    goto :goto_b

    .line 710
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    aput v13, v2, v17

    aput v13, v2, v6

    aput v13, v2, v7

    aput v13, v2, v8

    aput v13, v2, v11

    aput v13, v2, v12

    aput v13, v2, v9

    aput v13, v2, v10

    .line 713
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 718
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 719
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    cmpl-float v4, v3, v13

    if-eqz v4, :cond_15

    iget v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    cmpl-float v4, v4, v13

    if-eqz v4, :cond_15

    .line 720
    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v11, v18, v2

    float-to-double v4, v11

    const-wide v6, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 722
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v13, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 723
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    .line 724
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v6, v5, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v11, v18, v5

    invoke-static {v4, v6, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 720
    invoke-virtual {v1, v13, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 728
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v3, :cond_16

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    if-eqz v3, :cond_16

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-eqz v3, :cond_16

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 729
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    mul-float v8, v15, v16

    float-to-int v6, v8

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_c

    .line 731
    :cond_16
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 733
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 734
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 735
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v3, :cond_19

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_19

    .line 736
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 737
    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_19

    .line 738
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v3

    .line 739
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v6, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 740
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v6, v5

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v6, v5

    iget-object v5, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v6, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v7, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 741
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v7, v5

    iget-object v5, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v7, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v8, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 742
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v8, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    sub-float/2addr v8, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v11, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    sub-float/2addr v8, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v11, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 743
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v11, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int/2addr v5, v12

    int-to-float v5, v5

    sub-float/2addr v11, v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    sub-float/2addr v11, v2

    .line 739
    invoke-virtual {v4, v6, v7, v8, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 745
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-static {v2, v4, v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 746
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    .line 747
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    .line 748
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    .line 749
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    .line 750
    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 751
    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    sub-float v11, v18, v15

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 752
    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 753
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    .line 754
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v12, v8, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    move/from16 v17, v13

    if-eqz v12, :cond_17

    .line 755
    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetopening(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v8

    invoke-interface {v12, v1, v13, v11, v8}, Lorg/telegram/ui/Stories/StoryViewer$HolderClip;->clip(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V

    .line 757
    :cond_17
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 758
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v12, v8, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    if-eqz v12, :cond_18

    .line 759
    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetopening(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v8

    invoke-interface {v12, v1, v13, v11, v8}, Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V

    .line 761
    :cond_18
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8, v3, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 762
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 763
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_d

    :cond_19
    move/from16 v17, v13

    .line 766
    :goto_d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/16 v8, 0x1f

    if-eqz v14, :cond_2c

    .line 769
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    .line 770
    iget-object v5, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 771
    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 772
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_12

    :cond_1a
    :goto_e
    if-eq v5, v0, :cond_1e

    if-eqz v5, :cond_1e

    .line 775
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_1b

    .line 776
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    .line 777
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    :goto_f
    add-float/2addr v4, v2

    goto :goto_10

    .line 778
    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eq v2, v6, :cond_1c

    .line 779
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v3, v2

    .line 780
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v2

    goto :goto_f

    .line 782
    :cond_1c
    :goto_10
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_1d

    goto :goto_11

    .line 785
    :cond_1d
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    goto :goto_e

    .line 787
    :cond_1e
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v5, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    iget-object v6, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 790
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 792
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v11

    .line 793
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v3, :cond_1f

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    if-eqz v3, :cond_1f

    .line 794
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    sub-float v5, v18, v15

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetopening(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    invoke-interface {v3, v1, v4, v5, v2}, Lorg/telegram/ui/Stories/StoryViewer$HolderClip;->clip(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V

    .line 796
    :cond_1f
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetanimateAvatar(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 797
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v3, :cond_20

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_20

    move v12, v9

    goto :goto_13

    :cond_20
    move v12, v10

    .line 799
    :goto_13
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 800
    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v3, :cond_21

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_21

    .line 801
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_14

    :cond_21
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_22

    .line 803
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v2, :cond_22

    move v13, v9

    goto :goto_15

    :cond_22
    move v13, v10

    :goto_15
    if-eqz v12, :cond_23

    .line 804
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v2, v2, v17

    if-eqz v2, :cond_29

    .line 805
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v2, :cond_24

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    if-eqz v2, :cond_24

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-eqz v2, :cond_24

    .line 806
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    move v3, v4

    move v4, v5

    move v5, v6

    const/16 v6, 0xff

    const/16 v7, 0x1f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 808
    :cond_24
    iget-object v2, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 810
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->getAvatarImageRoundRadius()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_16

    :cond_25
    const/4 v2, 0x0

    .line 811
    :goto_16
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3, v9, v13}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v3

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_17

    :cond_26
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2, v9, v13}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v2

    :goto_17
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v4, v18, v4

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    .line 813
    iget-object v3, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 814
    iget-object v2, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    if-eqz v12, :cond_27

    .line 815
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    goto :goto_18

    :cond_27
    move/from16 v2, v18

    .line 817
    :goto_18
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v3, :cond_28

    iget v4, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    cmpg-float v4, v4, v18

    if-gez v4, :cond_28

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->bgPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_28

    sub-float v4, v18, v15

    mul-float v4, v4, v16

    float-to-int v4, v4

    .line 818
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 819
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v5, v19

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 820
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    invoke-static {v3, v2, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    goto :goto_19

    :cond_28
    move v3, v2

    .line 822
    :goto_19
    iget-object v4, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 823
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$sfgetrunOpenAnimationAfterLayout()Z

    move-result v4

    xor-int/2addr v4, v9

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-virtual {v14, v1, v3, v4, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->drawUploadingProgress(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V

    .line 824
    iget-object v3, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 825
    iget-object v3, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 826
    iget-object v2, v14, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2, v10, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 827
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v2, :cond_29

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    if-eqz v2, :cond_29

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    if-eqz v2, :cond_29

    .line 828
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 830
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v3, v18, v3

    move/from16 v4, v17

    invoke-static {v1, v2, v3, v9, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawLive(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZF)V

    .line 831
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 834
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v3, v3, v18

    if-eqz v3, :cond_2a

    if-eqz v12, :cond_2a

    .line 835
    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->avatarRectTmp:Landroid/graphics/RectF;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 836
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 837
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 838
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 839
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v6

    .line 835
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 841
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v2

    aget v2, v2, v10

    .line 842
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v3

    .line 843
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 844
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5, v9, v13}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 845
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v9, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 846
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v5, v18, v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5, v8}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 847
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 848
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 849
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v3, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 850
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->avatarRectTmp:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 851
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 855
    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v3, :cond_2b

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    if-eqz v3, :cond_2b

    .line 856
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    sub-float v5, v18, v15

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetopening(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    invoke-interface {v3, v1, v4, v5, v2}, Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V

    .line 859
    :cond_2b
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 863
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    if-eqz v3, :cond_2e

    .line 864
    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    move/from16 v3, v18

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_2e

    .line 866
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget v6, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget v7, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    add-float/2addr v7, v5

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    add-float/2addr v4, v6

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 867
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    const/16 v17, 0x0

    cmpl-float v4, v2, v17

    if-eqz v4, :cond_2d

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v11, v18, v2

    mul-float v11, v11, v16

    float-to-int v2, v11

    .line 869
    invoke-virtual {v1, v3, v2, v8}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_1a

    .line 871
    :cond_2d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 873
    :goto_1a
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->fromXCell:F

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->fromYCell:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 874
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    invoke-interface {v2, v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;->drawAvatarOverlays(Landroid/graphics/Canvas;)Z

    .line 875
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 878
    :cond_2e
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 881
    :goto_1b
    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$sfgetrunOpenAnimationAfterLayout()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 882
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mstartOpenAnimation(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 883
    invoke-static {v10}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$sfputrunOpenAnimationAfterLayout(Z)V

    :cond_2f
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1129
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1135
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->onAttachedBackPressed()Z

    return v2

    .line 1138
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1130
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mdispatchVolumeEvent(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/KeyEvent;)V

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 898
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 899
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkTextSelectionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    .line 902
    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisLikesReactions(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 903
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    .line 907
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v4, v3, :cond_3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_2

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_1

    .line 908
    :cond_3
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v8, v4, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 909
    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 910
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v10, v9, v7

    if-eqz v10, :cond_4

    .line 911
    new-array v10, v5, [F

    aput v9, v10, v8

    aput v7, v10, v3

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    .line 912
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 916
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lorg/telegram/ui/Stories/StoryViewer$2$1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Stories/StoryViewer$2$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v4, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 923
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0xfa

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 924
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 925
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 928
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    const v10, 0x3e99999a    # 0.3f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 929
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    .line 931
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4, v8}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$msetInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 932
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v4, v8}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$msetLongPressed(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    move v4, v3

    .line 934
    :goto_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_7

    .line 935
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v8, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    if-eqz v2, :cond_6

    .line 937
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->onActionDown(Landroid/view/MotionEvent;)V

    .line 939
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Stories/StoriesViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 942
    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v10, :cond_8

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v3

    goto :goto_2

    :cond_8
    move v9, v8

    .line 943
    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v11, v11, v7

    if-nez v11, :cond_12

    iget-boolean v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v11, :cond_12

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v10, v10, Lorg/telegram/ui/Stories/StoriesViewPager;->currentState:I

    if-ne v10, v3, :cond_12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v10, v5, :cond_12

    if-eqz v9, :cond_12

    .line 944
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v5, v9

    cmpl-float v9, v5, v7

    if-eqz v9, :cond_9

    .line 945
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v10, v5}, Lorg/telegram/ui/Stories/StoriesViewPager;->canScroll(F)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v10, v10, v7

    if-eqz v10, :cond_12

    .line 946
    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v12, v11, v7

    if-nez v12, :cond_b

    neg-float v12, v5

    .line 947
    iput v12, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    :cond_b
    cmpg-float v12, v5, v7

    if-gez v12, :cond_c

    .line 949
    iget v12, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpl-float v12, v12, v7

    if-gtz v12, :cond_d

    :cond_c
    if-lez v9, :cond_e

    iget v9, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpg-float v9, v9, v7

    if-gez v9, :cond_e

    :cond_d
    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v9

    :cond_e
    sub-float/2addr v11, v5

    .line 952
    iput v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    .line 953
    invoke-static {v10}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mupdateProgressToDismiss(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 954
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v10, v9, v7

    if-lez v10, :cond_f

    iget v10, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpg-float v10, v10, v7

    if-ltz v10, :cond_10

    :cond_f
    cmpg-float v9, v9, v7

    if-gez v9, :cond_11

    iget v9, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpl-float v9, v9, v7

    if-lez v9, :cond_11

    .line 955
    :cond_10
    iput v7, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    :cond_11
    move v5, v3

    goto :goto_3

    :cond_12
    move v5, v8

    :goto_3
    if-eqz v2, :cond_13

    .line 960
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_13

    iget-boolean v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v10, :cond_13

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisCaption(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v10, v10, Lorg/telegram/ui/Stories/StoriesViewPager;->currentState:I

    if-eq v10, v3, :cond_13

    .line 961
    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    invoke-static {v2, v0, v9}, Lorg/telegram/messenger/AndroidUtilities;->getViewPositionInParent(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 962
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    aget v9, v2, v8

    neg-float v9, v9

    aget v2, v2, v3

    neg-float v2, v2

    invoke-virtual {v1, v9, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 963
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkPinchToZoom(Landroid/view/MotionEvent;)V

    .line 964
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    aget v9, v2, v8

    aget v2, v2, v3

    invoke-virtual {v1, v9, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 966
    :cond_13
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_15

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_14

    goto :goto_5

    :cond_14
    move v2, v8

    .line 969
    :goto_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_16

    .line 970
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 967
    :cond_15
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_16
    if-eqz v5, :cond_17

    return v3

    .line 976
    :cond_17
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 977
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_18

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_1b

    .line 978
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1a

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetflingCalled(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetrealKeyboardHeight(Lorg/telegram/ui/Stories/StoryViewer;)I

    move-result v1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v1, v5, :cond_1a

    .line 979
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v5, v5, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_19

    move v5, v3

    goto :goto_6

    :cond_19
    move v5, v8

    :goto_6
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    .line 981
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 983
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTouch()V

    :cond_1b
    if-eqz v4, :cond_1c

    .line 986
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    if-nez v4, :cond_1c

    .line 987
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    :cond_1c
    if-nez v2, :cond_1e

    .line 989
    sget-boolean v1, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_7

    :cond_1d
    return v8

    :cond_1e
    :goto_7
    return v3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 582
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1143
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE:Z

    if-nez v1, :cond_0

    .line 1145
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1147
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$2$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$2$3;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->articleClosed:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storyDeleted:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1169
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 1170
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1172
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->articleClosed:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storyDeleted:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastTouchX:F

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startX:F

    .line 996
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startY:F

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->verticalScrollDetected:Z

    .line 998
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v4, v5, v6, v7, v3}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mfindClickableView(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v4, v5, v6, v7, v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mfindClickableView(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToDissmiss:Z

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$msetInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    .line 1002
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    if-eqz v0, :cond_3

    .line 1003
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/LiveCommentsView;->setAllowTouches(Z)V

    .line 1005
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v4, :cond_4

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1009
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v4, :cond_16

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v4, :cond_16

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisRecording(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisInTextSelectionMode(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    .line 1012
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v4, :cond_12

    .line 1013
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1014
    iget v4, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1015
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v7, v6, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v6, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-eqz v7, :cond_8

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisInPinchToZoom(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v7, v6, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v7, :cond_8

    iget-object v7, v6, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v7, :cond_8

    .line 1016
    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1017
    iget-object v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v7, :cond_8

    iget-object v8, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v8, :cond_8

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1018
    iget-wide v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_6

    .line 1019
    iget-object v11, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v11, :cond_6

    iget-object v11, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v11, :cond_6

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v11, :cond_6

    .line 1020
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getDocumentDuration(Lorg/telegram/tgnet/TLRPC$Document;)D

    move-result-wide v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v11

    double-to-long v7, v7

    :cond_6
    cmp-long v9, v7, v9

    if-lez v9, :cond_8

    .line 1023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 1024
    iget-object v10, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget v11, v10, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    .line 1025
    iget v12, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastTouchX:F

    sub-float v12, v9, v12

    const/high16 v13, 0x435c0000    # 220.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v10, v12, v7, v8}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seek(FJ)F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    mul-float/2addr v11, v8

    float-to-int v8, v11

    if-eq v7, v8, :cond_7

    const/16 v7, 0x9

    .line 1028
    :try_start_0
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :catch_0
    :cond_7
    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 1032
    iput v9, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastTouchX:F

    :cond_8
    cmpl-float v4, v0, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v4, :cond_9

    .line 1036
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-nez v8, :cond_9

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/StoryViewer;->verticalScrollDetected:Z

    if-nez v8, :cond_9

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    mul-float/2addr v8, v6

    cmpl-float v8, v0, v8

    if-lez v8, :cond_9

    .line 1037
    iput-boolean v2, v7, Lorg/telegram/ui/Stories/StoryViewer;->verticalScrollDetected:Z

    .line 1039
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v8, :cond_16

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-nez v8, :cond_16

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v8, :cond_16

    iget-boolean v8, v7, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToDissmiss:Z

    if-eqz v8, :cond_16

    if-lez v4, :cond_11

    .line 1040
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    mul-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_11

    .line 1041
    iput-boolean v2, v7, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 1042
    iget-object v0, v7, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1044
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    :cond_a
    if-eqz v0, :cond_b

    .line 1046
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsAllowed()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_3

    :cond_b
    move v4, v3

    .line 1047
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    if-nez v4, :cond_c

    if-eqz v0, :cond_c

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v7, :cond_c

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-nez v7, :cond_c

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object v7

    if-nez v7, :cond_c

    move v7, v2

    goto :goto_4

    :cond_c
    move v7, v3

    :goto_4
    iput-boolean v7, v6, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    .line 1048
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v4, :cond_d

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v4, :cond_d

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_d

    invoke-static {v6}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_5

    :cond_d
    move v0, v3

    :goto_5
    iput-boolean v0, v6, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    if-eqz v4, :cond_e

    iget v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    if-eqz v4, :cond_e

    .line 1050
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    .line 1052
    :cond_e
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    if-eqz v4, :cond_f

    .line 1053
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->checkSelfStoriesView()V

    .line 1055
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    .line 1056
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)V

    .line 1061
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1063
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$mlayoutAndFindView(Lorg/telegram/ui/Stories/StoryViewer;)V

    goto :goto_6

    .line 1065
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_16

    .line 1066
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputdelayedTapRunnable(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)V

    .line 1071
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$msetInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->verticalScrollDetected:Z

    .line 1073
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    .line 1074
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_15

    .line 1075
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setSeeking(Z)V

    .line 1077
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1078
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    if-eqz v0, :cond_16

    .line 1079
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/LiveCommentsView;->setAllowTouches(Z)V

    .line 1082
    :cond_16
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz v4, :cond_17

    iget v4, v4, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_7

    :cond_17
    move v1, v3

    .line 1083
    :goto_7
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v4, :cond_18

    if-nez v1, :cond_18

    .line 1084
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1086
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v0, :cond_1a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_8

    :cond_19
    move v2, v3

    :cond_1a
    :goto_8
    return v2
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetvolumeControl(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetvolumeControl(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1182
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1091
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 1092
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 1093
    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$msetInTouchMode(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 1095
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_0

    .line 1096
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisClosed(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v4, v5, v2

    aput v1, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$2$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$2$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1114
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1115
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->liveCommentsView:Lorg/telegram/ui/Stories/LiveCommentsView;

    if-eqz v0, :cond_3

    .line 1116
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/LiveCommentsView;->setAllowTouches(Z)V

    .line 1119
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v4, :cond_6

    iget v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_6

    iget v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->verticalScrollDetected:Z

    if-nez v1, :cond_6

    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisInTextSelectionMode(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    return v2

    .line 1120
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 889
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 890
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    return-void
.end method
