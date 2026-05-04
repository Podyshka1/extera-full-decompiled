.class Lorg/telegram/ui/PaymentFormActivity$28;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0

    .line 4657
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/PaymentFormActivity$28;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 4671
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdoneItemAnimation(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdoneItemAnimation(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4672
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputdoneItemAnimation(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4660
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdoneItemAnimation(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdoneItemAnimation(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4661
    iget-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity$28;->val$show:Z

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 4662
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    return-void

    .line 4664
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdoneItem(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
