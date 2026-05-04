.class Lorg/telegram/ui/ChatUsersActivity$6;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$6;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 774
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$6;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-void
.end method


# virtual methods
.method protected onAllAnimationsDone()V
    .locals 1

    .line 778
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onAllAnimationsDone()V

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$6;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method

.method protected onChangeAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 802
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onChangeAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$6;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 796
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 797
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$6;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public runPendingAnimations()V
    .locals 4

    .line 784
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 785
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 786
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 787
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 789
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$6;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 791
    :cond_1
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V

    return-void
.end method
