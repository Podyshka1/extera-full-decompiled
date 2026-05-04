.class Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->showAvatarProgress(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Z)V
    .locals 0

    .line 8123
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 8139
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fputavatarAnimation(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8126
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetavatarAnimation(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetavatarEditor(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 8129
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->val$show:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 8130
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetavatarEditor(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8132
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fgetavatarProgressView(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8134
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$6;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->-$$Nest$fputavatarAnimation(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/animation/AnimatorSet;)V

    :cond_2
    :goto_1
    return-void
.end method
