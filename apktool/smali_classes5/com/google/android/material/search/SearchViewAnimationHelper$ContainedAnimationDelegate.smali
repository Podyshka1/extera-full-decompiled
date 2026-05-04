.class Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchViewAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainedAnimationDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method public static synthetic $r8$lambda$6URjXNR7jTuHw2NNxIDGHhwZUSU(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 1098
    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hqbvop16BkV8NlN9PzC9mY8yPMk(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;ZLandroidx/appcompat/widget/Toolbar;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 1219
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->setWidth(Landroid/view/View;I)V

    return-void

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$lORhqfiXmNX9A8IrgvQNrlF8-RM(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1050
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 1050
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2400(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$q6M_sf_zgyraq6wKlJrDRN0UWVQ(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1078
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 1078
    invoke-static {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Lcom/google/android/material/search/SearchViewAnimationHelper$1;)V
    .locals 0

    .line 947
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;Landroid/view/View;I)V
    .locals 0

    .line 947
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method private getAlphaValueAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 1083
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1

    :cond_0
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getBackgroundAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 1044
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getAlphaValueAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2500(Lcom/google/android/material/search/SearchViewAnimationHelper;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2600(Lcom/google/android/material/search/SearchViewAnimationHelper;)I

    move-result v1

    int-to-long v1, v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p1, :cond_1

    .line 1048
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2700(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 1047
    :goto_1
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1049
    new-instance p1, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getContentAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 1059
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getAlphaValueAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1060
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2500(Lcom/google/android/material/search/SearchViewAnimationHelper;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2600(Lcom/google/android/material/search/SearchViewAnimationHelper;)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p1, :cond_1

    .line 1063
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2700(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 1062
    :goto_1
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1064
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getDummyTextTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getTextTranslationXSpringAnimation(ZLandroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getDummyTextViewWidthAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 1091
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    .line 1092
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 1093
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1094
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2500(Lcom/google/android/material/search/SearchViewAnimationHelper;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 1096
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2700(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 1095
    :goto_2
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1097
    new-instance p1, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getDummyToolbarTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarTranslationXSpringAnimation(ZLandroidx/appcompat/widget/Toolbar;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getDummyToolbarWidthSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarWidthSpringAnimation(ZLandroidx/appcompat/widget/Toolbar;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getEditTextTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getTextTranslationXSpringAnimation(ZLandroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getEndSiblingView(Lcom/google/android/material/appbar/AppBarLayout;)Landroid/view/View;
    .locals 2

    .line 1158
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getEndSiblingViewId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarActionMenuView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getSearchBarSiblingsTranslationAnimator(Z)Landroid/animation/Animator;
    .locals 10

    .line 1114
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1115
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getAppBarLayoutParentIfExists()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    .line 1116
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1120
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getStartSiblingView(Lcom/google/android/material/appbar/AppBarLayout;)Landroid/view/View;

    move-result-object v2

    .line 1121
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getEndSiblingView(Lcom/google/android/material/appbar/AppBarLayout;)Landroid/view/View;

    move-result-object v3

    .line 1123
    iget-object v4, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v4}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    .line 1124
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 1127
    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v4, :cond_1

    .line 1129
    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v8, v5, v8

    :goto_0
    int-to-float v8, v8

    goto :goto_1

    :cond_1
    iget v8, v8, Landroid/graphics/Rect;->right:I

    neg-int v8, v8

    goto :goto_0

    .line 1131
    :goto_1
    invoke-direct {p0, v2, p1, v8}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSiblingTranslationAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object v8

    new-array v9, v7, [Landroid/animation/Animator;

    aput-object v8, v9, v6

    .line 1130
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1132
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSiblingAlphaAnimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v2

    new-array v8, v7, [Landroid/animation/Animator;

    aput-object v2, v8, v6

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    if-eqz v3, :cond_4

    .line 1135
    invoke-static {v1, v3}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v4, :cond_3

    .line 1137
    iget v1, v1, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_2

    :cond_3
    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    .line 1139
    :goto_2
    invoke-direct {p0, v3, p1, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSiblingTranslationAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object v1

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    .line 1138
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1140
    invoke-direct {p0, v3, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSiblingAlphaAnimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    new-array v1, v7, [Landroid/animation/Animator;

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1143
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2500(Lcom/google/android/material/search/SearchViewAnimationHelper;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1144
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_5
    :goto_3
    return-object v0
.end method

.method private getSiblingAlphaAnimator(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 1202
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getAlphaValueAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1203
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private getSiblingTranslationAnimator(Landroid/view/View;ZF)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    const/4 p2, 0x2

    .line 1192
    new-array p2, p2, [F

    const/4 v0, 0x0

    aput v1, p2, v0

    const/4 v1, 0x1

    aput p3, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1193
    new-array p3, v1, [Landroid/view/View;

    aput-object p1, p3, v0

    invoke-static {p3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            "FF)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    .line 1370
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 1371
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 1373
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$3000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$attr;->motionSpringFastSpatial:I

    sget v1, Lcom/google/android/material/R$style;->Motion_Material3_Spring_Standard_Default_Spatial:I

    .line 1372
    invoke-static {p1, p2, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeSpringForce(Landroid/content/Context;II)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 1376
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1377
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1378
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method private getStartSiblingView(Lcom/google/android/material/appbar/AppBarLayout;)Landroid/view/View;
    .locals 2

    .line 1150
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getStartSiblingViewId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1153
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarNavigationIconButton()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getTextTranslationXSpringAnimation(ZLandroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 3

    .line 1319
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getPlaceholderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1323
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1326
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1, v0, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2200(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarTranslationX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 1329
    :cond_3
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, p2, p1, v2, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getToolbarActionMenuView()Landroid/view/View;
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1177
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1181
    :cond_0
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    return-object v0
.end method

.method private getToolbarAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 1073
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getAlphaValueAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1074
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2500(Lcom/google/android/material/search/SearchViewAnimationHelper;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 1076
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2700(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 1075
    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1077
    new-instance p1, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getToolbarContainerTranslationYSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 3

    .line 1293
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarTranslationY()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 1296
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 1297
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object p1

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    int-to-float v2, v2

    int-to-float v0, v0

    .line 1296
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getToolbarNavigationIconButton()Landroid/view/View;
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1167
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1171
    :cond_0
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method private getToolbarTranslationX()I
    .locals 3

    .line 1277
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1600(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I

    move-result v0

    .line 1278
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 1279
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1280
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method private getToolbarTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarTranslationXSpringAnimation(ZLandroidx/appcompat/widget/Toolbar;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getToolbarTranslationXSpringAnimation(ZLandroidx/appcompat/widget/Toolbar;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 3

    .line 1252
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarTranslationX()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 1255
    :cond_1
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    int-to-float v1, v2

    int-to-float v0, v0

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getToolbarTranslationY()I
    .locals 3

    .line 1335
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2100(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I

    move-result v0

    .line 1336
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2100(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getToolbarWidth()I
    .locals 4

    .line 1243
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1244
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 1245
    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 1246
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1247
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v3, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    return v0
.end method

.method private getToolbarWidthSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarWidthSpringAnimation(ZLandroidx/appcompat/widget/Toolbar;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    return-object p1
.end method

.method private getToolbarWidthSpringAnimation(ZLandroidx/appcompat/widget/Toolbar;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 3

    .line 1208
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1209
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarWidth()I

    move-result v1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 1213
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getWidthViewProperty()Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    move-result-object v1

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSpringAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 1214
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;ZLandroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object v0
.end method

.method private getWidthViewProperty()Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;"
        }
    .end annotation

    .line 1353
    new-instance v0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$1;

    const-string v1, "width"

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate$1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;Ljava/lang/String;)V

    return-object v0
.end method

.method private setUpDummyTextViewIfNeeded()V
    .locals 3

    .line 972
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setWidth(Landroid/view/View;I)V
    .locals 1

    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1343
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1344
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 8

    .line 981
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 983
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getBackgroundAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 984
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getContentAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    .line 985
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v3

    .line 986
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getDummyTextViewWidthAnimator(Z)Landroid/animation/Animator;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 987
    invoke-static {v5, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$800(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)Landroid/animation/Animator;

    move-result-object v5

    .line 988
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getSearchBarSiblingsTranslationAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object p1, v6, v1

    .line 982
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public getExpandCollapseSpringAnimations(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation

    .line 996
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarWidthSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 997
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    .line 998
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getDummyToolbarWidthSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    .line 999
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getDummyToolbarTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    .line 1000
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getToolbarContainerTranslationYSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    .line 1001
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getEditTextTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v5

    .line 1002
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->getDummyTextTranslationXSpringAnimation(Z)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    const/4 v6, 0x7

    new-array v6, v6, [Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    const/4 v0, 0x6

    aput-object p1, v6, v0

    .line 995
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onAnimationEnd(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1022
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2400(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    .line 1023
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1025
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2400(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    .line 1026
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1027
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1008
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2400(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    .line 1009
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1010
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1011
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1013
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2400(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    .line 1014
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1016
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setUpDummyToolbarIfNeeded()V
    .locals 2

    .line 950
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->setUpDummyTextViewIfNeeded()V

    .line 954
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 955
    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 961
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 967
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$ContainedAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$700(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroidx/appcompat/widget/Toolbar;)V

    :cond_2
    return-void
.end method

.method public startButtonsTranslationAnimation()V
    .locals 0

    return-void
.end method
