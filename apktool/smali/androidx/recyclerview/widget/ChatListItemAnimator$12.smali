.class Landroidx/recyclerview/widget/ChatListItemAnimator$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ChatListItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1569
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1572
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1573
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1574
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1575
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1576
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1577
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1578
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1579
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1580
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$12;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    :cond_0
    return-void
.end method
