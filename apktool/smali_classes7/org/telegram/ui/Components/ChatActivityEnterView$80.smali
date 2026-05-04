.class Lorg/telegram/ui/Components/ChatActivityEnterView$80;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$onAnimationEndRunnuble:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)V
    .locals 0

    .line 12458
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$80;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$80;->val$onAnimationEndRunnuble:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 12461
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$80;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputpanelAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)V

    .line 12462
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$80;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 12463
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$80;->val$onAnimationEndRunnuble:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
