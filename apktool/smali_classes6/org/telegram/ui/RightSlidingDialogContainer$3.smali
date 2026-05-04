.class Lorg/telegram/ui/RightSlidingDialogContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/RightSlidingDialogContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/RightSlidingDialogContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$3;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$3;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget-object v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 410
    iput-object v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p1, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationFinished(Z)V

    return-void
.end method
