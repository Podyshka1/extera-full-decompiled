.class Lorg/telegram/ui/Stories/PeerStoriesView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 2530
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2533
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputlikesReactionShowProgress(Lorg/telegram/ui/Stories/PeerStoriesView;F)V

    .line 2534
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlikesReactionLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    .line 2535
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlikesReactionLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2536
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetlikesReactionLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    return-void
.end method
