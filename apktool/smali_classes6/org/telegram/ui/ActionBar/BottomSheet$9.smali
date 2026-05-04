.class Lorg/telegram/ui/ActionBar/BottomSheet$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;->registerBackCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 2493
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 7

    .line 2532
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputpredictiveBackAnimationInProgress(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V

    .line 2534
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-nez v0, :cond_0

    return-void

    .line 2536
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->resetTouch()V

    .line 2537
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$mcancelCurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    .line 2539
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fputcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/AnimatorSet;)V

    .line 2540
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fgetcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v6, v5, v1

    .line 2541
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v2, v3, v1

    .line 2540
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2544
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 2545
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fgetcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v5, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    iget-boolean v6, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v6, :cond_1

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-static {v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2548
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fgetcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2549
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fgetcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2551
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fgetcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$9$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$9$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2560
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->-$$Nest$fgetcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onBackInvoked()V
    .locals 2

    .line 2519
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->canDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2520
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$9;->onBackCancelled()V

    return-void

    .line 2523
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputpredictiveBackAnimationInProgress(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V

    .line 2524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz v0, :cond_1

    .line 2525
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->resetTouch()V

    .line 2527
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 3

    .line 2504
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2506
    :cond_0
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    .line 2507
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v1, p1

    mul-float/2addr v0, v1

    .line 2509
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2511
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 2512
    iget v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v0, v2

    float-to-int p1, v0

    .line 2513
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    .line 2496
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputpredictiveBackAnimationInProgress(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V

    .line 2497
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$9;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 2498
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->resetTouch()V

    :cond_0
    return-void
.end method
