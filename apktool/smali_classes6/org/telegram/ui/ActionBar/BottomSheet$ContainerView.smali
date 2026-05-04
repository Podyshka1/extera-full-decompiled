.class public abstract Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerView"
.end annotation


# instance fields
.field private allowedSwipeToBack:Z

.field private backgroundPaint:Landroid/graphics/Paint;

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private final internalBackgroundPaint:Landroid/graphics/Paint;

.field private internalPaddingBottom:I

.field private keyboardChanged:Z

.field private maybeStartTracking:Z

.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private rect:Landroid/graphics/Rect;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private swipeBackX:F

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private y:F


# direct methods
.method public static synthetic $r8$lambda$-bQELLq0lhRf2qF7iPOs7k23XOY(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->lambda$processTouchEvent$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5VpB_QZHUWenFrNS8IqTpvvCDZ4(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->lambda$processTouchEvent$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AFgPrtKbfeZdSaUf5Elm9s95d8k(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->lambda$checkDismiss$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-gSEbN1hYWSjiLu5d1STrgV6FQ(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->lambda$onLayout$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zu6cW2qa4E9rHzGbJnNi8bRqIP0(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->lambda$processTouchEvent$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinternalPaddingBottom(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalPaddingBottom:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswipeBackX(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelCurrentAnimation(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 1

    .line 244
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 245
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 232
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 p2, -0x1

    .line 235
    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    const/4 p2, 0x0

    .line 236
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 237
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 238
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 240
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    .line 241
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 377
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    .line 378
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    .line 780
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalBackgroundPaint:Landroid/graphics/Paint;

    .line 246
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 247
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private cancelCurrentAnimation()V
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onSwipeStarts()V

    return-void
.end method

.method private checkDismiss(FF)V
    .locals 9

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    .line 329
    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    cmpg-float v3, v0, v3

    const/4 v4, 0x1

    const v5, 0x455ac000    # 3500.0f

    const/4 v6, 0x0

    if-gez v3, :cond_0

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v3, p1

    if-ltz p1, :cond_1

    :cond_0
    cmpg-float p1, p2, v6

    if-gez p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_2

    .line 337
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 338
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    .line 339
    new-array p2, p1, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 340
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-array v7, v4, [F

    aput v6, v7, v2

    .line 347
    const-string v8, "translationY"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v5, p1, v2

    aput-object p2, p1, v4

    .line 346
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v0

    div-float/2addr p2, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 351
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 331
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetallowCustomAnimation(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputallowCustomAnimation(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p2, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputuseFastDismiss(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V

    .line 334
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 335
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputallowCustomAnimation(Lorg/telegram/ui/ActionBar/BottomSheet;Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$checkDismiss$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 344
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    return-void
.end method

.method private synthetic lambda$onLayout$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 670
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onSmoothContainerViewLayout(F)V

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$processTouchEvent$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 424
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$processTouchEvent$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$processTouchEvent$3(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 461
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalPaddingBottom:I

    if-lez v1, :cond_0

    .line 785
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetinternalBackgroundColor(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 787
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    sub-float v2, v0, v6

    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    .line 789
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float v4, v0, v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    .line 786
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 793
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 794
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    if-ltz v3, :cond_1

    .line 795
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 800
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->shouldOverlayCameraViewOverNavBar()Z

    move-result v2

    if-nez v2, :cond_3

    .line 803
    invoke-virtual {p0, p1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawNavigationBar(Landroid/graphics/Canvas;F)V

    .line 805
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    const/4 v7, 0x0

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v3, :cond_7

    .line 807
    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-nez v3, :cond_5

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mgetAdditionalMandatoryOffsets(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v7

    goto :goto_2

    .line 808
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 809
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 811
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 812
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 813
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    add-float/2addr v2, v1

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    move v1, v3

    move v3, v4

    move v4, v5

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 814
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 817
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 819
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->shouldOverlayCameraViewOverNavBar()Z

    move-result v1

    if-nez v1, :cond_9

    .line 820
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    if-eqz v2, :cond_8

    const v2, 0x3f333333    # 0.7f

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    mul-float v6, v1, v2

    :cond_8
    invoke-virtual {p0, p1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawNavigationBar(Landroid/graphics/Canvas;F)V

    .line 822
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_a

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetrightInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetrightInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetleftInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v2

    if-le v1, v2, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    if-eqz v2, :cond_a

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v3, v2, :cond_a

    .line 823
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetrightInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 826
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v1, :cond_b

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetleftInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetleftInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetrightInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    if-eqz v1, :cond_b

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_b

    .line 827
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 830
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_d

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:I

    if-ltz v2, :cond_c

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    goto :goto_5

    :cond_c
    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColor:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move v1, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 838
    instance-of v0, p2, Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->shouldOverlayCameraViewOverNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 840
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawNavigationBar(Landroid/graphics/Canvas;F)V

    .line 842
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 844
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawNavigationBar(Landroid/graphics/Canvas;F)V
    .locals 21

    move-object/from16 v0, p0

    .line 873
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 874
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    if-ltz v3, :cond_0

    .line 875
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 877
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 880
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 882
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgettransitionFromRight(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    .line 885
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_e

    .line 887
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 888
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-nez v5, :cond_7

    const/16 v5, 0x1d

    if-lt v1, v5, :cond_6

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mgetAdditionalMandatoryOffsets(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3

    .line 889
    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    if-eqz v3, :cond_8

    int-to-float v3, v2

    .line 890
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v1

    sub-float/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_3

    .line 892
    :cond_8
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v1, v3

    .line 893
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 896
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 897
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgettransitionFromRight(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 898
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    mul-float v5, v5, p2

    goto :goto_4

    :cond_9
    move/from16 v5, p2

    .line 900
    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgettransitionFromRight(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    goto :goto_5

    :cond_a
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    :goto_5
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v7

    if-gez v7, :cond_b

    .line 902
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v9, v3

    mul-float/2addr v9, v5

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 904
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v8, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v8, v6

    int-to-float v10, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v2

    int-to-float v8, v8

    add-float/2addr v8, v1

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v9

    sub-float v11, v8, v9

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v9, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v8, v9

    int-to-float v12, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v13, v8, v1

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 905
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 907
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetoverlayDrawNavBarColor(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v3

    if-eqz v3, :cond_e

    .line 908
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetoverlayDrawNavBarColor(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 909
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 910
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarThirdButtonsFactor(I)F

    move-result v8

    if-gez v7, :cond_c

    .line 912
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v7, v3

    mul-float/2addr v7, v5

    mul-float/2addr v7, v8

    float-to-int v5, v7

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    :cond_c
    move v4, v1

    .line 915
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_d

    .line 916
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v2, v5

    add-float/2addr v2, v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v5

    sub-float v17, v2, v5

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float v19, v5, v4

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v20, v4

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 918
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_e
    :goto_7
    return-void
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 850
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_3

    .line 852
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mgetAdditionalMandatoryOffsets(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-lez v1, :cond_1

    .line 853
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 854
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 856
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 857
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 858
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v2, v5

    int-to-float v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    add-float/2addr v1, v4

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v2

    sub-float v7, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v1, v2

    int-to-float v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v1, v4

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 861
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 862
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v4, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v4, :cond_7

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    if-eqz v4, :cond_7

    .line 863
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget v5, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:I

    if-ltz v5, :cond_4

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    goto :goto_2

    :cond_4
    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColor:I

    :goto_2
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 864
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v2, v4

    int-to-float v12, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v5, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    sub-int/2addr v2, v5

    iget-boolean v5, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    sub-int/2addr v2, v4

    int-to-float v13, v2

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v2, v4

    int-to-float v14, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v5, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v3

    :cond_6
    sub-int/2addr v2, v3

    int-to-float v15, v2

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 866
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_8

    .line 868
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetpredictiveBackAnimationInProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 761
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->canSwipeToBack(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 764
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 762
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->processTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 639
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalPaddingBottom:I

    sub-int v1, p5, v1

    .line 641
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlayoutCount(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputlayoutCount(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    .line 642
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_b

    sub-int v6, v1, p3

    .line 643
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v6, v2

    .line 644
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 645
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v2

    add-int v2, p2, v2

    .line 646
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getRightInset()I

    move-result v7

    sub-int v7, p4, v7

    .line 647
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v9, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    if-eqz v9, :cond_0

    move v6, v5

    goto :goto_1

    .line 649
    :cond_0
    iget-boolean v9, v8, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBar:Z

    if-nez v9, :cond_3

    int-to-float v6, v6

    .line 650
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgethideSystemVerticalInsetsProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v9

    mul-float/2addr v8, v10

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v10, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v9

    :goto_0
    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v6, v8

    float-to-int v6, v6

    .line 651
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_3

    .line 652
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mgetAdditionalMandatoryOffsets(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v8

    sub-int/2addr v6, v8

    goto :goto_1

    :cond_2
    move/from16 v2, p2

    move/from16 v7, p4

    :cond_3
    :goto_1
    sub-int v8, v7, v2

    .line 656
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v3

    .line 657
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 658
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v9

    add-int/2addr v8, v9

    .line 660
    :cond_4
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    if-eqz v10, :cond_6

    iget-object v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-nez v10, :cond_6

    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardChanged:Z

    if-eqz v10, :cond_6

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardByBottom:Z

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    if-eq v9, v10, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    if-ne v9, v6, :cond_7

    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetsmoothContainerViewLayoutUntil(Lorg/telegram/ui/ActionBar/BottomSheet;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetsmoothContainerViewLayoutUntil(Lorg/telegram/ui/ActionBar/BottomSheet;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_a

    .line 661
    :cond_7
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-boolean v9, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardByBottom:Z

    if-eqz v9, :cond_8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    sub-int/2addr v9, v11

    :goto_3
    int-to-float v9, v9

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_3

    :goto_4
    invoke-virtual {v10, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 662
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    .line 663
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->onSmoothContainerViewLayout(F)V

    .line 664
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 665
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    .line 667
    :cond_9
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getTranslationY()F

    move-result v10

    new-array v11, v3, [F

    aput v10, v11, v5

    const/4 v10, 0x0

    aput v10, v11, v4

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V

    .line 668
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 674
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 683
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v9

    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v9

    sget-object v10, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 684
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetkeyboardContentAnimator(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 685
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const-wide/16 v10, -0x1

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputsmoothContainerViewLayoutUntil(Lorg/telegram/ui/ActionBar/BottomSheet;J)V

    .line 687
    :cond_a
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v9, v8, v6, v10, v11}, Landroid/view/ViewGroup;->layout(IIII)V

    move v14, v2

    move/from16 v16, v7

    goto :goto_5

    :cond_b
    move/from16 v14, p2

    move/from16 v16, p4

    .line 690
    :goto_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v6, v5

    :goto_6
    if-ge v6, v2, :cond_15

    .line 692
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 693
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_14

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v7, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-ne v13, v7, :cond_c

    goto/16 :goto_c

    .line 696
    :cond_c
    iget-boolean v7, v12, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v7, :cond_d

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v7

    goto :goto_7

    :cond_d
    move v7, v5

    :goto_7
    sub-int v17, v1, v7

    move/from16 v15, p3

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomLayout(Landroid/view/View;IIII)Z

    move-result v7

    if-nez v7, :cond_14

    .line 697
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 699
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 700
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 705
    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_e

    const/16 v10, 0x33

    :cond_e
    and-int/lit8 v11, v10, 0x70

    and-int/lit8 v10, v10, 0x7

    if-eq v10, v4, :cond_10

    const/4 v12, 0x5

    if-eq v10, v12, :cond_f

    .line 722
    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_9

    :cond_f
    sub-int v10, v16, v8

    .line 718
    iget v12, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_8
    sub-int/2addr v10, v12

    goto :goto_9

    :cond_10
    sub-int v10, v16, v14

    sub-int/2addr v10, v8

    .line 715
    div-int/2addr v10, v3

    iget v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v12

    iget v12, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_8

    :goto_9
    const/16 v12, 0x10

    if-eq v11, v12, :cond_12

    const/16 v12, 0x50

    if-eq v11, v12, :cond_11

    .line 733
    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_b

    :cond_11
    sub-int v11, v1, p3

    sub-int/2addr v11, v9

    .line 730
    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_a
    sub-int v7, v11, v7

    goto :goto_b

    :cond_12
    sub-int v11, v1, p3

    sub-int/2addr v11, v9

    .line 727
    div-int/2addr v11, v3

    iget v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_a

    .line 735
    :goto_b
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 736
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v11

    add-int/2addr v10, v11

    :cond_13
    add-int/2addr v8, v10

    add-int/2addr v9, v7

    .line 738
    invoke-virtual {v13, v10, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_14
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 741
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlayoutCount(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_16

    iget-boolean v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-nez v1, :cond_16

    .line 742
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 743
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 744
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    .line 746
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v2, :cond_18

    .line 747
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_17

    .line 748
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 749
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 751
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-boolean v5, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    .line 753
    :cond_18
    iput-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardChanged:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 552
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 553
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 556
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 557
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v5, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    .line 558
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v7, :cond_2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-eqz v6, :cond_2

    .line 559
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-eqz v6, :cond_0

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgethideSystemVerticalInsetsProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v7

    sub-float v7, v9, v7

    mul-float/2addr v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    sub-float/2addr v4, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgethideSystemVerticalInsetsProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v6

    sub-float v6, v9, v6

    mul-float/2addr v3, v6

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 560
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    sub-int/2addr v3, v7

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    .line 561
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 562
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput v10, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    goto :goto_1

    .line 564
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputlastKeyboardHeight(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    .line 566
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    goto :goto_2

    .line 568
    :cond_2
    iput v10, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    .line 570
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    const/4 v6, 0x1

    if-eq v5, v4, :cond_3

    .line 571
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardChanged:Z

    .line 574
    :cond_3
    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    .line 575
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-le v4, v7, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    move v4, v10

    :goto_3
    iput-boolean v4, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    .line 577
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v4, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eq v5, v4, :cond_5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_5

    .line 578
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mupdateBackCallbackState(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    .line 580
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v3

    const/16 v4, 0x1d

    if-eqz v3, :cond_8

    .line 581
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    .line 582
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputleftInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    .line 583
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputrightInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    .line 584
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_6

    .line 585
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mgetAdditionalMandatoryOffsets(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    .line 587
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v7, :cond_7

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_7

    .line 588
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v7, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    sub-int/2addr v5, v7

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputbottomInset(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    .line 590
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-nez v5, :cond_8

    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBar:Z

    if-nez v5, :cond_8

    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBarWithoutKeyboard:Z

    if-nez v5, :cond_8

    .line 591
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v3

    sub-int v3, v2, v3

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_4
    sub-int v3, v2, v3

    .line 594
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->internalPaddingBottom:I

    .line 595
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 596
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput v10, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    .line 597
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBar:Z

    if-nez v5, :cond_c

    .line 598
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgethideSystemVerticalInsetsProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v5

    sub-float/2addr v9, v5

    mul-float/2addr v3, v9

    float-to-int v3, v3

    .line 599
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_9

    .line 600
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mgetAdditionalMandatoryOffsets(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v4

    add-int/2addr v3, v4

    .line 602
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBarWithoutKeyboard:Z

    if-eqz v4, :cond_a

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_b

    :cond_a
    sub-int/2addr v2, v3

    .line 605
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarHeight:I

    :cond_c
    move v7, v2

    .line 607
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 608
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getRightInset()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    :cond_d
    move v8, v1

    .line 610
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-ge v8, v7, :cond_e

    goto :goto_5

    :cond_e
    move v6, v10

    :goto_5
    iput-boolean v6, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    .line 612
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v2, :cond_11

    .line 613
    iget-boolean v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    const/high16 v4, -0x80000000

    if-nez v3, :cond_10

    .line 615
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 616
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    .line 618
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    invoke-virtual {v1, v2, v8, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomSheetWidth(ZII)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 620
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 622
    :cond_10
    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 625
    :cond_11
    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    :goto_8
    if-ge v10, v9, :cond_14

    .line 627
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-ne v1, v3, :cond_12

    goto :goto_9

    .line 631
    :cond_12
    invoke-virtual {v2, v1, v8, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomMeasure(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_13

    .line 632
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_13
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1

    .line 295
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    if-lez p3, :cond_2

    int-to-float v0, p3

    sub-float/2addr p1, v0

    const/4 v0, 0x1

    .line 302
    aput p3, p4, v0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    .line 306
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    if-eqz p5, :cond_2

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    int-to-float p2, p5

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    .line 287
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 252
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->nestedScrollChild:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    .line 253
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 268
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    const/4 p1, 0x0

    .line 272
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->checkDismiss(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetpredictiveBackAnimationInProgress(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->processTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 10

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 387
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->canSwipeToBack(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->allowedSwipeToBack:Z

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 474
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithTouchOutside()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_5

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 477
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isTouchOutside(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onDismissWithTouchOutside()V

    return v2

    .line 481
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->onScrollUpBegin(F)V

    .line 482
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 483
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 484
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_19

    .line 486
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_4

    .line 488
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v0, v7, :cond_9

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 490
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 492
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 494
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->onScrollUp(F)Z

    move-result v4

    .line 495
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 496
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdisableScroll(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v5, :cond_7

    cmpl-float v5, v3, v8

    if-lez v5, :cond_7

    div-float v5, v3, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgettouchSlop(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_7

    .line 497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 498
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 499
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 500
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    .line 501
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-eqz v0, :cond_19

    .line 502
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    add-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    if-nez v4, :cond_8

    .line 504
    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    .line 505
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerViewTranslation()V

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    :cond_9
    if-eqz p1, :cond_a

    .line 510
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v0, v6, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_19

    .line 511
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 512
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 514
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->onScrollUpEnd(F)V

    .line 516
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_d

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_c

    goto :goto_0

    .line 519
    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    goto :goto_1

    .line 517
    :cond_d
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-direct {p0, v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->checkDismiss(FF)V

    .line 521
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    .line 523
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 526
    :cond_e
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    goto/16 :goto_4

    :cond_f
    :goto_2
    if-eqz p1, :cond_11

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_11

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 389
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->allowedSwipeToBack:Z

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 392
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 393
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 394
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    goto/16 :goto_4

    :cond_11
    if-eqz p1, :cond_14

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_14

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v0, v9, :cond_14

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 398
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_12

    .line 399
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 401
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 402
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetdisableScroll(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v4, :cond_13

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v4, :cond_13

    cmpl-float v4, v0, v8

    if-lez v4, :cond_13

    div-float v4, v0, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_13

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgettouchSlop(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_13

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    .line 404
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 405
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    goto/16 :goto_4

    .line 406
    :cond_13
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-eqz v3, :cond_19

    .line 407
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    add-float/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    :cond_14
    if-eqz p1, :cond_15

    .line 412
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v0, v9, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_19

    .line 414
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_16

    .line 415
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 417
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 418
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 419
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    cmpg-float v5, v5, v9

    if-gez v5, :cond_18

    const v5, 0x455ac000    # 3500.0f

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_17

    cmpg-float v0, v0, v4

    if-gez v0, :cond_18

    .line 421
    :cond_17
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    .line 422
    new-array v4, v7, [F

    aput v0, v4, v1

    aput v8, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 423
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 428
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xdc

    .line 437
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 440
    :cond_18
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->swipeBackX:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    new-array v5, v7, [F

    aput v0, v5, v1

    aput v4, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 441
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 455
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x140

    .line 456
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 457
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 459
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 460
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 464
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 466
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 468
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 469
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 470
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 471
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->allowedSwipeToBack:Z

    :cond_19
    :goto_4
    if-nez p2, :cond_1a

    .line 529
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-nez p2, :cond_1c

    :cond_1a
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez p2, :cond_1c

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->canSwipeToBack(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_5

    :cond_1b
    return v1

    :cond_1c
    :goto_5
    return v2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 769
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 770
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 772
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public resetTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 534
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    const/4 v0, -0x1

    .line 535
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method
