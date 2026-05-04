.class public Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Layout$Transition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin$Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpringTransition"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$PHmnhKumdkiFxUnowk2C5oLOEDw(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l75tbtgbX7e0-wzIDlEvtqUbJ8Y(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p2, 0x0

    .line 1126
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/Bulletin$Layout;->-$$Nest$msetInOutOffset(Lorg/telegram/ui/Components/Bulletin$Layout;F)V

    if-nez p3, :cond_0

    .line 1128
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$rSAb8tEiJp0HQ6S06SDw6bq0Jh0(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p2, :cond_0

    .line 1149
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$s8_54houU3UvhgMxgOp0ZQLdKw8(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateEnter(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroidx/core/util/Consumer;I)V
    .locals 2

    .line 1117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-static {p1, p5}, Lorg/telegram/ui/Components/Bulletin$Layout;->-$$Nest$msetInOutOffset(Lorg/telegram/ui/Components/Bulletin$Layout;F)V

    if-eqz p4, :cond_0

    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-interface {p4, p5}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 1121
    :cond_0
    new-instance p5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v1, 0x0

    invoke-direct {p5, p1, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 1122
    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1123
    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p3, :cond_1

    .line 1125
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p3}, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;)V

    invoke-virtual {p5, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_1
    if-eqz p4, :cond_2

    .line 1133
    new-instance p3, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda3;

    invoke-direct {p3, p4, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda3;-><init>(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    invoke-virtual {p5, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1135
    :cond_2
    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p2, :cond_3

    .line 1137
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public animateExit(Lorg/telegram/ui/Components/Bulletin$Layout;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroidx/core/util/Consumer;I)V
    .locals 2

    .line 1143
    new-instance p5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lorg/telegram/ui/Components/Bulletin$Layout;->IN_OUT_OFFSET_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p5, p1, v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 1144
    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1145
    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz p3, :cond_0

    .line 1147
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p5, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_0
    if-eqz p4, :cond_1

    .line 1154
    new-instance p3, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda1;

    invoke-direct {p3, p4, p1}, Lorg/telegram/ui/Components/Bulletin$Layout$SpringTransition$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;Lorg/telegram/ui/Components/Bulletin$Layout;)V

    invoke-virtual {p5, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1156
    :cond_1
    invoke-virtual {p5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    if-eqz p2, :cond_2

    .line 1158
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
