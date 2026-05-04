.class Lorg/telegram/ui/ChatActivity$58;
.super Lorg/telegram/ui/Components/ReactionsContainerLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showTagSelector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstLayout:Z

.field private loc:[I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private va:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$EcZAv_mnKOpCwV7MsdHCbf5_8fY(Lorg/telegram/ui/ChatActivity$58;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$58;->lambda$updateBubbleOffset$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 10448
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$58;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x2

    .line 10450
    new-array p2, p2, [I

    iput-object p2, p1, Lorg/telegram/ui/ChatActivity$58;->loc:[I

    const/4 p2, 0x1

    .line 10453
    iput-boolean p2, p1, Lorg/telegram/ui/ChatActivity$58;->firstLayout:Z

    return-void
.end method

.method private synthetic lambda$updateBubbleOffset$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 10464
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    .line 10465
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateBubbleOffset(FZ)V
    .locals 2

    .line 10455
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$58;->va:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 10456
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 10457
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$58;->va:Landroid/animation/ValueAnimator;

    :cond_0
    if-nez p2, :cond_1

    .line 10460
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setBubbleOffset(F)V

    return-void

    .line 10462
    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bubblesOffset:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$58;->va:Landroid/animation/ValueAnimator;

    .line 10463
    new-instance p2, Lorg/telegram/ui/ChatActivity$58$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatActivity$58$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$58;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10467
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$58;->va:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10468
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$58;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10469
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$58;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    .line 10475
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 10476
    iget-object p2, p1, Lorg/telegram/ui/ChatActivity$58;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p2

    const/16 p3, 0x1c

    .line 10477
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10479
    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$58;->loc:[I

    invoke-virtual {p0, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10480
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p3

    .line 10481
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p4, p3

    .line 10482
    iget-object p5, p1, Lorg/telegram/ui/ChatActivity$58;->loc:[I

    invoke-virtual {p2, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10483
    iget-object p5, p1, Lorg/telegram/ui/ChatActivity$58;->loc:[I

    const/4 v0, 0x0

    aget p5, p5, v0

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    add-float/2addr p5, p2

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    mul-int/2addr p2, v3

    int-to-float p2, p2

    add-float/2addr p5, p2

    if-eqz v1, :cond_1

    sub-float/2addr p5, p3

    .line 10486
    iget-boolean p2, p1, Lorg/telegram/ui/ChatActivity$58;->firstLayout:Z

    xor-int/2addr p2, v2

    invoke-direct {p0, p5, p2}, Lorg/telegram/ui/ChatActivity$58;->updateBubbleOffset(FZ)V

    goto :goto_1

    :cond_1
    sub-float/2addr p5, p4

    .line 10488
    iget-boolean p2, p1, Lorg/telegram/ui/ChatActivity$58;->firstLayout:Z

    xor-int/2addr p2, v2

    invoke-direct {p0, p5, p2}, Lorg/telegram/ui/ChatActivity$58;->updateBubbleOffset(FZ)V

    .line 10490
    :goto_1
    iput-boolean v0, p1, Lorg/telegram/ui/ChatActivity$58;->firstLayout:Z

    :cond_2
    return-void
.end method
