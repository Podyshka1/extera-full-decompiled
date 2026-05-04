.class Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;->animateExit(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroidx/core/util/Consumer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$startAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;->this$0:Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition;

    iput-object p2, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;->val$startAction:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1097
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;->val$endAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1098
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1090
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$Layout$DefaultTransition$2;->val$startAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1091
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
