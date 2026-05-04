.class Lorg/telegram/ui/PhotoViewer$81;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$Y6WvrC1oj-fLgBFmq-VYu-zSZiU(Lorg/telegram/ui/PhotoViewer$81;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$81;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 18733
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 18737
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationEndRunnable(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18738
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationEndRunnable(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 18739
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$81;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimationEndRunnable(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 18736
    new-instance p1, Lorg/telegram/ui/PhotoViewer$81$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoViewer$81$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$81;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
