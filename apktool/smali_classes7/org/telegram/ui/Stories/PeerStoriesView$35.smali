.class Lorg/telegram/ui/Stories/PeerStoriesView$35;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->onMeasure(II)V
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

    .line 7197
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 7200
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7201
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 7202
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputanimatingKeyboardHeight(Lorg/telegram/ui/Stories/PeerStoriesView;F)V

    .line 7203
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_0

    .line 7204
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onOverrideAnimationEnd()V

    .line 7206
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v0, :cond_1

    .line 7207
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setKeyboardVisible(Z)V

    .line 7209
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7210
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7212
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 7213
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
