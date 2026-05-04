.class Lorg/telegram/ui/Components/ChatAttachAlert$33;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->updateActionBarVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    .line 5356
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 5377
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputactionBarAnimation(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 5359
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetactionBarAnimation(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5360
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->val$show:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 5361
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->typeButtonsAvailable:Z

    if-eqz v1, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5362
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5365
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_2

    .line 5366
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5368
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v1, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetmenuShowed(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 5369
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$33;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
