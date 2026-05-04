.class Lorg/telegram/ui/Components/ChatActivityEnterView$64;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 8761
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 8777
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrunningAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8778
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrunningAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 8764
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrunningAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8765
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$msetSlowModeButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 8766
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrunningAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)V

    .line 8767
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrunningAnimationType(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 8769
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainer(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8770
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$64;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainer(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
