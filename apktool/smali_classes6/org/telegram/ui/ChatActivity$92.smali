.class Lorg/telegram/ui/ChatActivity$92;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->addToSelectedMessages(Lorg/telegram/messenger/MessageObject;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field final synthetic val$newEditVisibility:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 19495
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$92;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$92;->val$newEditVisibility:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$92;->val$editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 19507
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$92;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditButtonAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$92;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditButtonAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19508
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$92;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputeditButtonAnimation(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 19498
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$92;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditButtonAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$92;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditButtonAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19499
    iget p1, p0, Lorg/telegram/ui/ChatActivity$92;->val$newEditVisibility:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 19500
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$92;->val$editItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
