.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onBoostSuccess()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5

    .line 801
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 802
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p4, 0x2

    new-array v0, p4, [F

    fill-array-data v0, :array_0

    .line 803
    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 804
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    new-array v2, p4, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    const/4 v4, 0x0

    aput v4, v2, v1

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-array p4, p4, [Landroid/animation/Animator;

    aput-object p3, p4, v3

    aput-object p2, p4, v1

    .line 802
    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 806
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .line 812
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 813
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 814
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p4

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p4, v1, v2

    const/4 p4, 0x1

    const/4 v3, 0x0

    aput v3, v1, p4

    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v4, 0x41a00000    # 20.0f

    .line 815
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    new-array v5, v0, [F

    aput v3, v5, v2

    aput v4, v5, p4

    invoke-static {p2, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p3, v0, v2

    aput-object p2, v0, p4

    .line 813
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 817
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method
