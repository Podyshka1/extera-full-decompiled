.class Lorg/telegram/ui/ChatActivity$21;
.super Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final drawCaptionAfter:Ljava/util/ArrayList;

.field private final drawNamesAfter:Ljava/util/ArrayList;

.field private final drawReactionsAfter:Ljava/util/ArrayList;

.field private final drawTimeAfter:Ljava/util/ArrayList;

.field private final drawingGroups:Ljava/util/ArrayList;

.field private endTrackingX:F

.field private ignoreLayout:Z

.field private invalidated:Z

.field lastH:I

.field private lastTrackingAnimationTime:J

.field private lastWidth:I

.field private final outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

.field private final outlineActionBackgroundPaint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private slidingBeyondMax:Z

.field private final slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private final slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final springMultiplier:F

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private trackAnimationProgress:F

.field private wasTrackingVibrate:Z


# direct methods
.method public static synthetic $r8$lambda$2uD-W_Q83ksTCoqideJaKVHerIw(Lorg/telegram/ui/ChatActivity$21;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$21;->lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$85e1SBMNQAIOfp-vJEAjxOm06t8(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sd981fRnHg1i2AsqiQxR7pQhVJI(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YHv5Tdfo1gOUxBSocBNl2sWqOiI(Lorg/telegram/ui/ChatActivity$21;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$21;->lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$amdbjqgjiIYqx9nXrg7kG5txIFw(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fe1jbS0kDL0ZMBNWa_RUI5GmiSQ(Lorg/telegram/ui/ChatActivity$21;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$21;->lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$h0SBPkVaCesTkrDAI4L0WeymY2k(Lorg/telegram/ui/ChatActivity$21;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$hFS9HjRVYw8JzuZmRfX5jbLwleQ(Lorg/telegram/ui/ChatActivity$21;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 4

    .line 4819
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    .line 4822
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    .line 4823
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    .line 4824
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    .line 4825
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawReactionsAfter:Ljava/util/ArrayList;

    .line 4826
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    const/high16 p1, 0x44fa0000    # 2000.0f

    .line 4836
    iput p1, p0, Lorg/telegram/ui/ChatActivity$21;->springMultiplier:F

    .line 4838
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    .line 4839
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    .line 4841
    new-instance p3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 4842
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 4843
    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p3

    check-cast p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4844
    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x44bb8000    # 1500.0f

    .line 4846
    invoke-virtual {p3, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4847
    invoke-virtual {p3, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 4845
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    .line 4848
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4849
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 4850
    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 4851
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v3, 0x43c80000    # 400.0f

    .line 4853
    invoke-virtual {p3, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v3, 0x3f000000    # 0.5f

    .line 4854
    invoke-virtual {p3, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 4852
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    .line 4855
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4856
    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 4857
    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 4858
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x43480000    # 200.0f

    .line 4860
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 4861
    invoke-virtual {p3, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 4859
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    .line 4862
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4864
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 4869
    iput p1, p0, Lorg/telegram/ui/ChatActivity$21;->lastH:I

    .line 4872
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4873
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 4874
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4875
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4876
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 4877
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private drawReplyButton(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    .line 4993
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_8

    .line 4996
    :cond_0
    const-string v1, "paintChatActionBackground"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v7

    .line 4997
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    .line 4998
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 4999
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5001
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 5002
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5004
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 5005
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5007
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 5008
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5011
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v1

    const/high16 v9, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v9

    .line 5012
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v11

    const/4 v3, 0x1

    if-lez v2, :cond_5

    .line 5015
    iput-boolean v3, v0, Lorg/telegram/ui/ChatActivity$21;->slidingBeyondMax:Z

    .line 5018
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v2

    .line 5019
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-nez v5, :cond_6

    .line 5020
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 5021
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5022
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 5023
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 5024
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5025
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5, v12}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 5026
    iput-boolean v4, v0, Lorg/telegram/ui/ChatActivity$21;->slidingBeyondMax:Z

    .line 5029
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    cmpl-float v5, v5, v9

    const/high16 v6, 0x41a00000    # 20.0f

    if-eqz v5, :cond_7

    neg-float v5, v2

    .line 5030
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v5, v13

    const/high16 v13, 0x41f00000    # 30.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v5, v13

    invoke-static {v5, v12, v11}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    move v13, v5

    goto :goto_0

    :cond_7
    move v13, v11

    :goto_0
    cmpl-float v5, v13, v11

    if-nez v5, :cond_8

    .line 5035
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v5

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_8

    .line 5036
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5037
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingFillProgressSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5039
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5040
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5043
    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_9

    move v5, v9

    goto :goto_1

    :cond_9
    move v5, v12

    .line 5045
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_a

    .line 5046
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v6}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 5047
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v5

    if-nez v5, :cond_a

    .line 5048
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilitySpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 5052
    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->slidingDrawableVisibilityProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    div-float v14, v5, v9

    .line 5053
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v6

    if-eqz v6, :cond_b

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_b
    move v6, v11

    :goto_2
    mul-float/2addr v2, v6

    add-float v15, v5, v2

    .line 5054
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v16, v2, v5

    .line 5055
    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity$21;->slidingBeyondMax:Z

    if-eqz v2, :cond_c

    move/from16 v17, v1

    goto :goto_3

    :cond_c
    move/from16 v17, v14

    :goto_3
    if-eqz v2, :cond_d

    move/from16 v18, v12

    goto :goto_4

    :cond_d
    sub-float v2, v11, v1

    move/from16 v18, v2

    .line 5059
    :goto_4
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v2

    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v19

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v19, v21

    if-gtz v2, :cond_e

    move/from16 v19, v3

    goto :goto_5

    :cond_e
    move/from16 v19, v4

    :goto_5
    cmpl-float v2, v14, v12

    const/high16 v20, 0x41800000    # 16.0f

    if-eqz v2, :cond_12

    .line 5061
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    sub-float v4, v15, v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    sub-float v5, v16, v5

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v6

    add-float/2addr v5, v3

    float-to-int v3, v5

    int-to-float v3, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float/2addr v5, v15

    move/from16 v22, v6

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float v6, v6, v22

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-float v6, v16, v6

    move/from16 v23, v9

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    div-float v9, v9, v22

    sub-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5062
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-static {v3, v4, v12, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    cmpl-float v1, v1, v12

    if-nez v1, :cond_11

    .line 5064
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    .line 5065
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v3, v9

    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v4, v13, v1

    const/4 v5, 0x0

    .line 5066
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    move/from16 v22, v11

    const/4 v11, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 5067
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5069
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5070
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eqz v19, :cond_f

    .line 5072
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5074
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x0

    .line 5075
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_10
    move-object/from16 v1, p1

    goto :goto_7

    :cond_11
    move-object/from16 v1, p1

    :goto_6
    move/from16 v22, v11

    const/4 v11, -0x1

    goto :goto_7

    :cond_12
    move-object/from16 v1, p1

    move/from16 v23, v9

    goto :goto_6

    .line 5079
    :goto_7
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float v3, v15, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    sub-float v4, v16, v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float/2addr v5, v15

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-float v6, v16, v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5080
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-static {v3, v4, v12, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 5081
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 5082
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 5084
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v14

    mul-float/2addr v4, v13

    int-to-float v5, v3

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 5085
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5086
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5087
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5089
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5090
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-eqz v19, :cond_13

    .line 5092
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5094
    :cond_13
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v9, v3

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5095
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5096
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_14
    cmpl-float v3, v18, v12

    if-eqz v3, :cond_15

    .line 5100
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v18

    sub-float v4, v15, v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v18

    sub-float v5, v16, v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v18

    add-float/2addr v9, v15

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v18

    add-float v13, v16, v13

    float-to-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v2, v4, v5, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5101
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 5102
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v2, v5, v9, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 5104
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5105
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 5108
    :cond_15
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    sub-float v4, v15, v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    sub-float v5, v16, v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v17

    add-float/2addr v9, v15

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v17

    add-float v13, v16, v13

    float-to-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v2, v4, v5, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5109
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v9

    iget v13, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v13

    invoke-static {v4, v5, v12, v9}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 5110
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 5111
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v17

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v17

    invoke-virtual {v4, v2, v5, v9, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 5113
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v14

    int-to-float v6, v4

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 5114
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5115
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5116
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5118
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5119
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    if-eqz v19, :cond_16

    .line 5121
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5123
    :cond_16
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v7, v4

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5124
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->path:Landroid/graphics/Path;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5125
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_17
    if-eqz v3, :cond_18

    .line 5128
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 5131
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->slidingOuterRingProgress:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v3

    div-float v3, v3, v23

    cmpl-float v4, v3, v12

    if-eqz v4, :cond_1a

    cmpl-float v4, v3, v22

    if-eqz v4, :cond_1a

    add-float v4, v3, v22

    .line 5135
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    sub-float v3, v22, v3

    mul-float/2addr v3, v5

    cmpl-float v6, v3, v12

    if-eqz v6, :cond_1a

    .line 5138
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float v6, v15, v6

    add-float/2addr v6, v3

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float v7, v16, v7

    add-float/2addr v7, v3

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v9, v15

    sub-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    add-float v13, v16, v13

    sub-float/2addr v13, v3

    float-to-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v2, v6, v7, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5139
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v9

    iget v13, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v13

    invoke-static {v6, v7, v12, v9}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 5141
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 5142
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v9, v6

    mul-float/2addr v9, v14

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5144
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5145
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5146
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5148
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5150
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->hasGradientService()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 5151
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    if-eqz v19, :cond_19

    .line 5153
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 5155
    :cond_19
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    int-to-float v6, v6

    mul-float/2addr v6, v14

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5157
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5158
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5159
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1a
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v14, v2

    float-to-int v2, v14

    .line 5165
    const-string v3, "drawableReplyIcon"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5166
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5167
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, v17

    sub-float v2, v15, v2

    float-to-int v2, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v4, v4, v17

    sub-float v4, v16, v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v17

    add-float/2addr v15, v5

    float-to-int v5, v15

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-float v6, v16, v6

    float-to-int v6, v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5168
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5171
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5173
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->outlineActionBackgroundDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 5174
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1b
    :goto_8
    return-void
.end method

.method private synthetic lambda$$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 4848
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$1(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 4855
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 4862
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 5275
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownOffset(Lorg/telegram/ui/ChatActivity;F)V

    .line 5276
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$4()V
    .locals 1

    .line 5282
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$manimateToNextChat(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 5296
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownOffset(Lorg/telegram/ui/ChatActivity;F)V

    .line 5297
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 5304
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownOffset(Lorg/telegram/ui/ChatActivity;F)V

    .line 5305
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 5320
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownOffset(Lorg/telegram/ui/ChatActivity;F)V

    .line 5321
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5179
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputwasManualScroll(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v1, :cond_d

    .line 5181
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartedTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmaybeStartTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 5182
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPressedChildView()Landroid/view/View;

    move-result-object v7

    .line 5183
    instance-of v8, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_17

    .line 5184
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 5185
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5187
    :cond_1
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v8, v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputslidingView(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 5188
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    .line 5189
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8, v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcanSendMessageToTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    .line 5190
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    if-ne v9, v5, :cond_b

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v9

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5191
    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_b

    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    .line 5192
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_3
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5193
    invoke-static {v9, v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetMessageType(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v9

    if-ne v9, v2, :cond_4

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v9

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v9

    if-nez v9, :cond_b

    :cond_4
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v9, :cond_5

    .line 5194
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-ltz v9, :cond_b

    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomViewsVisibilityController(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatActivityBottomViewsVisibilityController;

    move-result-object v9

    .line 5195
    invoke-virtual {v9, v5}, Lorg/telegram/ui/Components/chat/ChatActivityBottomViewsVisibilityController;->getVisibility(I)F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_7

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayChatWaitsReply(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v8, :cond_7

    :cond_6
    iget-boolean v5, v7, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    if-eqz v5, :cond_b

    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_a

    .line 5196
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5197
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_b

    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5198
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 5199
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v8, :cond_b

    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v5

    .line 5200
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5202
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5203
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputslidingView(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void

    .line 5206
    :cond_c
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingPointerId:I

    .line 5207
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputmaybeStartTrackingSlidingView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5208
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingX:I

    .line 5209
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingY:I

    return-void

    .line 5211
    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    const/high16 v8, 0x42480000    # 50.0f

    if-eqz v7, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_13

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v10, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingPointerId:I

    if-ne v7, v10, :cond_13

    const/high16 v3, -0x3d600000    # -80.0f

    .line 5212
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v7, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingX:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5213
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v7, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingY:I

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 5214
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmaybeStartTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartedTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    if-nez v7, :cond_e

    int-to-float v7, v3

    const v10, 0x3ecccccd    # 0.4f

    invoke-static {v10, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v10

    neg-float v10, v10

    cmpg-float v7, v7, v10

    if-gtz v7, :cond_e

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/2addr v7, v5

    if-le v7, v4, :cond_e

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    .line 5215
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 5216
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5217
    invoke-super {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5218
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 5219
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    .line 5220
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputmaybeStartTrackingSlidingView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5221
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputstartedTrackingSlidingView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5222
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingX:I

    .line 5223
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 5224
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 5226
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartedTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5227
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-lt v1, v4, :cond_f

    .line 5228
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$21;->wasTrackingVibrate:Z

    if-nez v1, :cond_10

    .line 5230
    :try_start_0
    invoke-virtual {v0, v5, v9}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5232
    :catch_0
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$21;->wasTrackingVibrate:Z

    goto :goto_0

    .line 5235
    :cond_f
    iput-boolean v6, v0, Lorg/telegram/ui/ChatActivity$21;->wasTrackingVibrate:Z

    .line 5237
    :cond_10
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5238
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 5239
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5240
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v6, v6}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 5242
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ChatActivity$21;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 5243
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 5245
    :cond_13
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v7

    if-eqz v7, :cond_17

    if-eqz v1, :cond_14

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v9, v0, Lorg/telegram/ui/ChatActivity$21;->startedTrackingPointerId:I

    if-ne v7, v9, :cond_17

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v5, :cond_14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v2, :cond_14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x6

    if-ne v7, v9, :cond_17

    :cond_14
    if-eqz v1, :cond_15

    .line 5246
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_15

    .line 5247
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    .line 5249
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_16

    .line 5251
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputslidingView(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 5253
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lorg/telegram/ui/ChatActivity$21;->lastTrackingAnimationTime:J

    .line 5254
    iput v4, v0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    .line 5255
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5256
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputmaybeStartTrackingSlidingView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5257
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputstartedTrackingSlidingView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5258
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    :cond_17
    :goto_1
    return-void
.end method

.method private setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V
    .locals 5

    .line 4940
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4944
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4946
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 4947
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v4, :cond_1

    goto :goto_1

    .line 4950
    :cond_1
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 4951
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 4952
    invoke-virtual {v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 4953
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4956
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateSkeletonColors()V
    .locals 22

    move-object/from16 v0, p0

    .line 5661
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5662
    :goto_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    if-eqz v1, :cond_1

    const/16 v5, 0x21

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    :goto_1
    const/16 v6, 0xff

    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    if-eqz v1, :cond_2

    const v7, 0x3f666666    # 0.9f

    goto :goto_2

    :cond_2
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_2
    invoke-static {v4, v5, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 5663
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v3

    if-eqz v1, :cond_3

    const/16 v5, 0x18

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfgetSKELETON_LIGHT_OVERLAY_ALPHA()I

    move-result v5

    :goto_3
    invoke-static {v3, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 5664
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonColor1(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    if-ne v5, v3, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonColor0(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    if-eq v5, v4, :cond_4

    goto :goto_4

    :cond_4
    return-void

    .line 5665
    :cond_5
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonColor0(Lorg/telegram/ui/ChatActivity;I)V

    .line 5666
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonColor1(Lorg/telegram/ui/ChatActivity;I)V

    .line 5667
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v7, Landroid/graphics/LinearGradient;

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/high16 v9, 0x43480000    # 200.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonGradientWidth(Lorg/telegram/ui/ChatActivity;I)V

    int-to-float v10, v9

    filled-new-array {v3, v4, v4, v3}, [I

    move-result-object v12

    const/4 v3, 0x4

    new-array v13, v3, [F

    fill-array-data v13, :array_0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v14, v21

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v5, v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonGradient(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)V

    .line 5668
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonGradientWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonTotalTranslation(Lorg/telegram/ui/ChatActivity;I)V

    .line 5669
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonGradient(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v1, :cond_6

    const/16 v1, 0x2b

    goto :goto_5

    :cond_6
    const/16 v1, 0x60

    .line 5671
    :goto_5
    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 5672
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonGradientWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    int-to-float v5, v5

    filled-new-array {v2, v1, v1, v2}, [I

    move-result-object v19

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v1

    move/from16 v17, v5

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v4, v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonOutlineGradient(Lorg/telegram/ui/ChatActivity;Landroid/graphics/LinearGradient;)V

    .line 5673
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlinePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlineGradient(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateSkeletonGradient()V
    .locals 7

    .line 5678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5679
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonLastUpdateTime(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/16 v2, 0x10

    :cond_0
    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const-wide/16 v2, 0x0

    .line 5686
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 5687
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonLastUpdateTime(Lorg/telegram/ui/ChatActivity;J)V

    .line 5688
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonTotalTranslation(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    int-to-long v5, v4

    mul-long/2addr v2, v5

    long-to-float v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonTotalTranslation(Lorg/telegram/ui/ChatActivity;I)V

    .line 5689
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonTotalTranslation(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_2

    .line 5690
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonGradientWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputskeletonTotalTranslation(Lorg/telegram/ui/ChatActivity;I)V

    .line 5692
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonTotalTranslation(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 5693
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonGradient(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5694
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonGradient(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 5696
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlineMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonTotalTranslation(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 5697
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlineGradient(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5698
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlineGradient(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/LinearGradient;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlineMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 4899
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4900
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->allowSelectChildAtPosition(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 6540
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6543
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 5705
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    const/4 v0, 0x0

    .line 5706
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    .line 5708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5709
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfragmentTransition(Lorg/telegram/ui/ChatActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfromPullingDownTransition(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettoPullingDownTransition(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    .line 5712
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5713
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 5714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5716
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 5717
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 5719
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v4, v2

    iput v4, v3, Lorg/telegram/ui/ChatActivity;->drawingChatListViewYoffset:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5720
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 5721
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5722
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 5723
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 5725
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    .line 5726
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5727
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    .line 5729
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5453
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v6, 0xc8

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-gtz v2, :cond_28

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v3, v2, Lorg/telegram/ui/ChatActivity;->isComments:Z

    if-nez v3, :cond_28

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_28

    .line 5454
    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v8, 0x7

    if-eq v2, v8, :cond_2

    move v10, v3

    goto :goto_0

    :cond_2
    move v10, v9

    .line 5455
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-eqz v2, :cond_3

    .line 5456
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5457
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5459
    :cond_3
    invoke-direct {v0}, Lorg/telegram/ui/ChatActivity$21;->updateSkeletonColors()V

    .line 5460
    invoke-direct {v0}, Lorg/telegram/ui/ChatActivity$21;->updateSkeletonGradient()V

    .line 5462
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v12, v8, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v2, v12

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getAnimatedMaxBottomInset()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v2, v8

    const/high16 v8, 0x42740000    # 61.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v2, v8

    .line 5464
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misBottomButtonHidden(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    const/high16 v12, 0x42400000    # 48.0f

    if-eqz v8, :cond_4

    .line 5465
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v2, v8

    :cond_4
    const v8, 0x7fffffff

    move v13, v9

    .line 5471
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 5472
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    if-ge v14, v8, :cond_5

    move v8, v14

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 5477
    :cond_6
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v13

    cmp-long v13, v13, v4

    if-nez v13, :cond_7

    if-gtz v8, :cond_7

    .line 5478
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v13

    invoke-static {v8, v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckDispatchHideSkeletons(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5481
    :cond_7
    const-string v8, "paintChatActionBackground"

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v8

    .line 5482
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v14

    if-eq v13, v14, :cond_8

    .line 5483
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 5485
    :cond_8
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v13

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v14

    if-eq v13, v14, :cond_9

    .line 5486
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5487
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonColorMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v8

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfgetSKELETON_SATURATION()F

    move-result v13

    invoke-virtual {v8, v13}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 5488
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonColorMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/ColorMatrix;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_9
    move v8, v9

    .line 5491
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-ge v8, v13, :cond_11

    .line 5492
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5543
    instance-of v15, v13, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_d

    .line 5544
    move-object v15, v13

    check-cast v15, Lorg/telegram/ui/Cells/ChatMessageCell;

    move-wide/from16 v16, v4

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    .line 5545
    invoke-virtual {v15, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 5546
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v5

    int-to-float v5, v15

    if-eqz v4, :cond_a

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v15, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v15, v15

    iget v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v15, v4

    goto :goto_3

    :cond_a
    move v15, v11

    :goto_3
    add-float/2addr v5, v15

    float-to-int v4, v5

    .line 5547
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v18

    cmp-long v5, v18, v16

    if-nez v5, :cond_b

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSkeletonVisible(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    goto :goto_4

    :cond_b
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v14

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    move v4, v2

    :goto_4
    if-ge v4, v2, :cond_10

    goto :goto_6

    :cond_d
    move-wide/from16 v16, v4

    .line 5551
    instance-of v4, v13, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_10

    .line 5552
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    cmp-long v4, v4, v16

    if-nez v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSkeletonVisible(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    goto :goto_5

    :cond_e
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v14

    if-nez v4, :cond_f

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_5

    :cond_f
    move v4, v2

    :goto_5
    if-ge v4, v2, :cond_10

    :goto_6
    move v2, v4

    :cond_10
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v4, v16

    goto/16 :goto_2

    :cond_11
    move-wide/from16 v16, v4

    .line 5559
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSkeletonVisible(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 5560
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v4

    if-eqz v4, :cond_12

    move v13, v3

    goto :goto_7

    :cond_12
    move v13, v9

    .line 5561
    :goto_7
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v5

    invoke-static {v5}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v5

    const-wide v7, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_13

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v5

    if-eqz v5, :cond_13

    move v15, v3

    goto :goto_8

    :cond_13
    move v15, v9

    .line 5562
    :goto_8
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    invoke-static {v4}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide v6, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_14

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_9

    :cond_14
    move v3, v9

    :goto_9
    if-eqz v13, :cond_15

    .line 5564
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcontentPanTranslation(Lorg/telegram/ui/ChatActivity;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v11, v6}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    .line 5566
    :cond_15
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    if-eqz v3, :cond_16

    .line 5568
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5571
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    cmp-long v3, v5, v16

    if-eqz v3, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float v3, v5

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v3, v5

    sub-float v3, v14, v3

    goto :goto_a

    :cond_17
    move v3, v14

    .line 5572
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    .line 5573
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 5574
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlinePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 5576
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v8, :cond_18

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->-$$Nest$fgetisDark(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v8

    if-eqz v8, :cond_18

    const v14, 0x3e99999a    # 0.3f

    .line 5579
    :cond_18
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v18, v18, v3

    move/from16 v19, v11

    mul-float v11, v18, v14

    float-to-int v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5580
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    mul-float/2addr v14, v3

    int-to-float v11, v5

    mul-float/2addr v14, v11

    float-to-int v14, v14

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5581
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlinePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move v3, v9

    .line 5582
    :goto_b
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v11, v8, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    const/high16 v14, 0x40400000    # 3.0f

    if-le v2, v11, :cond_1c

    .line 5583
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v2, v8

    .line 5586
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_19

    .line 5587
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8, v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetNewSkeleton(Lorg/telegram/ui/ChatActivity;Z)Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    move-result-object v8

    .line 5588
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 5590
    :cond_19
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 5592
    :goto_c
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v20

    cmp-long v11, v20, v16

    if-eqz v11, :cond_1b

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x2

    if-gt v11, v14, :cond_1a

    iget v11, v8, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_d

    :cond_1a
    iget v11, v8, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    goto :goto_d

    :cond_1b
    move v11, v2

    :goto_d
    iput v11, v8, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    .line 5594
    iget v8, v8, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int/2addr v2, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 5599
    :cond_1c
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v3, v3, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v2, v3

    goto :goto_e

    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    iget v2, v2, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    :goto_e
    if-eqz v10, :cond_1e

    move v3, v14

    goto :goto_f

    :cond_1e
    const/high16 v3, 0x424c0000    # 51.0f

    .line 5600
    :goto_f
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 5601
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/high16 v8, 0x428e0000    # 71.0f

    .line 5602
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v11

    invoke-static {v3, v8, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    :cond_1f
    move v11, v3

    move v3, v9

    .line 5604
    :goto_10
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_25

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v8, v8, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    if-le v2, v8, :cond_25

    .line 5605
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v16, v2, v8

    .line 5607
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatActivity$MessageSkeleton;

    .line 5609
    iget v8, v2, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->lastBottom:I

    move/from16 v17, v12

    .line 5610
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v12

    iget v14, v2, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int v14, v8, v14

    iget v9, v2, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->width:I

    invoke-virtual {v12, v11, v14, v9, v8}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    if-eqz v13, :cond_20

    .line 5612
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundCacheParams(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v9, v1, v12, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 5614
    :cond_20
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundCacheParams(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v9, v1, v12, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_21

    .line 5616
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundCacheParams(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v12

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v12, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    .line 5618
    :cond_21
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonBackgroundCacheParams(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlinePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v9, v1, v12, v14}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->drawCached(Landroid/graphics/Canvas;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable$PathDrawParams;Landroid/graphics/Paint;)V

    if-nez v10, :cond_24

    const/high16 v9, 0x42280000    # 42.0f

    .line 5622
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v14, 0x40c00000    # 6.0f

    .line 5623
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    int-to-float v8, v8

    sub-float v12, v8, v12

    move/from16 v21, v9

    .line 5625
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    .line 5626
    invoke-static/range {v21 .. v21}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v1

    int-to-float v1, v1

    if-eqz v13, :cond_22

    move/from16 v21, v1

    .line 5629
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v23, v9

    move v9, v4

    move/from16 v4, v23

    move/from16 v23, v11

    move-object v11, v2

    move v2, v14

    move v14, v6

    move/from16 v6, v21

    move/from16 v21, v10

    move/from16 v10, v22

    move/from16 v22, v3

    move v3, v12

    move v12, v5

    move v5, v8

    move-object v8, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_11

    :cond_22
    move/from16 v21, v9

    move v9, v4

    move/from16 v4, v21

    move/from16 v22, v3

    move/from16 v21, v10

    move/from16 v23, v11

    move v3, v12

    move-object v11, v2

    move v12, v5

    move v10, v7

    move v5, v8

    move v2, v14

    move v14, v6

    move v6, v1

    .line 5631
    :goto_11
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    if-eqz v15, :cond_23

    .line 5634
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 5636
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlinePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v8

    move v7, v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_24
    move/from16 v22, v3

    move v9, v4

    move v12, v5

    move v14, v6

    move/from16 v21, v10

    move/from16 v23, v11

    move-object v11, v2

    move v10, v7

    .line 5639
    :goto_12
    iget v1, v11, Lorg/telegram/ui/ChatActivity$MessageSkeleton;->height:I

    sub-int v2, v16, v1

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v1, p1

    move v4, v9

    move v7, v10

    move v5, v12

    move v6, v14

    move/from16 v12, v17

    move/from16 v10, v21

    move/from16 v11, v23

    const/4 v9, 0x0

    const/high16 v14, 0x40400000    # 3.0f

    goto/16 :goto_10

    :cond_25
    move v9, v4

    move v12, v5

    move v14, v6

    move v10, v7

    .line 5642
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonServicePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5643
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5644
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetskeletonOutlinePaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5645
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    .line 5646
    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    .line 5647
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_13

    :cond_26
    move/from16 v19, v11

    .line 5648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartMessageAppearTransitionMs(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long v1, v1, v6

    if-lez v1, :cond_27

    .line 5649
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5651
    :cond_27
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessageSkeletons(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputlastSkeletonCount(Lorg/telegram/ui/ChatActivity;I)V

    .line 5652
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputlastSkeletonMessageCount(Lorg/telegram/ui/ChatActivity;I)V

    .line 5653
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    cmpl-float v1, v1, v19

    if-eqz v1, :cond_28

    .line 5654
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5657
    :cond_28
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChatBackgroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5855
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v14, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    if-ge v7, v11, :cond_1

    .line 5859
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5860
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v14, :cond_1c

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_1c

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v10, p2

    invoke-static {v9, v6, v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mquickRejectChild(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_e

    .line 5863
    :cond_0
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->-$$Nest$fgetisBot(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v9

    if-eqz v9, :cond_3

    instance-of v9, v6, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v9, :cond_3

    .line 5864
    move-object v2, v6

    check-cast v2, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 5865
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v10, v9, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v7, v10

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    div-float v7, v7, v16

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v4

    int-to-float v9, v9

    sub-float/2addr v7, v9

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr v7, v9

    .line 5866
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BotHelpCell;->animating()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v2, :cond_1

    .line 5867
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    .line 5868
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    :goto_1
    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_f

    .line 5870
    :cond_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 5874
    :cond_3
    instance-of v3, v6, Lorg/telegram/ui/Cells/UserInfoCell;

    if-eqz v3, :cond_5

    .line 5875
    move-object v3, v6

    check-cast v3, Lorg/telegram/ui/Cells/UserInfoCell;

    .line 5876
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v14, v9, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v8, v14

    iget v9, v9, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-float v8, v8, v16

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/2addr v9, v4

    int-to-float v4, v9

    sub-float/2addr v8, v4

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr v8, v4

    .line 5877
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/UserInfoCell;->animating()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v3, :cond_1d

    .line 5878
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_4

    .line 5879
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v8, v3

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_e

    .line 5881
    :cond_4
    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_e

    .line 5884
    :cond_5
    instance-of v3, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_1b

    .line 5885
    move-object v9, v6

    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5886
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v14

    if-eqz v14, :cond_7

    if-eq v14, v2, :cond_6

    goto :goto_2

    :cond_6
    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    goto/16 :goto_d

    .line 5889
    :cond_7
    :goto_2
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v2

    .line 5890
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v3

    .line 5891
    invoke-virtual {v3}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->isAnimationInProgress()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawingSelectionBackground()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    goto/16 :goto_c

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    iget v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_8

    .line 5892
    :cond_a
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v4

    const-string v6, "paintChatMessageBackgroundSelected"

    if-nez v4, :cond_b

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlightedAnimated()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    goto/16 :goto_8

    .line 5916
    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 5918
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    if-nez v2, :cond_d

    .line 5920
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x1

    goto :goto_5

    .line 5922
    :cond_d
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    const-wide/16 v16, 0x0

    move-wide/from16 v17, v16

    const/4 v15, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v16, v5

    :goto_4
    if-ge v15, v11, :cond_f

    const/16 v20, 0x1

    .line 5927
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5928
    instance-of v12, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_e

    .line 5929
    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5930
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-ne v12, v14, :cond_e

    .line 5932
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v12

    .line 5933
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5934
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v13, v13, v22

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5935
    invoke-virtual {v12}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getLastTouchTime()J

    move-result-wide v22

    cmp-long v13, v22, v17

    if-lez v13, :cond_e

    .line 5937
    invoke-virtual {v12}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchX()F

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v13

    add-float/2addr v5, v13

    .line 5938
    invoke-virtual {v12}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchY()F

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v12, v8

    move/from16 v16, v12

    move-wide/from16 v17, v22

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_f
    const/16 v20, 0x1

    int-to-float v8, v4

    sub-float v8, v16, v8

    .line 5944
    invoke-virtual {v3, v5, v8}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setTouchCoordsOverride(FF)V

    sub-int/2addr v2, v4

    .line 5947
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v4

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4, v5, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 5948
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v5

    .line 5949
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v6, :cond_12

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->-$$Nest$fgetisDark(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v6

    if-nez v6, :cond_12

    if-eqz v5, :cond_12

    .line 5950
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 5951
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_6

    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$4700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 5952
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v6

    .line 5953
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v8, :cond_11

    .line 5954
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v13

    invoke-virtual {v8, v12, v6, v13, v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_7

    .line 5956
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v12

    invoke-static {v8, v6, v12, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_7

    :cond_12
    const/4 v5, 0x0

    .line 5959
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    .line 5960
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    .line 5962
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4, v5, v2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setBounds(IIII)V

    .line 5963
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 5964
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    :goto_8
    if-nez v2, :cond_18

    .line 5894
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 5895
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v3, :cond_13

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->-$$Nest$fgetisDark(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    if-nez v2, :cond_15

    .line 5896
    :cond_14
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_replyLinePaint:Landroid/graphics/Paint;

    .line 5897
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    move-object v6, v2

    goto :goto_b

    .line 5899
    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_a

    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 5900
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v4

    .line 5901
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v6, :cond_17

    .line 5902
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v12

    invoke-virtual {v6, v8, v4, v12, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->applyServiceShaderMatrix(IIFF)V

    goto :goto_9

    .line 5904
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v8

    invoke-static {v6, v4, v8, v3}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    goto :goto_9

    .line 5907
    :goto_b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5908
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5909
    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    int-to-float v2, v8

    .line 5910
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getHighlightAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5911
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v5, v2

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5912
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5913
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_c
    move-object v2, v14

    .line 5968
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    if-ne v3, v9, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewTask(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1d

    :cond_19
    if-nez v14, :cond_1d

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5969
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5970
    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5971
    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v3

    cmpl-float v3, v3, v19

    if-eqz v3, :cond_1a

    .line 5973
    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 5974
    invoke-virtual {v9}, Landroid/view/View;->getPivotX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    .line 5972
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1a
    move/from16 v3, v20

    .line 5977
    invoke-virtual {v9, v1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 5978
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    .line 5980
    :cond_1b
    instance-of v3, v6, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_1d

    .line 5981
    check-cast v6, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 5982
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5983
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5984
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5985
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v16

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v16

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 5986
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x1

    .line 5987
    invoke-virtual {v6, v1, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    const/4 v5, 0x0

    .line 5988
    invoke-virtual {v6, v1, v3, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactions(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V

    .line 5989
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    :cond_1c
    move-object/from16 v10, p2

    :cond_1d
    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 5994
    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_1e

    .line 5995
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    move-object v12, v2

    goto :goto_10

    :cond_1e
    const/4 v12, 0x0

    :goto_10
    const/4 v13, 0x0

    :goto_11
    const/4 v2, 0x3

    if-ge v13, v2, :cond_41

    .line 5998
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-ne v13, v4, :cond_1f

    .line 5999
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_1f

    move/from16 v23, v3

    move/from16 v24, v4

    :goto_12
    move/from16 v26, v5

    const/4 v5, 0x0

    const/16 v27, 0x1

    goto/16 :goto_20

    :cond_1f
    const/4 v8, 0x0

    :goto_13
    if-ge v8, v11, :cond_34

    .line 6003
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6004
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_20

    .line 6005
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6006
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v7, v2

    cmpg-float v2, v7, v5

    if-ltz v2, :cond_20

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_21

    :cond_20
    :goto_14
    move/from16 v18, v3

    const/4 v15, 0x0

    goto/16 :goto_17

    .line 6009
    :cond_21
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_20

    if-nez v13, :cond_22

    .line 6010
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_20

    goto :goto_15

    :cond_22
    const/4 v9, 0x1

    :goto_15
    if-ne v13, v9, :cond_23

    iget-object v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    if-nez v7, :cond_23

    goto :goto_14

    :cond_23
    if-nez v13, :cond_24

    .line 6013
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v7, :cond_20

    :cond_24
    const/4 v9, 0x1

    if-ne v13, v9, :cond_25

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v7, :cond_25

    goto :goto_14

    :cond_25
    if-ne v13, v4, :cond_26

    .line 6016
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v7

    if-eqz v7, :cond_20

    :cond_26
    if-eq v13, v4, :cond_27

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_14

    .line 6020
    :cond_27
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    .line 6021
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v15, 0x0

    iput v15, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 6022
    iput v15, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 6023
    iput v15, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    .line 6024
    iput v15, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 6026
    iput-boolean v15, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 6027
    iput-boolean v15, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 6028
    iput-object v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6029
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_28
    const/4 v15, 0x0

    .line 6032
    :goto_16
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v9

    iput-boolean v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    .line 6033
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v9

    iput-boolean v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    .line 6035
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v9

    add-int/2addr v7, v9

    .line 6036
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v10

    add-int/2addr v9, v10

    .line 6037
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    add-int v10, v10, v17

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v17

    add-int v10, v10, v17

    .line 6038
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v17

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v18, v3

    .line 6040
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v3, v14

    const/high16 v21, 0x41200000    # 10.0f

    if-nez v3, :cond_29

    .line 6041
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v10, v3

    .line 6044
    :cond_29
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2a

    .line 6045
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v17, v17, v3

    :cond_2a
    move/from16 v3, v17

    .line 6048
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v17

    if-eqz v17, :cond_2b

    .line 6049
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6052
    :cond_2b
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v4, :cond_2c

    if-ge v10, v4, :cond_2d

    .line 6053
    :cond_2c
    iput v10, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    .line 6055
    :cond_2d
    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v4, :cond_2e

    if-le v3, v4, :cond_2f

    .line 6056
    :cond_2e
    iput v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    .line 6058
    :cond_2f
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v3, :cond_30

    if-ge v7, v3, :cond_31

    .line 6059
    :cond_30
    iput v7, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    .line 6061
    :cond_31
    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v3, :cond_32

    if-le v9, v3, :cond_33

    .line 6062
    :cond_32
    iput v9, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    :cond_33
    :goto_17
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v18

    const/4 v4, 0x2

    goto/16 :goto_13

    :cond_34
    move/from16 v18, v3

    const/4 v15, 0x0

    move v2, v15

    .line 6067
    :goto_18
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 6068
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    .line 6072
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v4

    .line 6073
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v7, v8

    .line 6074
    iget v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v8, v8

    iget v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v8, v10

    .line 6075
    iget v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    iget v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v4, v10

    .line 6076
    iget v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v10, v10

    iget v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v10, v5

    .line 6078
    iget-boolean v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v5, :cond_35

    .line 6079
    iget-object v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v8, v5

    .line 6080
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v10, v5

    :cond_35
    move v5, v8

    .line 6089
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    add-int v6, v6, v21

    int-to-float v6, v6

    cmpl-float v6, v10, v6

    if-lez v6, :cond_36

    .line 6090
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v10, v6

    :cond_36
    move v6, v10

    .line 6093
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    cmpl-float v8, v8, v19

    if-nez v8, :cond_38

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v8

    cmpl-float v8, v8, v19

    if-eqz v8, :cond_37

    goto :goto_19

    :cond_37
    move/from16 v21, v15

    goto :goto_1a

    :cond_38
    :goto_19
    move/from16 v21, v9

    :goto_1a
    if-eqz v21, :cond_39

    .line 6095
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6096
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v8

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F

    move-result v10

    sub-float v22, v4, v7

    div-float v22, v22, v16

    add-float v9, v7, v22

    sub-float v22, v6, v5

    div-float v22, v22, v16

    add-float v14, v5, v22

    invoke-virtual {v1, v8, v10, v9, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6099
    :cond_39
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v15

    :goto_1b
    if-ge v9, v8, :cond_3c

    .line 6100
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 6101
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v24

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v26

    cmp-long v14, v24, v26

    if-nez v14, :cond_3a

    move v14, v15

    goto :goto_1c

    :cond_3a
    const/4 v14, 0x1

    .line 6102
    :goto_1c
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v15

    aget-object v14, v15, v14

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_3b

    const/4 v9, 0x0

    goto :goto_1d

    :cond_3b
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x0

    goto :goto_1b

    :cond_3c
    const/4 v9, 0x1

    .line 6107
    :goto_1d
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    move-object v10, v3

    float-to-int v3, v7

    float-to-int v14, v5

    move v15, v5

    float-to-int v5, v4

    move-object/from16 v24, v1

    move v1, v6

    float-to-int v6, v1

    move/from16 v25, v7

    iget-boolean v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    move-object/from16 v26, v10

    const/4 v10, 0x0

    move/from16 v20, v1

    move/from16 v17, v4

    move v4, v14

    move/from16 v23, v18

    move-object/from16 v1, v24

    move-object/from16 v14, v26

    const/16 v24, 0x2

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v18, v15

    move v15, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    if-eq v14, v12, :cond_3d

    .line 6109
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v5, 0x0

    iput-object v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    goto :goto_1e

    :cond_3d
    const/4 v5, 0x0

    .line 6111
    :goto_1e
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v21, :cond_3f

    .line 6113
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v11, :cond_3f

    .line 6115
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6116
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_3e

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v3

    if-ne v3, v14, :cond_3e

    .line 6118
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 6119
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v3

    sub-float v7, v25, v3

    sub-float v4, v17, v25

    div-float v4, v4, v16

    add-float/2addr v7, v4

    .line 6120
    invoke-virtual {v1, v7}, Landroid/view/View;->setPivotX(F)V

    int-to-float v2, v2

    sub-float v2, v18, v2

    sub-float v6, v20, v18

    div-float v6, v6, v16

    add-float/2addr v2, v6

    .line 6121
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    :cond_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_3f
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v18, v23

    move/from16 v5, v26

    const/4 v14, 0x4

    const/4 v15, 0x0

    goto/16 :goto_18

    :cond_40
    move/from16 v23, v18

    const/16 v24, 0x2

    goto/16 :goto_12

    :goto_20
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v26

    const/4 v14, 0x4

    goto/16 :goto_11

    :cond_41
    return-void
.end method

.method protected drawChatForegroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 5733
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_3

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_2

    .line 5736
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5737
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9, v8, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mquickRejectChild(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 5740
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5741
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5742
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v9

    goto :goto_1

    :cond_1
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v8, v1, v9, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    .line 5743
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5745
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5747
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    move v7, v6

    :goto_3
    if-ge v7, v3, :cond_6

    .line 5750
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5751
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9, v8, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mquickRejectChild(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_5

    .line 5754
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v10

    add-float/2addr v9, v10

    .line 5755
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 5756
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v11

    goto :goto_4

    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    .line 5758
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5759
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5760
    invoke-virtual {v8, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 5761
    invoke-virtual {v8, v1, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    .line 5762
    invoke-virtual {v8, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 5763
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5765
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5767
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    move v8, v6

    :goto_6
    if-ge v8, v3, :cond_e

    .line 5770
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5771
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10, v9, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mquickRejectChild(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/high16 v16, 0x41000000    # 8.0f

    goto/16 :goto_a

    .line 5775
    :cond_8
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 5776
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v10

    iget v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v10, v5

    if-nez v10, :cond_9

    move v10, v5

    goto :goto_7

    :cond_9
    move v10, v6

    .line 5778
    :goto_7
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v11

    goto :goto_8

    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    .line 5779
    :goto_8
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v13

    add-float/2addr v12, v13

    .line 5780
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    .line 5781
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5782
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 5783
    iget-object v15, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v15, :cond_c

    .line 5784
    invoke-virtual {v9, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v15

    .line 5785
    iget-object v14, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v4, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v15

    const/high16 v16, 0x41000000    # 8.0f

    iget v7, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v4, v7

    .line 5786
    iget v7, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v7, v7

    iget v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v7, v6

    .line 5787
    iget v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v6, v6

    add-float/2addr v6, v15

    iget v15, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v6, v15

    .line 5788
    iget v15, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v15, v15

    iget v5, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v15, v5

    .line 5790
    iget-boolean v5, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v5, :cond_b

    .line 5791
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v7, v5

    .line 5792
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v15, v5

    .line 5795
    :cond_b
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    .line 5796
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v6, v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    .line 5794
    invoke-virtual {v1, v4, v7, v6, v15}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_9

    :cond_c
    const/high16 v16, 0x41000000    # 8.0f

    .line 5799
    :goto_9
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v4, :cond_d

    .line 5800
    invoke-virtual {v1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x1

    .line 5801
    invoke-virtual {v9, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 5802
    invoke-virtual {v9, v1, v10, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    const/4 v4, 0x0

    .line 5803
    invoke-virtual {v9, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 5805
    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_a
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_e
    const/high16 v16, 0x41000000    # 8.0f

    .line 5807
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_b

    :cond_f
    const/high16 v16, 0x41000000    # 8.0f

    .line 5809
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_16

    .line 5812
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5813
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6, v5, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mquickRejectChild(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_10

    .line 5817
    :cond_10
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 5818
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v17, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_11

    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    const/4 v6, 0x0

    .line 5820
    :goto_d
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v7

    goto :goto_e

    :cond_12
    const/high16 v7, 0x3f800000    # 1.0f

    .line 5821
    :goto_e
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v10

    add-float/2addr v8, v10

    .line 5822
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 5823
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5824
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v10

    if-eqz v10, :cond_14

    .line 5825
    iget-object v11, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v11, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v11, :cond_14

    const/4 v11, 0x1

    .line 5826
    invoke-virtual {v5, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v12

    .line 5827
    iget-object v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v11, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    iget v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v11, v13

    .line 5828
    iget v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v13, v13

    iget v14, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v13, v14

    .line 5829
    iget v14, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v14, v14

    add-float/2addr v14, v12

    iget v12, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v14, v12

    .line 5830
    iget v12, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v12, v12

    iget v15, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v12, v15

    .line 5832
    iget-boolean v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v10, :cond_13

    .line 5833
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v10

    add-float/2addr v13, v10

    .line 5834
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v10

    add-float/2addr v12, v10

    .line 5837
    :cond_13
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v13, v10

    .line 5838
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v14, v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v12, v10

    .line 5836
    invoke-virtual {v1, v11, v13, v14, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_14
    if-nez v6, :cond_15

    .line 5841
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v6, :cond_15

    .line 5842
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v11, 0x1

    .line 5843
    invoke-virtual {v5, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v6, 0x0

    .line 5844
    invoke-virtual {v5, v1, v7, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    .line 5845
    invoke-virtual {v5, v1, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCommentLayout(Landroid/graphics/Canvas;F)V

    const/4 v9, 0x0

    .line 5846
    invoke-virtual {v5, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    goto :goto_f

    :cond_15
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 5848
    :goto_f
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 5850
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_17
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 6131
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSkeletonVisible(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6132
    iput-boolean v4, v0, Lorg/telegram/ui/ChatActivity$21;->invalidated:Z

    .line 6133
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6138
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewTask(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 6143
    :goto_0
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_2

    .line 6144
    move-object v7, v2

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6145
    iget-object v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget-boolean v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    goto :goto_1

    :cond_2
    move v7, v4

    .line 6147
    :goto_1
    sget-boolean v8, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawingBlur:Z

    const/4 v9, 0x4

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-nez v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v8, v8, v12

    if-gtz v8, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v8, v12

    cmpg-float v8, v8, v11

    if-gez v8, :cond_4

    :cond_3
    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_6

    :cond_5
    move v3, v5

    :cond_6
    const/4 v7, 0x0

    if-eqz v6, :cond_d

    .line 6154
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6155
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimateSendingViews(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v3, v5

    .line 6158
    :cond_7
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    .line 6159
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v12

    if-eqz v8, :cond_9

    .line 6161
    iget v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v13, v14, :cond_8

    const/16 v13, 0x3e8

    if-ne v14, v13, :cond_8

    iget-object v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-nez v13, :cond_8

    iget-boolean v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    if-eqz v13, :cond_8

    .line 6162
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v8

    move v13, v4

    goto :goto_2

    .line 6163
    :cond_8
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v8, :cond_9

    .line 6164
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v13

    add-int/2addr v13, v5

    int-to-float v13, v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v8, v13

    move v13, v8

    move v8, v4

    goto :goto_2

    :cond_9
    move v8, v4

    move v13, v8

    .line 6167
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDelayRoundProgressDraw()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 6168
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :cond_a
    if-nez v3, :cond_b

    .line 6170
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v14

    instance-of v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v14, :cond_b

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewTask(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v14

    if-nez v14, :cond_b

    .line 6171
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6172
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v14

    if-ne v14, v12, :cond_b

    move v3, v5

    :cond_b
    if-eqz v3, :cond_c

    .line 6177
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/ImageReceiver;->skipDraw()V

    :cond_c
    move-object/from16 v21, v7

    move-object v7, v6

    move-object/from16 v6, v21

    goto :goto_3

    .line 6179
    :cond_d
    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v6, :cond_e

    .line 6180
    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/Cells/ChatActionCell;

    move v8, v4

    move v13, v8

    move-object v12, v7

    goto :goto_3

    :cond_e
    move v8, v4

    move v13, v8

    move-object v6, v7

    move-object v12, v6

    :goto_3
    if-eqz v8, :cond_f

    .line 6186
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    goto :goto_4

    :cond_f
    if-eqz v13, :cond_10

    .line 6188
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    :cond_10
    :goto_4
    if-eqz v3, :cond_11

    move v3, v4

    :cond_11
    if-nez v3, :cond_18

    if-eqz v7, :cond_12

    .line 6202
    iget-object v14, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->needsStopClipping:Z

    if-nez v14, :cond_12

    if-eqz v12, :cond_12

    iget-object v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v14, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v14, :cond_12

    move v14, v5

    goto :goto_5

    :cond_12
    move v14, v4

    :goto_5
    if-eqz v14, :cond_13

    .line 6204
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6205
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v15

    .line 6206
    iget-object v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    move/from16 v16, v9

    iget v9, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v15

    move/from16 v17, v10

    iget v10, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v9, v10

    .line 6207
    iget v10, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v10, v10

    move/from16 v18, v11

    iget v11, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v10, v11

    .line 6208
    iget v11, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v11, v11

    add-float/2addr v11, v15

    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v11, v15

    .line 6209
    iget v15, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v15, v15

    iget v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v15, v12

    const/high16 v19, 0x40800000    # 4.0f

    .line 6212
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v9, v12

    .line 6213
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 6214
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    .line 6215
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v15, v12

    .line 6211
    invoke-virtual {v1, v9, v10, v11, v15}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_6

    :cond_13
    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    :goto_6
    if-eqz v7, :cond_14

    .line 6218
    iget-object v9, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget-boolean v9, v9, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->needsStopClipping:Z

    if-eqz v9, :cond_14

    .line 6219
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6220
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6221
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawInternal(Landroid/graphics/Canvas;)V

    .line 6222
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 6223
    iget-object v9, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget-boolean v9, v9, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    goto :goto_7

    :cond_14
    if-eqz v7, :cond_15

    if-eqz v14, :cond_15

    .line 6225
    iput-boolean v5, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->clipToGroupBounds:Z

    .line 6226
    invoke-super/range {p0 .. p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 6227
    iput-boolean v4, v7, Lorg/telegram/ui/Cells/ChatMessageCell;->clipToGroupBounds:Z

    goto :goto_7

    .line 6229
    :cond_15
    invoke-super/range {p0 .. p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    :goto_7
    if-eqz v14, :cond_16

    .line 6232
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    if-eqz v7, :cond_17

    .line 6234
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 6235
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6236
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPaddingTopAnimated()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6237
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 6238
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_17
    if-eqz v6, :cond_19

    .line 6240
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6241
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6242
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 6243
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_18
    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move v9, v4

    :cond_19
    :goto_8
    if-nez v8, :cond_1a

    if-eqz v13, :cond_1b

    .line 6249
    :cond_1a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 6252
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    cmpl-float v6, v6, v18

    if-eqz v6, :cond_1c

    .line 6253
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6254
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    move/from16 v8, v18

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    :cond_1c
    move/from16 v8, v18

    :goto_9
    if-eqz v7, :cond_1d

    .line 6258
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCheckBox(Landroid/graphics/Canvas;)V

    .line 6261
    :cond_1d
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_1e

    .line 6262
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 6265
    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_1f

    .line 6266
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6267
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1f
    if-eqz v7, :cond_5d

    .line 6271
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    .line 6272
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v8

    if-nez v3, :cond_2d

    if-nez v8, :cond_20

    .line 6274
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v3, :cond_2a

    :cond_20
    if-eqz v8, :cond_21

    .line 6275
    iget-boolean v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v3, :cond_21

    iget-byte v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_25

    iget-byte v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_25

    :cond_21
    if-eqz v8, :cond_22

    .line 6276
    iget-boolean v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v3, :cond_23

    .line 6277
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v8, :cond_24

    .line 6279
    iget-byte v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_25

    iget-byte v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v3, :cond_25

    :cond_24
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 6280
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    if-nez v8, :cond_26

    .line 6283
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    if-nez v3, :cond_26

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v3, :cond_2a

    :cond_26
    if-eqz v8, :cond_27

    .line 6284
    iget v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->captionFlag()I

    move-result v10

    and-int/2addr v3, v10

    if-eqz v3, :cond_28

    .line 6285
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    if-eqz v8, :cond_29

    .line 6287
    iget v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v10, v3, 0x8

    if-eqz v10, :cond_2a

    and-int/2addr v3, v5

    if-eqz v3, :cond_2a

    .line 6288
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6293
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_2b
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 6294
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 6295
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v11

    add-float/2addr v10, v11

    .line 6296
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    add-float/2addr v11, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v11, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v11, v3

    .line 6297
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    cmpl-float v3, v3, v10

    if-nez v3, :cond_2c

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_2d

    .line 6298
    :cond_2c
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 6299
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 6300
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 6301
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 6305
    :cond_2d
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 6306
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5d

    .line 6307
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10, v6}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    .line 6308
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v10, :cond_2e

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_2e

    move v10, v5

    goto :goto_a

    :cond_2e
    move v10, v4

    .line 6310
    :goto_a
    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v12

    if-nez v12, :cond_30

    if-eqz v6, :cond_2f

    iget-object v12, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v12, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v12, :cond_2f

    goto :goto_b

    :cond_2f
    move v12, v4

    goto :goto_c

    :cond_30
    :goto_b
    move v12, v5

    :goto_c
    if-eqz v12, :cond_31

    .line 6311
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v13

    goto :goto_d

    :cond_31
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v13

    float-to-int v13, v13

    :goto_d
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    add-int/2addr v13, v14

    .line 6312
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 6314
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v14

    if-eqz v14, :cond_32

    .line 6315
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatScrollHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_33

    .line 6317
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatScrollHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    goto :goto_e

    .line 6320
    :cond_32
    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 6321
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v14

    :cond_33
    :goto_e
    if-ltz v14, :cond_3b

    if-eqz v6, :cond_36

    if-eqz v8, :cond_36

    .line 6327
    iget-object v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    move/from16 p3, v11

    .line 6328
    iget-object v11, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v19, v5

    .line 6329
    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_34

    sub-int/2addr v14, v11

    add-int/2addr v14, v15

    goto :goto_10

    :cond_34
    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v15, 0x1

    :goto_f
    if-ge v15, v11, :cond_37

    .line 6334
    iget-object v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-le v5, v4, :cond_35

    goto :goto_10

    :cond_35
    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_f

    :cond_36
    move/from16 v19, v5

    move/from16 p3, v11

    add-int/lit8 v14, v14, -0x1

    .line 6344
    :cond_37
    :goto_10
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 6345
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatScrollHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_3c

    .line 6347
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/16 v18, 0x0

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_38

    .line 6348
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_38
    const/4 v1, 0x0

    .line 6350
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v9

    .line 6354
    :cond_39
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 6356
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/16 v18, 0x0

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_3a

    .line 6357
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3a
    const/4 v1, 0x0

    .line 6359
    invoke-virtual {v3, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v9

    :cond_3b
    move/from16 v19, v5

    move/from16 p3, v11

    .line 6365
    :cond_3c
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v4

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v5

    add-float/2addr v4, v5

    if-eqz v12, :cond_3d

    .line 6366
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    goto :goto_11

    :cond_3d
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    :goto_11
    instance-of v11, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_3e

    move-object v11, v2

    check-cast v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPaddingTopAnimated()F

    move-result v11

    goto :goto_12

    :cond_3e
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    :goto_12
    add-float/2addr v5, v11

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v11

    iget v11, v11, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v5, v11

    float-to-int v5, v5

    .line 6367
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget-object v14, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v11, v14

    .line 6368
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCheckBoxVisible()Z

    move-result v14

    if-eqz v14, :cond_3f

    const/16 v18, 0x0

    cmpl-float v14, v4, v18

    if-nez v14, :cond_3f

    move/from16 v14, v19

    goto :goto_13

    :cond_3f
    const/4 v14, 0x0

    .line 6369
    :goto_13
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v15

    if-nez v15, :cond_41

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget-boolean v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v15, :cond_40

    goto :goto_14

    :cond_40
    if-le v5, v11, :cond_43

    move v5, v11

    goto :goto_15

    .line 6370
    :cond_41
    :goto_14
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget-boolean v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v15, :cond_43

    .line 6371
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    .line 6372
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v20

    if-nez v20, :cond_42

    sub-float v15, p3, v15

    .line 6376
    :cond_42
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v5, v5

    mul-float/2addr v5, v15

    int-to-float v11, v11

    sub-float v15, p3, v15

    mul-float/2addr v11, v15

    add-float/2addr v5, v11

    float-to-int v5, v5

    :cond_43
    :goto_15
    if-nez v12, :cond_44

    .line 6385
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v11

    const/16 v18, 0x0

    cmpl-float v11, v11, v18

    if-eqz v11, :cond_44

    .line 6386
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 6388
    :cond_44
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v11

    if-eqz v11, :cond_53

    .line 6390
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v11

    if-eqz v11, :cond_45

    .line 6391
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatScrollHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v11

    iget-object v11, v11, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_46

    .line 6393
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v15}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatScrollHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    goto :goto_16

    .line 6396
    :cond_45
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 6397
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v11

    :cond_46
    :goto_16
    if-ltz v11, :cond_53

    move v15, v13

    move v13, v11

    move-object v11, v7

    move v7, v4

    const/4 v4, 0x0

    :goto_17
    const/16 v2, 0x14

    if-lt v4, v2, :cond_47

    goto/16 :goto_1e

    :cond_47
    add-int/lit8 v4, v4, 0x1

    if-eqz v6, :cond_4b

    if-eqz v8, :cond_4b

    .line 6409
    iget-object v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_48

    goto/16 :goto_1e

    :cond_48
    move/from16 p4, v2

    .line 6413
    iget v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_49

    add-int v13, v13, p4

    add-int/lit8 v13, v13, 0x1

    move/from16 p4, v4

    goto :goto_19

    :cond_49
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v2, p4, -0x1

    :goto_18
    move/from16 p4, v4

    if-ltz v2, :cond_4c

    .line 6418
    iget-object v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    move/from16 v20, v2

    iget-byte v2, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-ge v4, v2, :cond_4a

    goto :goto_19

    :cond_4a
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v2, v20, -0x1

    move/from16 v4, p4

    goto :goto_18

    :cond_4b
    move/from16 p4, v4

    add-int/lit8 v13, v13, 0x1

    .line 6428
    :cond_4c
    :goto_19
    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 6429
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatScrollHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_52

    .line 6431
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    add-int/2addr v4, v15

    .line 6432
    instance-of v15, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_4f

    .line 6433
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6434
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v11

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v15

    add-float/2addr v11, v15

    if-eqz v14, :cond_4d

    const/16 v18, 0x0

    cmpl-float v15, v11, v18

    if-lez v15, :cond_4d

    goto :goto_1a

    :cond_4d
    move v11, v7

    .line 6438
    :goto_1a
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v7

    if-nez v7, :cond_4e

    :goto_1b
    move-object v7, v2

    move v13, v4

    move v4, v11

    goto :goto_1f

    :cond_4e
    move v15, v4

    move v7, v11

    move-object v11, v2

    goto :goto_1d

    :cond_4f
    move v13, v4

    move v4, v7

    move-object v7, v11

    goto :goto_1f

    .line 6450
    :cond_50
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 6452
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v15, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    add-int/2addr v4, v15

    .line 6453
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v15, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_4f

    .line 6454
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 6455
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v11

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v15

    add-float/2addr v11, v15

    if-eqz v14, :cond_51

    const/16 v18, 0x0

    cmpl-float v15, v11, v18

    if-lez v15, :cond_51

    goto :goto_1c

    :cond_51
    move v11, v7

    .line 6459
    :goto_1c
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_1b

    :goto_1d
    move/from16 v4, p4

    goto/16 :goto_17

    :cond_52
    :goto_1e
    move v4, v7

    move-object v7, v11

    move v13, v15

    :cond_53
    :goto_1f
    const/high16 v2, 0x42400000    # 48.0f

    .line 6474
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v5, v6

    if-ge v6, v13, :cond_54

    .line 6475
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v5, v13, v2

    .line 6477
    :cond_54
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v2

    if-nez v2, :cond_56

    if-eqz v12, :cond_55

    .line 6478
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_20

    :cond_55
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v6

    iget v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v2, v6

    float-to-int v2, v2

    :goto_20
    if-le v5, v2, :cond_56

    move v5, v2

    .line 6483
    :cond_56
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/4 v8, 0x0

    cmpl-float v2, v4, v8

    if-eqz v2, :cond_57

    .line 6485
    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6487
    :cond_57
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 6488
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v2, :cond_58

    int-to-float v2, v5

    .line 6489
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v5, v2

    :cond_58
    if-eqz v10, :cond_59

    const/high16 v2, 0x42300000    # 44.0f

    .line 6493
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 6495
    :cond_59
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 6496
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    sub-float v11, p3, v2

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    mul-float/2addr v11, v2

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 6498
    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v4

    .line 6499
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 6497
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_21

    .line 6502
    :cond_5a
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    sub-float v11, p3, v2

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_21
    if-eqz v10, :cond_5b

    move/from16 v4, v19

    const/4 v2, 0x0

    .line 6505
    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 6507
    :cond_5b
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/16 v18, 0x0

    cmpl-float v2, v2, v18

    if-lez v2, :cond_5c

    .line 6508
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    sub-float v11, p3, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    sub-float v2, p3, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    invoke-virtual {v1, v11, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 6509
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    mul-float/2addr v2, v4

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_22

    :cond_5c
    const/4 v8, 0x0

    .line 6511
    :goto_22
    invoke-virtual {v7, v1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawAvatarWithOnlineStatus(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;)V

    .line 6512
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    if-nez v12, :cond_5e

    .line 6514
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_5e

    .line 6515
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    goto :goto_23

    :cond_5d
    const/4 v8, 0x0

    .line 6520
    :cond_5e
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_5f

    .line 6521
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_5f
    return v9
.end method

.method protected onChildPressed(Landroid/view/View;FFZ)V
    .locals 3

    .line 5350
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 5351
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_3

    .line 5352
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5353
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    .line 5354
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 5357
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 5359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 5361
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 5362
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v2, :cond_1

    goto :goto_1

    .line 5365
    :cond_1
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 5366
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 5367
    invoke-virtual {v1, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setPressed(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5376
    invoke-super/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5377
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v2, :cond_7

    .line 5378
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v2

    .line 5379
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmaybeStartTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartedTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, v0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_6

    .line 5380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 5381
    iget-wide v9, v0, Lorg/telegram/ui/ChatActivity$21;->lastTrackingAnimationTime:J

    sub-long v9, v5, v9

    .line 5382
    iget v2, v0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    long-to-float v7, v9

    const/high16 v9, 0x43340000    # 180.0f

    div-float/2addr v7, v9

    add-float/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 5384
    iput v4, v0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    .line 5386
    :cond_0
    iput-wide v5, v0, Lorg/telegram/ui/ChatActivity$21;->lastTrackingAnimationTime:J

    .line 5387
    iget v2, v0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v6, v0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    invoke-virtual {v5, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v5

    sub-float v5, v4, v5

    mul-float/2addr v2, v5

    cmpl-float v5, v2, v8

    if-nez v5, :cond_1

    .line 5389
    iput v8, v0, Lorg/telegram/ui/ChatActivity$21;->endTrackingX:F

    .line 5391
    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lorg/telegram/ui/ChatActivity$21;->setGroupTranslationX(Lorg/telegram/ui/Cells/ChatMessageCell;F)V

    .line 5392
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5393
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 5394
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5395
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 5398
    :cond_3
    iget v2, v0, Lorg/telegram/ui/ChatActivity$21;->trackAnimationProgress:F

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_4

    cmpl-float v2, v2, v8

    if-nez v2, :cond_5

    .line 5399
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSlidingOffset(F)V

    .line 5400
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputslidingView(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 5402
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5404
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ChatActivity$21;->drawReplyButton(Landroid/graphics/Canvas;)V

    .line 5407
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v5, v2, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v5, :cond_f

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_f

    .line 5408
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 5410
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_9

    .line 5411
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    .line 5412
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v5

    sub-float/2addr v2, v5

    .line 5414
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    if-nez v5, :cond_8

    move v5, v8

    goto :goto_0

    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingBottomOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v5

    :goto_0
    add-float/2addr v2, v5

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v5

    mul-float/2addr v2, v5

    move v9, v2

    goto :goto_1

    :cond_9
    move v9, v8

    .line 5418
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v5, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    sub-float/2addr v2, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5419
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    if-nez v2, :cond_c

    .line 5420
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v10, Lorg/telegram/ui/ChatPullingDownDrawable;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)I

    move-result v11

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v5, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v13

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v15, v5, Lorg/telegram/ui/ChatActivity;->dialogFolderId:I

    iget v6, v5, Lorg/telegram/ui/ChatActivity;->dialogFilterId:I

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v17

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object/from16 v19, v5

    move/from16 v16, v6

    invoke-direct/range {v10 .. v19}, Lorg/telegram/ui/ChatPullingDownDrawable;-><init>(ILandroid/view/View;JIIJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v2, v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownDrawable(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatPullingDownDrawable;)V

    .line 5421
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatorPullingDownContainerVisibility(Lorg/telegram/ui/ChatActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v5

    invoke-virtual {v5}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v5

    iput v5, v2, Lorg/telegram/ui/ChatPullingDownDrawable;->progressToBottomPanel:F

    .line 5422
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnextChannels(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnextChannels(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 5423
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnextChannels(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_2

    .line 5424
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v5, v2, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v5, :cond_b

    .line 5425
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateTopic()V

    goto :goto_2

    .line 5427
    :cond_b
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog()V

    .line 5429
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->onAttach()V

    .line 5431
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    const/high16 v7, 0x428e0000    # 71.0f

    if-eqz v6, :cond_d

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :cond_d
    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatPullingDownDrawable;->setWidth(I)V

    .line 5432
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 5433
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    goto :goto_3

    :cond_e
    move v3, v8

    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v5

    .line 5434
    invoke-virtual {v5}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getAnimatedMaxBottomInset()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v6

    .line 5435
    invoke-virtual {v6}, Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;->getInputBubbleHeight()F

    move-result v6

    add-float/2addr v5, v6

    neg-float v5, v5

    .line 5433
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5436
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v1, v5, v2, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->draw(Landroid/graphics/Canvas;Landroid/view/View;FF)V

    .line 5438
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 5440
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 5441
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 5442
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v9

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5443
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 5444
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 5446
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 5447
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->reset()V

    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 6528
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6531
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6532
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6534
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4969
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 4970
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4973
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4976
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4977
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4980
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4911
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 4913
    iget p3, p1, Lorg/telegram/ui/ChatActivity$21;->lastWidth:I

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    if-eq p3, p4, :cond_1

    if-eqz p3, :cond_0

    .line 4915
    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mhideHints(Lorg/telegram/ui/ChatActivity;Z)V

    .line 4917
    :cond_0
    iput p4, p1, Lorg/telegram/ui/ChatActivity$21;->lastWidth:I

    .line 4920
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 4921
    iget p4, p1, Lorg/telegram/ui/ChatActivity$21;->lastH:I

    if-eq p4, p3, :cond_3

    const/4 p4, 0x1

    .line 4922
    iput-boolean p4, p1, Lorg/telegram/ui/ChatActivity$21;->ignoreLayout:Z

    .line 4923
    iget-object p4, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 4924
    iget-object p4, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 4926
    :cond_2
    iget-object p4, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatScrollHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->cancel()V

    .line 4927
    iput-boolean p2, p1, Lorg/telegram/ui/ChatActivity$21;->ignoreLayout:Z

    .line 4928
    iput p3, p1, Lorg/telegram/ui/ChatActivity$21;->lastH:I

    .line 4931
    :cond_3
    iget-object p3, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputforceScrollToTop(Lorg/telegram/ui/ChatActivity;Z)V

    .line 4932
    iget-object p2, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4933
    iget-object p2, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->invalidate()V

    .line 4935
    :cond_4
    iget-object p2, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateClipRectForBackgroundAndChatList(Lorg/telegram/ui/ChatActivity;)V

    .line 4936
    iget-object p2, p1, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSkeletonVisible(Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 4906
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 5264
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->checkSelectionCancel(Landroid/view/MotionEvent;)V

    .line 5265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5266
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollByTouch(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5268
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 5269
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v1, :cond_3

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-nez v0, :cond_3

    .line 5271
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->animationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5272
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    new-array v4, v6, [F

    aput v0, v4, v3

    aput v2, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5273
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownBackAnimator(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)V

    .line 5274
    new-instance v2, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0xc8

    .line 5278
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5279
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5280
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 5281
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatPullingDownDrawable;->runOnAnimationFinish(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5285
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$manimateToNextChat(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_0

    .line 5288
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    const-wide/16 v4, 0xfa

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->emptyStub:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-wide v9, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->lastShowingReleaseTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v0, v7, v9

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/ChatPullingDownDrawable;->animateSwipeToRelease:Z

    if-eqz v0, :cond_5

    .line 5289
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5290
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownBackAnimator(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)V

    .line 5291
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 5292
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatorPullingDownContainerVisibility(Lorg/telegram/ui/ChatActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 5294
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v7

    const/high16 v8, 0x42de0000    # 111.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    new-array v10, v6, [F

    aput v7, v10, v3

    aput v9, v10, v1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 5295
    new-instance v9, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0x190

    .line 5299
    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5300
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5302
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    new-array v9, v6, [F

    aput v8, v9, v3

    aput v2, v9, v1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 5303
    new-instance v8, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x258

    .line 5307
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 5308
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5309
    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5311
    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v7, v4, v3

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 5312
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 5314
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    new-array v6, v6, [F

    aput v0, v6, v3

    aput v2, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5315
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownBackAnimator(Lorg/telegram/ui/ChatActivity;Landroid/animation/Animator;)V

    .line 5316
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5317
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatorPullingDownContainerVisibility(Lorg/telegram/ui/ChatActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 5319
    :cond_6
    new-instance v2, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$21$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$21;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5323
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5324
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5325
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 5329
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    .line 5332
    :cond_8
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5333
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    .line 5336
    :cond_9
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 5337
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstartedTrackingSlidingView(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    :goto_1
    return v1

    :cond_c
    :goto_2
    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 4961
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4964
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 5342
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 5343
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetslidingView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5344
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$21;->processTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 4882
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$21;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 4885
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .line 4986
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4989
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 4890
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 4891
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 4892
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 4893
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$21;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    :cond_0
    return-void
.end method
