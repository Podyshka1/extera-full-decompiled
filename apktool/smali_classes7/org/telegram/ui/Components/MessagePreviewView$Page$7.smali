.class Lorg/telegram/ui/Components/MessagePreviewView$Page$7;
.super Landroidx/recyclerview/widget/ChatListItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finishRunnable:Ljava/lang/Runnable;

.field scrollAnimationIndex:I

.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method public static synthetic $r8$lambda$Fwwot_Y24Rl1GhF0e3XJDth1Vcg(Lorg/telegram/ui/Components/MessagePreviewView$Page$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->lambda$onAllAnimationsDone$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$lKZeyz5hggLzGPB0h4-7Q07ihto(Lorg/telegram/ui/Components/MessagePreviewView$Page$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->lambda$onAllAnimationsDone$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$oxeFIPPChnFR32_uozpvqltsFao(Lorg/telegram/ui/Components/MessagePreviewView$Page$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->lambda$endAnimations$2()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/ChatListItemAnimator;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, -0x1

    .line 614
    iput p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    return-void
.end method

.method private synthetic lambda$endAnimations$2()V
    .locals 3

    .line 660
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 662
    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$0()V
    .locals 3

    .line 641
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 643
    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$1()V
    .locals 1

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mupdateMessages(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    return-void
.end method


# virtual methods
.method public endAnimations()V
    .locals 1

    .line 655
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 657
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 659
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$7;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAllAnimationsDone()V
    .locals 2

    .line 636
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAllAnimationsDone()V

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 638
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 640
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$7;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateAfterAnimations:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 648
    iput-boolean v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateAfterAnimations:Z

    .line 649
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$7;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart()V
    .locals 4

    .line 618
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAnimationStart()V

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 622
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->scrollAnimationIndex:I

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 626
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 627
    iput-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;->finishRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
