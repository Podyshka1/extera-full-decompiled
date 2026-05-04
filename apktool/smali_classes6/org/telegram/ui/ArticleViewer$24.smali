.class Lorg/telegram/ui/ArticleViewer$24;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 5369
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$24;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 5384
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetprogressViewAnimation(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetprogressViewAnimation(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5385
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputprogressViewAnimation(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5372
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetprogressViewAnimation(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetprogressViewAnimation(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5373
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$24;->val$show:Z

    if-nez p1, :cond_0

    .line 5374
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$24;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    :cond_0
    return-void
.end method
