.class Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;->startAnimator(FFLandroidx/core/util/Consumer;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;

.field final synthetic val$onEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 1736
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener$1;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener$1;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1739
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener$1;->val$onEnd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
