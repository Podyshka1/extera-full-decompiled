.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateOpenTo(FZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field final synthetic val$onDone:Ljava/lang/Runnable;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;FLjava/lang/Runnable;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->val$value:F

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 908
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputfrozenDismissProgress(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Float;)V

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->val$value:F

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputopenProgress(Lorg/telegram/ui/Stories/recorder/StoryRecorder;F)V

    .line 910
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mapplyOpenProgress(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 911
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->invalidate()V

    .line 912
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->val$onDone:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 914
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 916
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetfromSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetwaveEffect(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/StoryWaveEffectView;

    .line 920
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 921
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 922
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/NotificationCenter;->runDelayedNotifications()V

    .line 923
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mcheckBackgroundVisibility(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 925
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetonFullyOpenListener(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 926
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetonFullyOpenListener(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 927
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputonFullyOpenListener(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    .line 930
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->invalidate()V

    .line 931
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetpreviewContainer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
