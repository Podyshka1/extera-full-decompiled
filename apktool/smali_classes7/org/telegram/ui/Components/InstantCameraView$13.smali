.class Lorg/telegram/ui/Components/InstantCameraView$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V
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

    .line 4104
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$13;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 4107
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$13;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v0, p1, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4108
    iput-object v0, p1, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
