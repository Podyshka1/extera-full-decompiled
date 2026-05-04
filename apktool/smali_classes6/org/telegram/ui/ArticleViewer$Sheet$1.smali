.class Lorg/telegram/ui/ArticleViewer$Sheet$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$Sheet;->animateOpen(ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$Sheet;ZLjava/lang/Runnable;)V
    .locals 0

    .line 14058
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->val$open:Z

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 14061
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->val$open:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->-$$Nest$fputopenProgress(Lorg/telegram/ui/ArticleViewer$Sheet;F)V

    .line 14062
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateTranslation()V

    .line 14063
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    .line 14064
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 14065
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14067
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkFullyVisible()V

    .line 14068
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->val$open:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$Sheet$1;->this$1:Lorg/telegram/ui/ArticleViewer$Sheet;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$Sheet;->animationsLock:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    :cond_2
    return-void
.end method
