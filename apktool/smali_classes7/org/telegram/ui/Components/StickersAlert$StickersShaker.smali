.class Lorg/telegram/ui/Components/StickersAlert$StickersShaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickersAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickersShaker"
.end annotation


# instance fields
.field private final imageRotations:Ljava/util/List;

.field private final imageTranslationsX:Ljava/util/List;

.field private final imageTranslationsY:Ljava/util/List;

.field private final rotateAnimators:Ljava/util/List;

.field private final translateXAnimators:Ljava/util/List;

.field private final translateYAnimators:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$9tYwbcuiJ52iBZiSlhWMeiFVrt8(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$startShake$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StVARy4ptJIdL5cuTk6aY9--zg4(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$stopShake$3(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TvY_Qfy3QspjBbGVoUC_6KktSYk(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$stopShake$4(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VXEPgoTNcOl4jWnxsYEwq2_jwPg(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$startShake$2(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YjuUygLZQqfEZmhLxpLoNyOBsGg(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$startShake$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajE9YMYDBz7ghTGaXVZl8evgsqI(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->lambda$stopShake$5(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    .line 2601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    .line 2602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    .line 2604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    .line 2605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    .line 2606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;-><init>()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 2611
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2609
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 2611
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2612
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2613
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private synthetic lambda$startShake$0(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2645
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$startShake$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2657
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$startShake$2(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2668
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$stopShake$3(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2690
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$stopShake$4(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2703
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$stopShake$5(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 2716
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRotationValueForPos(I)F
    .locals 1

    .line 2618
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2619
    :cond_0
    div-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    .line 2620
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getTranslateXValueForPos(I)F
    .locals 1

    .line 2624
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2625
    :cond_0
    div-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    .line 2626
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getTranslateYValueForPos(I)F
    .locals 1

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2631
    :cond_0
    div-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    .line 2632
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public startShake()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2636
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->stopShake(Z)V

    .line 2637
    invoke-direct {v0}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->init()V

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 2641
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/16 v4, 0x12c

    int-to-float v5, v4

    mul-float/2addr v3, v5

    float-to-long v5, v3

    const/4 v3, 0x5

    .line 2643
    new-array v7, v3, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 2644
    new-instance v8, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0, v2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v8, -0x1

    .line 2647
    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v9, 0x1

    .line 2648
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2649
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2650
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    int-to-long v10, v4

    .line 2651
    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2652
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    const/high16 v12, 0x3f000000    # 0.5f

    .line 2654
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    neg-float v13, v12

    .line 2655
    new-array v3, v3, [F

    const/4 v14, 0x0

    aput v14, v3, v1

    aput v12, v3, v9

    const/4 v15, 0x2

    aput v14, v3, v15

    const/16 v16, 0x3

    aput v13, v3, v16

    const/4 v13, 0x4

    aput v14, v3, v13

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move/from16 v17, v1

    .line 2656
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2659
    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2660
    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2661
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2662
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    move v1, v14

    move/from16 v18, v15

    int-to-double v14, v4

    const-wide v19, 0x3ff3333333333333L    # 1.2

    mul-double v14, v14, v19

    double-to-long v14, v14

    .line 2663
    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2664
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    sub-float v14, v1, v12

    .line 2666
    new-array v4, v13, [F

    aput v1, v4, v17

    aput v12, v4, v9

    aput v14, v4, v18

    aput v1, v4, v16

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2667
    new-instance v4, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2670
    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2671
    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2672
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2673
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 2674
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2675
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2677
    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2678
    iget-object v4, v0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2679
    iget-object v3, v0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        0x0
    .end array-data
.end method

.method public stopShake(Z)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 2684
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v5, 0x64

    const/4 v7, 0x0

    if-ge v1, v2, :cond_1

    .line 2686
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_0

    .line 2688
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageRotations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-array v3, v3, [F

    aput v2, v3, v0

    aput v7, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2689
    new-instance v3, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2692
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2693
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2697
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2699
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_2

    .line 2701
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsX:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-array v8, v3, [F

    aput v2, v8, v0

    aput v7, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2702
    new-instance v8, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2705
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2706
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 2710
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2712
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz p1, :cond_4

    .line 2714
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->imageTranslationsY:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    new-array v8, v3, [F

    aput v2, v8, v0

    aput v7, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2715
    new-instance v8, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/Components/StickersAlert$StickersShaker$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StickersAlert$StickersShaker;I)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2718
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2719
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2723
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateYAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2724
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->translateXAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2725
    iget-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$StickersShaker;->rotateAnimators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
