.class Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationSetupActivity;->showDoneButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Z)V
    .locals 0

    .line 1667
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetbuttonAnimation(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetbuttonAnimation(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1682
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fputbuttonAnimation(Lorg/telegram/ui/TwoStepVerificationSetupActivity;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetbuttonAnimation(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetbuttonAnimation(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1671
    iget-boolean p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->val$show:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 1672
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetdescriptionText2(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1674
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TwoStepVerificationSetupActivity$14;->this$0:Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;->-$$Nest$fgetbuttonTextView(Lorg/telegram/ui/TwoStepVerificationSetupActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
