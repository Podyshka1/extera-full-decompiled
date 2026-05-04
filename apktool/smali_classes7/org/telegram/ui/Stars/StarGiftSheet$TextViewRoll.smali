.class Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewRoll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;
    }
.end annotation


# instance fields
.field private bounced:Z

.field private final clip:Lorg/telegram/ui/GradientClip;

.field private final current:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

.field private final next:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

.field private final prev:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

.field private final rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final showHint:Lorg/telegram/messenger/Utilities$Callback3;


# direct methods
.method public static synthetic $r8$lambda$iWC1ta3hFA-7tVuFzO3Fxhu3ze8(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 3878
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 3879
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 3880
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 9

    .line 3814
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3970
    new-instance v0, Lorg/telegram/ui/GradientClip;

    invoke-direct {v0}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->clip:Lorg/telegram/ui/GradientClip;

    .line 3971
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->rect:Landroid/graphics/RectF;

    .line 3816
    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->showHint:Lorg/telegram/messenger/Utilities$Callback3;

    .line 3817
    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 3819
    new-instance p3, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    .line 3820
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->current:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    .line 3821
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->next:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    const v7, 0x414a8f5c    # 12.66f

    const v8, 0x40aa8f5c    # 5.33f

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const v5, 0x414a8f5c    # 12.66f

    const v6, 0x40aa8f5c    # 5.33f

    .line 3823
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3824
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3825
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private bounce(Landroid/view/View;)V
    .locals 3

    .line 3873
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->bounced:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3875
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->bounced:Z

    const/4 v0, 0x2

    .line 3876
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3877
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0xb4

    .line 3882
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3883
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 3974
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3975
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3976
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 3977
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3978
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v0, v3, v5}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 3979
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3980
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v0, v2, v5}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 3981
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 3982
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 3965
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const v0, 0x4216a3d7    # 37.66f

    .line 3966
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3964
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public update(Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZ)V
    .locals 9

    move-object/from16 v1, p7

    const/4 v2, 0x4

    const/high16 v3, 0x42100000    # 36.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 3921
    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :cond_0
    sub-float/2addr p2, v6

    div-float/2addr p2, v5

    .line 3924
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3925
    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    iget-object v7, p1, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->name:Ljava/lang/String;

    iget p1, p1, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->rarity_permille:I

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->showHint:Lorg/telegram/messenger/Utilities$Callback3;

    invoke-virtual {p3, v7, p1, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;->set(Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback3;)V

    .line 3926
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 3928
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p4, :cond_3

    if-eqz p6, :cond_2

    .line 3934
    invoke-static {v6, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_1

    :cond_2
    move p1, p5

    :goto_1
    sub-float/2addr p1, v6

    div-float/2addr p1, v5

    .line 3937
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->current:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3938
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->current:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    iget-object p3, p4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->name:Ljava/lang/String;

    iget v0, p4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->rarity_permille:I

    iget-object v7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->showHint:Lorg/telegram/messenger/Utilities$Callback3;

    invoke-virtual {p2, p3, v0, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;->set(Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback3;)V

    .line 3939
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->current:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p6, :cond_4

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_4

    .line 3942
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->current:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->bounce(Landroid/view/View;)V

    goto :goto_2

    .line 3945
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->current:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    move/from16 p1, p8

    if-eqz p9, :cond_5

    .line 3951
    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_5
    sub-float/2addr p1, v6

    div-float/2addr p1, v5

    .line 3954
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->next:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3955
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->next:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    iget-object p3, v1, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->name:Ljava/lang/String;

    iget v0, v1, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->rarity_permille:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->showHint:Lorg/telegram/messenger/Utilities$Callback3;

    invoke-virtual {p2, p3, v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;->set(Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback3;)V

    .line 3956
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->next:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 3958
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->next:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll$TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
