.class Landroidx/recyclerview/widget/ChatListItemAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ChatListItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ChatListItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 373
    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 381
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 382
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$view:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 383
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->messageEntering:Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 389
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$view:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 390
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->messageEntering:Z

    .line 392
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 393
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object p1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 395
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 376
    iget-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->this$0:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
