.class Lorg/telegram/ui/Components/InstantCameraView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field final synthetic val$didSwap:[Z

.field final synthetic val$doSwap:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;[ZLjava/lang/Runnable;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->val$didSwap:[Z

    iput-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->val$doSwap:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 430
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->val$didSwap:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 432
    aput-boolean v1, p1, v0

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->val$doSwap:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 435
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcameraContainer(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgettextureOverlayView(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fputflipAnimationInProgress(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
