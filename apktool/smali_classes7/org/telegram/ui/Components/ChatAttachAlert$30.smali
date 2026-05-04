.class Lorg/telegram/ui/Components/ChatAttachAlert$30;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->showCommentTextView(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$above:Z

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZZ)V
    .locals 0

    .line 4762
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->val$show:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->val$above:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 4786
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcommentsAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4787
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputcommentsAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 4765
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcommentsAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4766
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->val$show:Z

    const/4 v0, 0x4

    if-nez p1, :cond_1

    .line 4767
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetisSoundPicker(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4768
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4770
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetwriteButtonContainer(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4771
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v1, :cond_3

    .line 4772
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4773
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4776
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->val$above:Z

    if-eqz p1, :cond_5

    .line 4777
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdatedTopCaptionHeight(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 4778
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->val$show:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4780
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$30;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputcommentsAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    :cond_6
    return-void
.end method
