.class Lorg/telegram/ui/ChatActivity$138;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$previousChat:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$Na5nxF_iH7niKiKZ6LqDpKImO_I(Lorg/telegram/ui/ChatActivity$138;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$138;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 42458
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$138;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 42474
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$23000(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChatActivity$138;->index:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 42470
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    .line 42471
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$22902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 42472
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputfragmentTransition(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)V

    .line 42473
    new-instance v0, Lorg/telegram/ui/ChatActivity$138$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$138$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$138;)V

    const-wide/16 v2, 0x20

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 42477
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 42478
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 42479
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setSkipBackgroundDrawing(Z)V

    .line 42480
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputtoPullingDownTransition(Lorg/telegram/ui/ChatActivity;Z)V

    .line 42481
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetTransitionToChatProgress(Lorg/telegram/ui/ChatActivity;F)V

    .line 42482
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetTransitionToChatActivity(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;)V

    .line 42483
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42484
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 42485
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 42486
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 42487
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 42488
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 42489
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 42490
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42491
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 42492
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 42493
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 42495
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatActivityTopPanelLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42496
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatActivityTopPanelLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 42464
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 42465
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$138;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22800(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$138;->index:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$138;->index:I

    return-void
.end method
