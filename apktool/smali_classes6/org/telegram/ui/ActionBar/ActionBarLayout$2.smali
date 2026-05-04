.class Lorg/telegram/ui/ActionBar/ActionBarLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateBackEndAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$backAnimation:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 1670
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$backAnimation:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x1

    .line 1674
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->cancelled:Z

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputpredictiveBackInProgress(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setAlpha(F)V

    .line 1677
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$monSlideAnimationEnd(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    .line 1678
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputbackAnimator(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1682
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->cancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 1683
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputpredictiveBackInProgress(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    .line 1684
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setAlpha(F)V

    .line 1685
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->val$backAnimation:Z

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$monSlideAnimationEnd(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    .line 1686
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->-$$Nest$fputbackAnimator(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)V

    return-void
.end method
