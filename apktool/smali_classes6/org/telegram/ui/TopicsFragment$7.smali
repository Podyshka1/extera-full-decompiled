.class Lorg/telegram/ui/TopicsFragment$7;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finishRunnable:Ljava/lang/Runnable;

.field scrollAnimationIndex:I

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method public static synthetic $r8$lambda$kgHYrQ_tQIa3XWr13aJX0Se6nt8(Lorg/telegram/ui/TopicsFragment$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$7;->lambda$endAnimations$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vCqJ_0Q-LKos-GuLDs6HIyp7oGQ(Lorg/telegram/ui/TopicsFragment$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment$7;->lambda$onAllAnimationsDone$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method

.method private synthetic lambda$endAnimations$1()V
    .locals 3

    const/4 v0, 0x0

    .line 984
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    .line 985
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 987
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$0()V
    .locals 3

    const/4 v0, 0x0

    .line 968
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    .line 969
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 971
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected afterAnimateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 996
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetitemTouchHelper(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetitemTouchHelper(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->clearRecoverAnimations()V

    .line 999
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz p1, :cond_1

    .line 1000
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->-$$Nest$fgetcurrentTopic(Lorg/telegram/ui/TopicsFragment$TopicDialogCell;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setTopicIcon(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 1002
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fputgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public checkIsRunning()V
    .locals 4

    .line 951
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/TopicsFragment$7;->scrollAnimationIndex:I

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 954
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 955
    iput-object v3, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public endAnimations()V
    .locals 1

    .line 979
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimations()V

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 981
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 983
    :cond_0
    new-instance v0, Lorg/telegram/ui/TopicsFragment$7$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsFragment$7$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment$7;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAllAnimationsDone()V
    .locals 1

    .line 962
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onAllAnimationsDone()V

    .line 963
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 964
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 965
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    .line 967
    :cond_0
    new-instance v0, Lorg/telegram/ui/TopicsFragment$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsFragment$7$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment$7;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$7;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
