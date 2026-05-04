.class Lorg/telegram/ui/Components/FragmentContextView$19;
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

    .line 2373
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2376
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2377
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2378
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 2379
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputanimatorSet(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)V

    .line 2380
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckLiveStoryAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2381
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$mcheckLiveStory(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    goto :goto_0

    .line 2382
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckCallAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2383
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_0

    .line 2384
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckPlayerAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2385
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$mcheckPlayer(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    goto :goto_0

    .line 2386
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcheckImportAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2387
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    .line 2389
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckLiveStoryAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 2390
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckCallAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 2391
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckPlayerAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    .line 2392
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$19;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputcheckImportAfterAnimation(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    :cond_4
    return-void
.end method
