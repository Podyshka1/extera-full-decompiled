.class Lorg/telegram/ui/Components/MediaActivity$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MediaActivity$6;->showActionMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MediaActivity$6;

.field final synthetic val$empty:Z

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MediaActivity$6;ZZ)V
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$show:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$empty:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/MediaActivity$6;->-$$Nest$fputactionModeAnimation(Lorg/telegram/ui/Components/MediaActivity$6;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity$6;->-$$Nest$fgetactionModeAnimation(Lorg/telegram/ui/Components/MediaActivity$6;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 670
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/MediaActivity$6;->-$$Nest$fputactionModeAnimation(Lorg/telegram/ui/Components/MediaActivity$6;Landroid/animation/AnimatorSet;)V

    .line 671
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$show:Z

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-nez p1, :cond_3

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetselectedTextView(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetbuttonContainer(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetdeleteItem(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetdeleteItem(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$empty:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetoptionsItem(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetoptionsItem(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 683
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgettitlesContainer(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetoptionsItem(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 685
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->-$$Nest$fgetoptionsItem(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
