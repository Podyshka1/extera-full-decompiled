.class public abstract Lorg/telegram/ui/PhotoViewer$CaptionScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionScrollView"
.end annotation


# instance fields
.field private abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

.field public backgroundAlpha:F

.field private final captionContainer:Landroid/widget/FrameLayout;

.field private final captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

.field public dontChangeTopMargin:Z

.field private isLandscape:Z

.field private nestedScrollStarted:Z

.field private overScrollY:F

.field private final paint:Landroid/graphics/Paint;

.field private pendingTopMargin:I

.field private prevHeight:I

.field private scroller:Landroid/widget/OverScroller;

.field private final springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private textHash:I

.field private velocitySign:F

.field private velocityY:F


# direct methods
.method public static synthetic $r8$lambda$LoLILhah0tSli8nrzbaAlPL8cF8(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->lambda$new$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$bVT0XqInVwy5fNuzYV5H8hPT83M(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;Landroid/widget/FrameLayout;)V
    .locals 4

    .line 3753
    const-class v0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 3729
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3745
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->backgroundAlpha:F

    const/4 v3, -0x1

    .line 3747
    iput v3, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->pendingTopMargin:I

    .line 3754
    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    .line 3755
    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionContainer:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    .line 3757
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v3, 0x2

    .line 3758
    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    const/high16 v3, -0x1000000

    .line 3760
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 3761
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 3762
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 3763
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3765
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v3, 0x0

    invoke-direct {p1, p2, p3, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 3766
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 p3, 0x42c80000    # 100.0f

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3767
    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3768
    new-instance p2, Lorg/telegram/ui/PhotoViewer$CaptionScrollView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3773
    new-instance p2, Lorg/telegram/ui/PhotoViewer$CaptionScrollView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$CaptionScrollView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3776
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p1, 0x0

    .line 3779
    :try_start_0
    const-string p2, "abortAnimatedScroll"

    invoke-virtual {v0, p2, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 3780
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3782
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    .line 3783
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3787
    :goto_0
    :try_start_1
    const-string p2, "mScroller"

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 3788
    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 3789
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/OverScroller;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->scroller:Landroid/widget/OverScroller;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 3791
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->scroller:Landroid/widget/OverScroller;

    .line 3792
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 3769
    iput p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    .line 3770
    iput p3, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->velocityY:F

    .line 3771
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->onScrollUpdate()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 3774
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->onScrollEnd()V

    return-void
.end method

.method private startSpringAnimationIfNotRunning(F)V
    .locals 1

    .line 3977
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3978
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 3979
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_0
    return-void
.end method

.method private updateTopMargin(II)V
    .locals 0

    .line 3832
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->calculateNewContainerMarginTop(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 3834
    iget-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->dontChangeTopMargin:Z

    if-eqz p2, :cond_0

    .line 3835
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->pendingTopMargin:I

    return-void

    .line 3837
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, -0x1

    .line 3838
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->pendingTopMargin:I

    :cond_1
    return-void
.end method


# virtual methods
.method public applyPendingTopMargin()V
    .locals 2

    const/4 v0, 0x0

    .line 3811
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->dontChangeTopMargin:Z

    .line 3812
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->pendingTopMargin:I

    if-ltz v0, :cond_0

    .line 3813
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->pendingTopMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v0, -0x1

    .line 3814
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->pendingTopMargin:I

    .line 3815
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public calculateNewContainerMarginTop(II)I
    .locals 7

    const/4 v0, -0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 3848
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TextViewSwitcher;->getCurrentView()Landroid/widget/TextView;

    move-result-object v1

    .line 3849
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3851
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 3852
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v6, 0x1

    if-le v5, v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 3854
    :goto_0
    iget v5, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->textHash:I

    if-ne v5, v3, :cond_2

    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->isLandscape:Z

    if-ne v5, v4, :cond_2

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->prevHeight:I

    if-ne v5, p2, :cond_2

    return v0

    .line 3858
    :cond_2
    iput v3, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->textHash:I

    .line 3859
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->isLandscape:Z

    .line 3860
    iput p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->prevHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 3862
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 3864
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 3865
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v3, 0x2

    if-eqz v4, :cond_3

    if-le v0, v3, :cond_4

    :cond_3
    const/4 v5, 0x5

    if-nez v4, :cond_5

    if-gt v0, v5, :cond_5

    .line 3868
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    :goto_1
    sub-int/2addr p2, p1

    return p2

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v5

    .line 3871
    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3
    if-le v0, v6, :cond_9

    add-int/lit8 v3, v0, -0x1

    .line 3875
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    :goto_4
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 3876
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3883
    :cond_9
    :goto_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    mul-int/2addr p1, v0

    sub-int/2addr p2, p1

    const/high16 p1, 0x41000000    # 8.0f

    .line 3884
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_1

    :cond_a
    :goto_6
    return v0
.end method

.method public computeScroll()V
    .locals 2

    .line 3996
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->computeScroll()V

    .line 3997
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->nestedScrollStarted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3998
    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->startSpringAnimationIfNotRunning(F)V

    .line 4000
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->onScrollUpdate()V

    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 3

    const/4 p1, 0x1

    const/4 p4, 0x0

    .line 3910
    aput p4, p3, p1

    .line 3912
    iget-boolean p5, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->nestedScrollStarted:Z

    if-eqz p5, :cond_5

    iget p5, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-lez v1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    cmpg-float v1, p5, v0

    if-gez v1, :cond_5

    if-gez p2, :cond_5

    :cond_1
    int-to-float v1, p2

    sub-float v2, p5, v1

    cmpl-float p5, p5, v0

    if-lez p5, :cond_3

    cmpg-float p5, v2, v0

    if-gez p5, :cond_2

    .line 3917
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    int-to-float p2, p4

    add-float/2addr v1, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 3918
    aput p2, p3, p1

    goto :goto_0

    .line 3920
    :cond_2
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    .line 3921
    aput p2, p3, p1

    goto :goto_0

    :cond_3
    cmpl-float p5, v2, v0

    if-lez p5, :cond_4

    .line 3925
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    int-to-float p2, p4

    add-float/2addr v1, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 3926
    aput p2, p3, p1

    goto :goto_0

    .line 3928
    :cond_4
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    .line 3929
    aput p2, p3, p1

    .line 3932
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->onScrollUpdate()V

    .line 3934
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    iget p3, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setTranslationY(F)V

    return p1

    :cond_5
    return p4
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 0

    if-eqz p4, :cond_7

    .line 3944
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->isStatusBarVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p2, p4

    .line 3945
    iget p3, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    neg-float p3, p3

    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p4, p1

    int-to-float p1, p4

    div-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p1

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_6

    .line 3948
    iget-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->nestedScrollStarted:Z

    if-nez p2, :cond_5

    .line 3949
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p2

    if-nez p2, :cond_6

    .line 3951
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->scroller:Landroid/widget/OverScroller;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 3952
    :goto_1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_3

    .line 3953
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    if-le p4, p3, :cond_2

    const p3, 0x453b8000    # 3000.0f

    goto :goto_2

    :cond_2
    const p3, 0x459c4000    # 5000.0f

    :goto_2
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    int-to-float p1, p1

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 3955
    iget p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->velocitySign:F

    neg-float p2, p2

    mul-float/2addr p3, p2

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    if-eqz p1, :cond_4

    .line 3961
    iget p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    .line 3962
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setTranslationY(F)V

    .line 3964
    :cond_4
    invoke-direct {p0, p3}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->startSpringAnimationIfNotRunning(F)V

    goto :goto_4

    .line 3967
    :cond_5
    iget p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    .line 3968
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setTranslationY(F)V

    .line 3972
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->onScrollUpdate()V

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 4030
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4031
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4032
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 4034
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    add-int/2addr v1, v2

    const/4 v4, 0x0

    .line 4035
    invoke-virtual {p1, v4, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4037
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->backgroundAlpha:F

    const/high16 v5, 0x42fe0000    # 127.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4038
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float v7, v2, v4

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4040
    invoke-super {p0, v5}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 4041
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public fling(I)V
    .locals 0

    .line 3903
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    int-to-float p1, p1

    .line 3904
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->velocitySign:F

    const/4 p1, 0x0

    .line 3905
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->velocityY:F

    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPendingMarginTopDiff()I
    .locals 2

    .line 3820
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->pendingTopMargin:I

    if-ltz v0, :cond_0

    .line 3821
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected isStatusBarVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 3806
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->updateTopMargin(II)V

    .line 3807
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollEnd()V
    .locals 0

    return-void
.end method

.method protected onScrollStart()V
    .locals 0

    return-void
.end method

.method protected onScrollUpdate()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3801
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 3888
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    return-void
.end method

.method public startNestedScroll(II)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 3986
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 3987
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->nestedScrollStarted:Z

    .line 3988
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->captionTextViewSwitcher:Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    .line 3989
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->onScrollStart()V

    :cond_0
    return p1
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 4005
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->nestedScrollStarted:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4006
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->nestedScrollStarted:Z

    .line 4007
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->overScrollY:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->scroller:Landroid/widget/OverScroller;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4008
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->velocityY:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->startSpringAnimationIfNotRunning(F)V

    .line 4010
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->onScrollEnd()V

    :cond_1
    return-void
.end method

.method public stopScrolling()V
    .locals 2

    .line 3892
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->abortAnimatedScrollMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3894
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3896
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public updateTopMargin()V
    .locals 2

    .line 3828
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;->updateTopMargin(II)V

    return-void
.end method
