.class Lorg/telegram/ui/Components/UsersAlertBase$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UsersAlertBase;->runShadowAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/UsersAlertBase;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UsersAlertBase;Z)V
    .locals 0

    .line 436
    iput-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 440
    iget-boolean p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->val$show:Z

    if-nez p1, :cond_0

    .line 441
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object p1, p1, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$4;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method
