.class Lorg/telegram/ui/Components/ShareAlert$34;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    .line 2948
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$34;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 2969
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2970
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputanimatorSet(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2951
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetanimatorSet(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2952
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->val$show:Z

    const/4 v0, 0x4

    if-nez p1, :cond_1

    .line 2953
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2954
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p1, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetpickerBottom(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2955
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2957
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetwriteButtonContainer(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2959
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetpickerBottom(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2960
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetpickerBottom(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2963
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$34;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputanimatorSet(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)V

    :cond_3
    return-void
.end method
