.class Lorg/telegram/ui/Components/ChatActivityEnterView$16;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$KMPxDbZabX4SORuTy592nf4-WaQ(Lorg/telegram/ui/Components/ChatActivityEnterView$16;Landroid/graphics/Canvas;Landroid/view/View;J)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->lambda$drawChild$0(Landroid/graphics/Canvas;Landroid/view/View;J)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 0

    .line 2651
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$drawChild$0(Landroid/graphics/Canvas;Landroid/view/View;J)Ljava/lang/Boolean;
    .locals 0

    .line 2686
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    if-eqz p2, :cond_0

    .line 2685
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-ne p2, v1, :cond_0

    .line 2686
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$16;Landroid/graphics/Canvas;Landroid/view/View;J)V

    invoke-virtual {v0, v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->drawMessageEditText(Landroid/graphics/Canvas;Lorg/telegram/messenger/Utilities$Callback0Return;)Z

    move-result p1

    return p1

    :cond_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    .line 2688
    iget-object p1, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawRecordedAudioPanelInParent:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-ne v5, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 2691
    :cond_1
    invoke-super {p0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2669
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 2670
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimationParamsX(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 2671
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 2672
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 2673
    iget-object p4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimationParamsX(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    if-eqz p4, :cond_0

    .line 2675
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p4, p5

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 2676
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 p4, 0x96

    invoke-virtual {p3, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    sget-object p4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2679
    :cond_1
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimationParamsX(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 2654
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 p1, 0x42400000    # 48.0f

    .line 2655
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2656
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimatorInputFieldHeight(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object p2

    invoke-virtual {p2}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 2657
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimatorInputFieldHeight(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object p2

    invoke-virtual {p2}, Lme/vkryl/android/animator/FactorAnimator;->getToFactor()F

    move-result p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    .line 2658
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 2659
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimatorInputFieldHeight(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Lme/vkryl/android/animator/FactorAnimator;->animateTo(F)V

    goto :goto_0

    .line 2662
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetanimatorInputFieldHeight(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lme/vkryl/android/animator/FactorAnimator;->forceFactor(F)V

    .line 2664
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mcheckUi_TopViewVisibility(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return-void
.end method
