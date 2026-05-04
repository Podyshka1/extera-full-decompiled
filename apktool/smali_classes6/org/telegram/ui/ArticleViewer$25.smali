.class Lorg/telegram/ui/ArticleViewer$25;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->close(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 5519
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$25;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5522
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$25;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetanimationEndRunnable(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5523
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$25;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetanimationEndRunnable(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5524
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$25;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputanimationEndRunnable(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
