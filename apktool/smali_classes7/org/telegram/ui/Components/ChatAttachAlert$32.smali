.class Lorg/telegram/ui/Components/ChatAttachAlert$32;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->onCustomOpenAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)V
    .locals 0

    .line 4984
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 4996
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4997
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4998
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 4999
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$9302(Lorg/telegram/ui/Components/ChatAttachAlert;I)I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4987
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4988
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetappearSpringAnimation(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetappearSpringAnimation(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4989
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$32;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
