.class Lorg/telegram/ui/VoIPFragment$23;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->updateButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 2609
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$23;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .line 2612
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 p3, 0x42c80000    # 100.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p4, v1, v2

    const/4 p4, 0x1

    const/4 v3, 0x0

    aput v3, v1, p4

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 2613
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2614
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v5, 0x3

    .line 2615
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v5, v2

    aput-object v1, v5, p4

    aput-object v4, v5, v0

    invoke-static {p2, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2616
    instance-of p4, p2, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    if-eqz p4, :cond_0

    .line 2617
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 2618
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2619
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 2620
    move-object p4, p2

    check-cast p4, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    iget p4, p4, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animationDelay:I

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 2622
    :cond_0
    instance-of p4, p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    if-eqz p4, :cond_1

    .line 2623
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 2624
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2625
    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 2626
    check-cast p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;

    iget p2, p2, Lorg/telegram/ui/Components/voip/VoIpSwitchLayout;->animationDelay:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_1
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .line 2633
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p3

    const/high16 p4, 0x42c80000    # 100.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p4, v1, p3

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 2634
    sget-object p4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v1

    new-array v3, v0, [F

    aput v1, v3, v2

    const/4 v1, 0x0

    aput v1, v3, p3

    invoke-static {p4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 2635
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v4

    new-array v5, v0, [F

    aput v4, v5, v2

    aput v1, v5, p3

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x3

    .line 2636
    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v3, v2

    aput-object p4, v3, p3

    aput-object v1, v3, v0

    invoke-static {p2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method
