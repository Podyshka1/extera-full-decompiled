.class Lorg/telegram/ui/Components/InstantCameraView$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 3989
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$12;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3992
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$12;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetmuteAnimation(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3993
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$12;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputmuteAnimation(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method
