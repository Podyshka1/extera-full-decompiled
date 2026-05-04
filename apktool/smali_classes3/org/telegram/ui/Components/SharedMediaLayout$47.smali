.class Lorg/telegram/ui/Components/SharedMediaLayout$47;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->updateTabs(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 6751
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$47;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    .line 6754
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6755
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p4, 0x2

    new-array v0, p4, [F

    fill-array-data v0, :array_0

    .line 6756
    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, p4, [F

    fill-array-data v1, :array_1

    .line 6757
    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, p4, [F

    fill-array-data v2, :array_2

    .line 6758
    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object v0, v1, p3

    aput-object p2, v1, p4

    .line 6755
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6760
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    .line 6766
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6767
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 6768
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

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 6769
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v3

    new-array v4, v0, [F

    aput v3, v4, v2

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v4, p4

    invoke-static {p2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 6770
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v5

    new-array v6, v0, [F

    aput v5, v6, v2

    aput v3, v6, p4

    invoke-static {p2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p3, v3, v2

    aput-object v1, v3, p4

    aput-object p2, v3, v0

    .line 6767
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6772
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method
