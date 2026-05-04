.class Lorg/telegram/ui/Stories/StoryViewer$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$AOJtHDpRYn0agvf8bfl8W8pYmgU(Lorg/telegram/ui/Stories/StoryViewer$9;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$9;->lambda$onAnimationEnd$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 2397
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/view/View;)V
    .locals 2

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 2438
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 2439
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$9$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$9$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$9;)V

    .line 2440
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2452
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 2400
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    .line 2401
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    const/4 p1, 0x0

    .line 2402
    sput-boolean p1, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    .line 2403
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v1, :cond_0

    .line 2404
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    .line 2406
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_1

    .line 2407
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2409
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez v1, :cond_2

    .line 2410
    invoke-virtual {v2, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2411
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v3, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2413
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_3

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez v1, :cond_3

    .line 2414
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2415
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 2416
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v3, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 2418
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2420
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2422
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v2, :cond_5

    .line 2423
    iget v3, v1, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float v3, v0, v3

    iget v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/LivePlayer;->setVolume(F)V

    .line 2426
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetshowViewsAfterOpening(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2427
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputshowViewsAfterOpening(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 2428
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->openViews()V

    goto :goto_0

    .line 2429
    :cond_6
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    if-nez p1, :cond_9

    .line 2430
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v1, :cond_7

    .line 2431
    new-instance v1, Lorg/telegram/ui/Stories/StoriesIntro;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesIntro;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fputstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesIntro;)V

    .line 2432
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2433
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2435
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2436
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$9;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2454
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetstoriesIntro(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2455
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 2456
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$9$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$9$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$9;)V

    .line 2457
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2465
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2468
    :cond_8
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setStoriesIntroShown(Z)V

    .line 2470
    :cond_9
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 2471
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$9;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method
