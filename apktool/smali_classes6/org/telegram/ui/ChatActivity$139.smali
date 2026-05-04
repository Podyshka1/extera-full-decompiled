.class Lorg/telegram/ui/ChatActivity$139;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$isOpen:Z


# direct methods
.method public static synthetic $r8$lambda$MmFLII_I-CaHDNHkI_WdtEkuij4(Lorg/telegram/ui/ChatActivity$139;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$139;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ZLjava/lang/Runnable;)V
    .locals 0

    .line 42530
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$139;->val$isOpen:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$139;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 42551
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChatActivity$139;->index:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 42542
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    .line 42543
    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$23202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 42544
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputfragmentTransition(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)V

    .line 42545
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$139;->val$isOpen:Z

    if-eqz p1, :cond_0

    .line 42546
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputswitchingFromTopics(Lorg/telegram/ui/ChatActivity;Z)V

    .line 42548
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 42549
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 42550
    new-instance p1, Lorg/telegram/ui/ChatActivity$139$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$139$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$139;)V

    const-wide/16 v0, 0x20

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 42553
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 42536
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 42537
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$139;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23100(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$139;->index:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$139;->index:I

    return-void
.end method
