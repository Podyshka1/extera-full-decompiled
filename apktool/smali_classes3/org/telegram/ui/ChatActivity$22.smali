.class Lorg/telegram/ui/ChatActivity$22;
.super Landroidx/recyclerview/widget/ChatListItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finishRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$JJ-V-hPTNKUGKYrcpBnKrLt7whg(Lorg/telegram/ui/ChatActivity$22;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$22;->lambda$endAnimations$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$k7U1Lz2F2cz9Xz6-Gmj2-BoKt8E(Lorg/telegram/ui/ChatActivity$22;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$22;->lambda$onAllAnimationsDone$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 6569
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/ChatListItemAnimator;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$endAnimations$1()V
    .locals 3

    const/4 v0, 0x0

    .line 6621
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 6622
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6623
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 6624
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;I)V

    .line 6626
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 6627
    const-string v0, "chatItemAnimator enable notifications"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$0()V
    .locals 3

    const/4 v0, 0x0

    .line 6602
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 6603
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6604
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 6605
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;I)V

    .line 6607
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 6608
    const-string v0, "chatItemAnimator enable notifications"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkIsRunning()V
    .locals 5

    .line 6575
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6576
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfgetallowedNotificationsDuringChatListAnimations()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;I)V

    :cond_0
    return-void
.end method

.method public endAnimations()V
    .locals 1

    .line 6616
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 6617
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6618
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6620
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAllAnimationsDone()V
    .locals 1

    .line 6596
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAllAnimationsDone()V

    .line 6597
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6598
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6599
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 6601
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 5

    .line 6582
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfgetallowedNotificationsDuringChatListAnimations()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollAnimationIndex(Lorg/telegram/ui/ChatActivity;I)V

    .line 6583
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6584
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6585
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 6587
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 6588
    const-string v0, "chatItemAnimator disable notifications"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 6590
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->runDelayedAnimation()V

    .line 6591
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->runEmojiPanelAnimation()V

    return-void
.end method
