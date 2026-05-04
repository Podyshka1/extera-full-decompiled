.class Lorg/telegram/ui/Components/FragmentContextView$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 2527
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2530
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotificationsLocker2(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2531
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2532
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputanimatorSet(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)V

    .line 2534
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckLiveStoryAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2535
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$mcheckLiveStory(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    goto :goto_0

    .line 2536
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckCallAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2537
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_0

    .line 2538
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckPlayerAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2539
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$mcheckPlayer(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    goto :goto_0

    .line 2540
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckImportAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2541
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    .line 2543
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckLiveStoryAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 2544
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckCallAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 2545
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckPlayerAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 2546
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckImportAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 2548
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$21;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$mstartJoinFlickerAnimation(Lorg/telegram/ui/Components/FragmentContextView;)V

    return-void
.end method
