.class Lorg/telegram/ui/Components/ChatAttachAlert$27;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$t:I


# direct methods
.method public static synthetic $r8$lambda$I5VrKVnePeGNkb6bpviw9l7ivPY(Lorg/telegram/ui/Components/ChatAttachAlert$27;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert$27;->lambda$onAnimationEnd$1(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$bRwCM8BFjZKYruuxvkr4rfTqBVw(Lorg/telegram/ui/Components/ChatAttachAlert$27;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$27;->lambda$onAnimationEnd$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;ILjava/lang/Runnable;)V
    .locals 0

    .line 4380
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->val$t:I

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 4391
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetnextAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpollLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetnextAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettodoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetviewChangeAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4392
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdateSelectedPosition(Lorg/telegram/ui/Components/ChatAttachAlert;I)V

    .line 4394
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetnextAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 4395
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 4398
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetnextAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 4399
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetnextAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 4400
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$8600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 4401
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4402
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdateSelectedPosition(Lorg/telegram/ui/Components/ChatAttachAlert;I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 4383
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4384
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->val$t:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4385
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->ATTACH_ALERT_LAYOUT_TRANSLATION:Landroid/util/Property;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4386
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4387
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetnextAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, v1, v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 4388
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4389
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 4390
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$27$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$27$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$27;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 4397
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->val$onEnd:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$27$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$27$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$27;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 4404
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$27;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputviewChangeAnimator(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Object;)V

    .line 4405
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method
