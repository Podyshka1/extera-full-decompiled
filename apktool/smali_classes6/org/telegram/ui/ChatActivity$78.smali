.class Lorg/telegram/ui/ChatActivity$78;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showBottomOverlayProgress(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Z)V
    .locals 0

    .line 12574
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$78;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 12588
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12589
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputbottomOverlayAnimation(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 12577
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12578
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$78;->val$show:Z

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 12579
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayProgress(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 12581
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayLinks(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayLinksText(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayChatText(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UnreadCounterTextView;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
