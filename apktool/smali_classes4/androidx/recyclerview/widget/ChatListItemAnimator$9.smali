.class Landroidx/recyclerview/widget/ChatListItemAnimator$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ChatListItemAnimator;->animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field final synthetic val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1116
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1117
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1118
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1119
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1120
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1121
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationOffsetX(F)V

    goto :goto_0

    .line 1123
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1125
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1127
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1128
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 1129
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1111
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$9;->val$changeInfo:Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
