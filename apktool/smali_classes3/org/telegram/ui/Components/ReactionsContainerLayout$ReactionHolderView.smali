.class public final Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReactionHolderView"
.end annotation


# instance fields
.field public currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public drawSelected:Z

.field public enterAnimator:Landroid/animation/ValueAnimator;

.field public enterImageView:Lorg/telegram/ui/Components/BackupImageView;

.field public enterScale:F

.field public hasEnterAnimation:Z

.field private isEnter:Z

.field public isLocked:Z

.field public lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field longPressRunnable:Ljava/lang/Runnable;

.field public loopImageView:Lorg/telegram/ui/Components/BackupImageView;

.field public particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field playRunnable:Ljava/lang/Runnable;

.field public position:I

.field private preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field pressed:Z

.field public pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

.field pressedX:F

.field pressedY:F

.field private final recyclerReaction:Z

.field public selected:Z

.field public shouldSwitchToLoopView:Z

.field public sideScale:F

.field public switchedToLoopView:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field touchable:Z

.field public waitingAnimation:Z


# direct methods
.method public static synthetic $r8$lambda$YIcXVlv41jUpJ3a4xR6GRhyBsEg(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lambda$play$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisEnter(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetReaction(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V
    .locals 3

    .line 1790
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 1791
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1752
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1755
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    const/4 v1, 0x1

    .line 1761
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    .line 1766
    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    .line 1936
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    .line 2176
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->longPressRunnable:Ljava/lang/Runnable;

    .line 2190
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->touchable:Z

    .line 1792
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->recyclerReaction:Z

    .line 1793
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1855
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1898
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 1899
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 1901
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$4;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1918
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p3, 0x22

    const/16 v1, 0x11

    invoke-static {p3, p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1919
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p3, p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1920
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p3, p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1921
    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 1922
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0x64

    .line 1923
    invoke-virtual {p1, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1924
    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 1925
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1927
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 1928
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 1929
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 1930
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 1931
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 1932
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    return-void
.end method

.method private synthetic lambda$play$0(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 2133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    .line 2134
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f428f5c    # 0.76f

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 2135
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method private setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V
    .locals 11

    const/4 v0, 0x0

    .line 1959
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->updateSelected(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    .line 1960
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1961
    iput p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    .line 1962
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->updateImage(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void

    .line 1966
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    .line 1967
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    iget-boolean v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->premium:Z

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    :cond_2
    move p2, v3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isLocked:Z

    if-eqz p2, :cond_4

    .line 1968
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-nez p2, :cond_4

    .line 1969
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-direct {p2, v1, v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    .line 1970
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1971
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 1972
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x12

    const/high16 v5, 0x41900000    # 18.0f

    const/16 v6, 0x11

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1974
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/16 v1, 0x8

    if-eqz p2, :cond_6

    .line 1975
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isLocked:Z

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1978
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 1979
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1980
    iget-boolean p2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-nez p2, :cond_9

    iget-object p2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetallReactionsIsDefault(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    const/16 p2, 0x2008

    invoke-static {p2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    move p2, v0

    goto :goto_3

    :cond_9
    :goto_2
    move p2, v3

    :goto_3
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    .line 1981
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result p2

    const/4 v4, 0x4

    if-eq p2, v4, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    if-eqz p2, :cond_b

    .line 1982
    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    .line 1984
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v5, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-nez v5, :cond_f

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz p2, :cond_c

    goto/16 :goto_6

    .line 1995
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1996
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1997
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result p2

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {p1, v4, p2, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 1998
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {p2, v2, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 1999
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v2

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_e

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v2

    if-ne v2, v4, :cond_d

    goto :goto_4

    .line 2003
    :cond_d
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2004
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-direct {v2, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    .line 2000
    :cond_e
    :goto_4
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2001
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2006
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 2007
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 2008
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_11

    .line 2009
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    goto :goto_7

    .line 1985
    :cond_f
    :goto_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->updateImage(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 1987
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1988
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1989
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 1991
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz p1, :cond_11

    .line 1992
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 2012
    :cond_11
    :goto_7
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 2013
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->shouldSwitchToLoopView:Z

    if-nez p1, :cond_12

    .line 2015
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2016
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2017
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    goto :goto_8

    .line 2019
    :cond_12
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 2020
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2021
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2027
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/high16 v0, 0x42080000    # 34.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2028
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method private updateImage(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    .line 2033
    iget-boolean v1, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v1, :cond_1

    .line 2034
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->star_reaction:I

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const-string/jumbo v6, "star_reaction"

    invoke-direct {v2, v3, v6, v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 2035
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->star_reaction:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 2036
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-nez v1, :cond_e

    .line 2037
    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x2d

    goto :goto_0

    :cond_0
    const/16 v2, 0x12

    :goto_0
    invoke-direct {v1, v12, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    return-void

    .line 2039
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    if-eqz v10, :cond_2

    iget-object v1, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2040
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 2041
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2042
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v3, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v13, 0x0

    if-eqz v3, :cond_4

    .line 2043
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getEffectDocument(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 2044
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v2

    .line 2046
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v14

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v1, :cond_3

    move-object/from16 v19, v13

    goto :goto_1

    :cond_3
    move-object/from16 v19, v2

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/16 v24, 0x0

    const-string v16, "60_60_firstframe"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-string/jumbo v22, "tgs"

    move-object/from16 v23, v1

    invoke-virtual/range {v14 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 2050
    :cond_4
    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 2051
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v14, :cond_d

    .line 2053
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->activate_animation:Lorg/telegram/tgnet/TLRPC$Document;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    const/16 v1, 0x2008

    .line 2054
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_3

    .line 2062
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const-string/jumbo v9, "tgs"

    const/4 v11, 0x0

    const-string v3, "30_30_nolimit"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2063
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v15

    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v1, :cond_6

    move-object/from16 v20, v13

    goto :goto_2

    :cond_6
    move-object/from16 v20, v6

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/16 v25, 0x0

    const-string v17, "60_60_pcache"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-string/jumbo v23, "tgs"

    move-object/from16 v24, v1

    invoke-virtual/range {v15 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_7

    .line 2055
    :cond_7
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    if-ne v1, v2, :cond_8

    goto :goto_5

    .line 2058
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->appear_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const-string/jumbo v9, "tgs"

    const/4 v11, 0x0

    const-string v3, "30_30_nolimit"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2059
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v15

    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v1, :cond_9

    move-object/from16 v20, v13

    goto :goto_4

    :cond_9
    move-object/from16 v20, v6

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/16 v25, 0x0

    const-string v17, "60_60_firstframe"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-string/jumbo v23, "tgs"

    move-object/from16 v24, v1

    invoke-virtual/range {v15 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_7

    .line 2056
    :cond_a
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v15

    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v1, :cond_b

    move-object/from16 v20, v13

    goto :goto_6

    :cond_b
    move-object/from16 v20, v6

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/16 v25, 0x0

    const-string v17, "60_60_firstframe"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-string/jumbo v23, "tgs"

    move-object/from16 v24, v1

    invoke-virtual/range {v15 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2065
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_c

    .line 2066
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1, v13, v13, v12}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 2068
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const-string/jumbo v9, "tgs"

    const/4 v11, 0x0

    const-string v3, "60_60_pcache"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2070
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v13}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 2071
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v14, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;)V

    .line 2073
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v1, :cond_e

    .line 2074
    iget-object v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public checkPlayLoopImage()V
    .locals 3

    .line 2252
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    if-eqz v0, :cond_3

    .line 2253
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2254
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    if-nez v2, :cond_2

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetallReactionsIsDefault(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2257
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    .line 2258
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    return-void

    .line 2255
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2227
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    if-eqz v0, :cond_1

    .line 2228
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetstarSelectedPaint(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetselectedPaint(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2230
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2231
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    const/4 v1, 0x0

    const/high16 v2, 0x40c00000    # 6.0f

    if-nez v0, :cond_2

    .line 2232
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    goto :goto_1

    .line 2234
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v3, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 2237
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz v0, :cond_6

    const/16 v0, 0x2008

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x20000

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2238
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2239
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v6, v0

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2240
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    .line 2242
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setVisible(F)V

    .line 2243
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    .line 2244
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()Z

    .line 2245
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const v1, -0xa46f2

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    .line 2246
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2248
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 2081
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2082
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 2083
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2088
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2089
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->preloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1778
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_1

    .line 1780
    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1781
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void

    .line 1784
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrCustomEmoji:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 2194
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->touchable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2197
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 2198
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    .line 2199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedX:F

    .line 2200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedY:F

    .line 2201
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isLocked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgettype(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->allowLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2202
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2205
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    .line 2206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    goto :goto_0

    .line 2207
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 2208
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpressedReaction(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2209
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fputclicked(Lorg/telegram/ui/Components/ReactionsContainerLayout;Z)V

    .line 2210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-wide v6, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v2, v4, v6

    if-lez v2, :cond_7

    .line 2211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    .line 2212
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetpressedProgress(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F

    move-result v4

    cmpl-float v0, v4, v0

    if-lez v0, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-interface {p1, p0, v2, v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    .line 2215
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetclicked(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2216
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$mcancelPressed(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    .line 2219
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2220
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    :cond_9
    return v3

    :cond_a
    :goto_2
    return v1
.end method

.method public play(I)Z
    .locals 5

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetanimationEnabled(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result v0

    const v1, 0x3f428f5c    # 0.76f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 2094
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 2095
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    .line 2096
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-nez p1, :cond_2

    .line 2097
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2098
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2099
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    return v4

    .line 2103
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2104
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v0, :cond_9

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-nez v0, :cond_5

    .line 2106
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-nez p1, :cond_4

    .line 2108
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->waitingAnimation:Z

    .line 2109
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 2110
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 2111
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 2114
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->waitingAnimation:Z

    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 2116
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 2117
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_2
    return v3

    .line 2121
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2122
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 2124
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 2125
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    goto :goto_5

    .line 2127
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 2128
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    .line 2129
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 2130
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x2

    .line 2131
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterAnimator:Landroid/animation/ValueAnimator;

    .line 2132
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2138
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterAnimator:Landroid/animation/ValueAnimator;

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->durationScale:F

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2140
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2141
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    :cond_a
    :goto_5
    return v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public resetAnimation()V
    .locals 6

    .line 2148
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f428f5c    # 0.76f

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->playRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2150
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isGeneratingCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2151
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 2152
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetanimationEnabled(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    goto :goto_0

    .line 2155
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 2158
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2160
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 2161
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v5, :cond_3

    move v1, v2

    :cond_3
    mul-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    goto :goto_3

    .line 2164
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2165
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    if-eqz v0, :cond_7

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    mul-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    goto :goto_3

    .line 2169
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2173
    :goto_3
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->isEnter:Z

    return-void
.end method

.method public updateSelected(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V
    .locals 6

    .line 1940
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    .line 1941
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eq p1, v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f428f5c    # 0.76f

    if-nez p2, :cond_4

    .line 1944
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    mul-float/2addr v2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1945
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1946
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1947
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_6

    .line 1949
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v0

    :goto_4
    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xf0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1950
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v5, :cond_7

    move v5, v1

    goto :goto_5

    :cond_7
    move v5, v0

    :goto_5
    mul-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterScale:F

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v5, :cond_8

    move v0, v1

    :cond_8
    mul-float/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1953
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1954
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method
