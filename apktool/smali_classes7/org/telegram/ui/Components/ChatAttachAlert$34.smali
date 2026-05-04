.class Lorg/telegram/ui/Components/ChatAttachAlert$34;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 5562
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$34;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 5565
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$34;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputmenuAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    .line 5566
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$34;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetmenuShowed(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_1

    .line 5567
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$34;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$34;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v1, :cond_0

    .line 5568
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5570
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$34;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5571
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$34;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_2

    .line 5572
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
