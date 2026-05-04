.class Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$1;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/voip/VoIPBackgroundProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$1;->this$0:Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    .line 66
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p3, 0x0

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    const p3, 0x3f19999a    # 0.6f

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 70
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p4, 0x2

    new-array v0, p4, [F

    fill-array-data v0, :array_0

    .line 71
    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, p4, [F

    fill-array-data v1, :array_1

    .line 72
    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, p4, [F

    fill-array-data v2, :array_2

    .line 73
    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object v0, v1, p3

    aput-object p2, v1, p4

    .line 70
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    .line 81
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 82
    instance-of p3, p2, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 83
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;

    iput-boolean p4, p3, Lorg/telegram/ui/Components/voip/VoIPNotificationsLayout$NotificationView;->ignoreShader:Z

    .line 85
    :cond_0
    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 86
    invoke-static {p2, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    .line 87
    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    .line 88
    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    aput-object v1, v2, p4

    aput-object p2, v2, v0

    .line 85
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 90
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method
