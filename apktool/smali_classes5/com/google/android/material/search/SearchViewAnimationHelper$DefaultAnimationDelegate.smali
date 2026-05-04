.class Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;
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
    name = "DefaultAnimationDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method public static synthetic $r8$lambda$Xh4NQlxIA9zmse1qsLizeWusSbs(Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 801
    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 802
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$mm9Vl7gBm_L8DAbth-XBLxaIDrw(Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 787
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qIGmc5_uOjMwP8RsayWx6fvxohk(Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;F[FLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    .line 693
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->lerpCornerRadii(F[FF)[F

    move-result-object p1

    .line 695
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadii(Landroid/graphics/Rect;[F)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Lcom/google/android/material/search/SearchViewAnimationHelper$1;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    return-void
.end method

.method private addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 8

    .line 927
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 931
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    .line 933
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 935
    invoke-static {v2, v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2200(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 934
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 936
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    .line 937
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    .line 936
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 939
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getFromTranslationY()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v2, [F

    aput v6, v7, v4

    aput v5, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 940
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    .line 941
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    .line 940
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 943
    new-array v0, v2, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 8

    .line 907
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    .line 913
    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 915
    invoke-static {v2, v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2200(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 914
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 916
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    .line 917
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v6

    .line 916
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 919
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getFromTranslationY()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v2, [F

    aput v6, v7, v4

    aput v5, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 920
    new-array v6, v1, [Landroid/view/View;

    aput-object v0, v6, v4

    .line 921
    invoke-static {v6}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v0

    .line 920
    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 923
    new-array v0, v2, [Landroid/animation/Animator;

    aput-object v3, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private addEditTextClipAnimator(Landroid/animation/AnimatorSet;)V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 782
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 783
    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 784
    new-instance v2, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x1

    .line 789
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addTextFadeAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 798
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 799
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x1

    .line 804
    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    .line 741
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 742
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 743
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 744
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 743
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 747
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 748
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    .line 749
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    .line 750
    new-instance v2, Lcom/google/android/material/internal/FadeThroughUpdateListener;

    invoke-direct {v2, p1, v1}, Lcom/google/android/material/internal/FadeThroughUpdateListener;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 896
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 897
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->addBackButtonTranslationAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 898
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->addActionMenuViewAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 899
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 900
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 901
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 900
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getContentAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4

    const/4 v0, 0x2

    .line 828
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x53

    .line 829
    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x4b

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 831
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 833
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 834
    invoke-static {p1, v2}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 833
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 835
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 836
    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object v2

    new-array v0, v0, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object v2, v0, p1

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    .line 835
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getContentAnimator(Z)Landroid/animation/Animator;
    .locals 5

    .line 821
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 823
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getContentAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getDividerAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getContentScaleAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    .line 822
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getContentScaleAnimator(Z)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    .line 855
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 856
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 858
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 859
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 858
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 861
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->scaleListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDividerAnimator(Z)Landroid/animation/Animator;
    .locals 5

    .line 841
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 842
    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1900(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/TouchObserverFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x2

    .line 844
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0xfa

    .line 845
    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 847
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 848
    invoke-static {p1, v3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 847
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 850
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1800(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/view/View;

    move-result-object p1

    new-array v0, v0, [Landroid/view/View;

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method private getDummyToolbarAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 732
    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getFromTranslationY()I

    move-result v2

    .line 731
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getEditTextAnimator(Z)Landroid/animation/Animator;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getTranslationAnimatorForText(ZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getFromTranslationXEnd(Landroid/view/View;)I
    .locals 2

    .line 882
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    .line 883
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1600(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I

    move-result v0

    .line 884
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    return v0

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getFromTranslationY()I
    .locals 3

    .line 890
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 891
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$2100(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method private getHeaderContainerAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 737
    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getFromTranslationXEnd(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getFromTranslationY()I

    move-result v2

    .line 736
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getRootViewAnimator(Z)Landroid/animation/Animator;
    .locals 8

    .line 672
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getInitialHideToClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getInitialHideFromClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 682
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 684
    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v3}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v3

    .line 685
    iget-object v4, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 686
    invoke-static {v4}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getCornerRadii()[F

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v5}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->getExpandedCornerRadii()[F

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->maxCornerRadii([F[F)[F

    move-result-object v4

    .line 688
    new-instance v5, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v5, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 689
    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 690
    new-instance v1, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;F[FLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x12c

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0xfa

    .line 697
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 698
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 699
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 698
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getScrimAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4

    if-eqz p1, :cond_0

    .line 661
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    const/4 v1, 0x2

    .line 663
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0xfa

    .line 664
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x64

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    .line 665
    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 666
    invoke-static {p1, v0}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 667
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1200(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSearchPrefixAnimator(Z)Landroid/animation/Animator;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getTranslationAnimatorForText(ZLandroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private getTextAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 3

    .line 766
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 767
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->addTextFadeAnimatorIfNeeded(Landroid/animation/AnimatorSet;)V

    .line 768
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->addEditTextClipAnimator(Landroid/animation/AnimatorSet;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    .line 769
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 770
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 771
    invoke-static {p1, v1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 770
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;
    .locals 5

    int-to-float p3, p3

    const/4 v0, 0x2

    .line 866
    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    const/4 v3, 0x0

    aput v3, v1, p3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 867
    new-array v4, p3, [Landroid/view/View;

    aput-object p2, v4, v2

    invoke-static {v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-float p4, p4

    .line 869
    new-array v4, v0, [F

    aput p4, v4, v2

    aput v3, v4, p3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 870
    new-array v3, p3, [Landroid/view/View;

    aput-object p2, v3, v2

    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 872
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 873
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v2

    aput-object p4, v0, p3

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    const-wide/16 p3, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0xfa

    .line 874
    :goto_0
    invoke-virtual {p2, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 875
    sget-object p3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 876
    invoke-static {p1, p3}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 875
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method private getTranslationAnimatorForText(ZLandroid/view/View;)Landroid/animation/Animator;
    .locals 3

    .line 808
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getPlaceholderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 815
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 816
    invoke-static {v1, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1600(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1700(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 817
    invoke-direct {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getFromTranslationY()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getTranslationAnimator(ZLandroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private lerpCornerRadii(F[FF)[F
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 718
    aget v3, p2, v2

    .line 719
    invoke-static {v0, v3, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v3

    const/4 v4, 0x1

    aget v5, p2, v4

    .line 720
    invoke-static {v0, v5, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v5

    const/4 v6, 0x2

    aget v7, p2, v6

    .line 721
    invoke-static {v0, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v7

    const/4 v8, 0x3

    aget v9, p2, v8

    .line 722
    invoke-static {v0, v9, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v9

    const/4 v10, 0x4

    aget v11, p2, v10

    .line 723
    invoke-static {v0, v11, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v11

    const/4 v12, 0x5

    aget v13, p2, v12

    .line 724
    invoke-static {v0, v13, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v13

    const/4 v14, 0x6

    aget v15, p2, v14

    .line 725
    invoke-static {v0, v15, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v15

    const/16 v16, 0x7

    move/from16 v17, v2

    aget v2, p2, v16

    .line 726
    invoke-static {v0, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v3, v1, v17

    aput v5, v1, v4

    aput v7, v1, v6

    aput v9, v1, v8

    aput v11, v1, v10

    aput v13, v1, v12

    aput v15, v1, v14

    aput v0, v1, v16

    return-object v1
.end method

.method private maxCornerRadii([F[F)[F
    .locals 17

    const/4 v0, 0x0

    .line 705
    aget v1, p1, v0

    aget v2, p2, v0

    .line 706
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x1

    aget v3, p1, v2

    aget v4, p2, v2

    .line 707
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x2

    aget v5, p1, v4

    aget v6, p2, v4

    .line 708
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/4 v6, 0x3

    aget v7, p1, v6

    aget v8, p2, v6

    .line 709
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/4 v8, 0x4

    aget v9, p1, v8

    aget v10, p2, v8

    .line 710
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/4 v10, 0x5

    aget v11, p1, v10

    aget v12, p2, v10

    .line 711
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v12, 0x6

    aget v13, p1, v12

    aget v14, p2, v12

    .line 712
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v14, 0x7

    aget v15, p1, v14

    move/from16 v16, v0

    aget v0, p2, v14

    .line 713
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/16 v15, 0x8

    new-array v15, v15, [F

    aput v1, v15, v16

    aput v3, v15, v2

    aput v5, v15, v4

    aput v7, v15, v6

    aput v9, v15, v8

    aput v11, v15, v10

    aput v13, v15, v12

    aput v0, v15, v14

    return-object v15
.end method


# virtual methods
.method public getExpandCollapseAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 12

    .line 605
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 607
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getScrimAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 608
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getRootViewAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    .line 609
    invoke-static {v3, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$800(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)Landroid/animation/Animator;

    move-result-object v3

    .line 610
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getContentAnimator(Z)Landroid/animation/Animator;

    move-result-object v4

    .line 611
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getHeaderContainerAnimator(Z)Landroid/animation/Animator;

    move-result-object v5

    .line 612
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getDummyToolbarAnimator(Z)Landroid/animation/Animator;

    move-result-object v6

    .line 613
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getActionMenuViewsAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v7

    .line 614
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getEditTextAnimator(Z)Landroid/animation/Animator;

    move-result-object v8

    .line 615
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getSearchPrefixAnimator(Z)Landroid/animation/Animator;

    move-result-object v9

    .line 616
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getTextAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    const/16 v10, 0xa

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v1, 0x1

    aput-object v2, v10, v1

    const/4 v1, 0x2

    aput-object v3, v10, v1

    const/4 v1, 0x3

    aput-object v4, v10, v1

    const/4 v1, 0x4

    aput-object v5, v10, v1

    const/4 v1, 0x5

    aput-object v6, v10, v1

    const/4 v1, 0x6

    aput-object v7, v10, v1

    const/4 v1, 0x7

    aput-object v8, v10, v1

    const/16 v1, 0x8

    aput-object v9, v10, v1

    const/16 v1, 0x9

    aput-object p1, v10, v1

    .line 606
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public getExpandCollapseSpringAnimations(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation

    .line 623
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public onAnimationEnd(Z)V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$900(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    .line 636
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 637
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1000(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 645
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->resetClipBoundsAndCornerRadii()V

    if-nez p1, :cond_2

    .line 650
    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$1100(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/motion/MaterialMainContainerBackHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->clearExpandedCornerRadii()V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$900(Lcom/google/android/material/search/SearchViewAnimationHelper;F)V

    return-void
.end method

.method public setUpDummyToolbarIfNeeded()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isMenuItemsAnimated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$600(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/search/SearchBar;->getMenuResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 595
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$700(Lcom/google/android/material/search/SearchViewAnimationHelper;Landroidx/appcompat/widget/Toolbar;)V

    .line 596
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$500(Lcom/google/android/material/search/SearchViewAnimationHelper;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startButtonsTranslationAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchViewAnimationHelper$DefaultAnimationDelegate;->getButtonsTranslationAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
