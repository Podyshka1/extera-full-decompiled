.class public Lorg/telegram/ui/Components/PinnedLineView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field animateFromPosition:F

.field animateFromTotal:I

.field animateToPosition:I

.field animateToTotal:I

.field animationInProgress:Z

.field animationProgress:F

.field animator:Landroid/animation/ValueAnimator;

.field private color:I

.field fadePaint:Landroid/graphics/Paint;

.field fadePaint2:Landroid/graphics/Paint;

.field private lineHFrom:I

.field private lineHTo:I

.field private nextPosition:I

.field paint:Landroid/graphics/Paint;

.field rectF:Landroid/graphics/RectF;

.field replaceInProgress:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selectedPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field private startOffsetFrom:F

.field private startOffsetTo:F

.field totalCount:I


# direct methods
.method public static synthetic $r8$lambda$NZNkcEPjeON2Kd_yR1wr2esMnGg(Lorg/telegram/ui/Components/PinnedLineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->lambda$set$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sIolS8PHKTh61H2dYo5cQrxHjAo(Lorg/telegram/ui/Components/PinnedLineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->lambda$selectPosition$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetnextPosition(Lorg/telegram/ui/Components/PinnedLineView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputnextPosition(Lorg/telegram/ui/Components/PinnedLineView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectPosition(Lorg/telegram/ui/Components/PinnedLineView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->selectPosition(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 21

    move-object/from16 v0, p0

    .line 53
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 24
    iput v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    const/4 v2, 0x0

    .line 25
    iput v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    .line 39
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    .line 46
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    .line 47
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    .line 48
    iput v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    move-object/from16 v3, p2

    .line 54
    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 56
    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    .line 63
    new-instance v4, Landroid/graphics/LinearGradient;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v8, v5

    filled-new-array {v1, v2}, [I

    move-result-object v9

    const/4 v12, 0x2

    new-array v10, v12, [F

    fill-array-data v10, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 64
    iget-object v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    .line 68
    new-instance v13, Landroid/graphics/LinearGradient;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    filled-new-array {v2, v1}, [I

    move-result-object v18

    new-array v1, v12, [F

    fill-array-data v1, :array_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v1

    move/from16 v17, v3

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 69
    iget-object v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    iget-object v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PinnedLineView;->updateColors()V

    return-void

    nop

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

.method private getThemedColor(I)I
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$selectPosition$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 104
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$set$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private selectPosition(I)V
    .locals 3

    .line 82
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v0, :cond_0

    .line 83
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    return-void

    .line 86
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    if-eqz v0, :cond_3

    .line 87
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    iget v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    goto :goto_0

    .line 95
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    .line 97
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    if-eq p1, v0, :cond_4

    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x2

    .line 102
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    .line 103
    new-instance v0, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/PinnedLineView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PinnedLineView$1;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 127
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    iget v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    if-ltz v1, :cond_12

    iget v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 131
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v2, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    iget v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-le v1, v9, :cond_2

    move v11, v10

    goto :goto_0

    :cond_2
    move v11, v8

    :goto_0
    if-eqz v11, :cond_3

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_1

    :cond_3
    move-object/from16 v1, p1

    :goto_1
    const/high16 v2, 0x41000000    # 8.0f

    .line 135
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 137
    iget-boolean v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    .line 138
    iget v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v6, v4, v5

    mul-float/2addr v3, v6

    iget v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    goto :goto_2

    .line 140
    :cond_4
    iget v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    if-nez v3, :cond_5

    goto/16 :goto_9

    .line 143
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    :goto_2
    const/4 v7, 0x0

    cmpl-float v5, v3, v7

    if-nez v5, :cond_6

    goto/16 :goto_9

    :cond_6
    const v5, 0x3f333333    # 0.7f

    .line 148
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    .line 151
    iget-boolean v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v6, :cond_7

    .line 152
    iget v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    iget v9, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v10, v4, v9

    mul-float/2addr v6, v10

    iget v10, v0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    mul-float/2addr v10, v9

    add-float/2addr v6, v10

    goto :goto_4

    .line 154
    :cond_7
    iget-boolean v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    if-eqz v6, :cond_8

    .line 155
    iget v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v3

    .line 156
    iget v9, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v3

    .line 157
    iget v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v13, v4, v12

    mul-float/2addr v6, v13

    mul-float/2addr v9, v12

    add-float/2addr v6, v9

    goto :goto_3

    .line 159
    :cond_8
    iget v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    sub-int/2addr v6, v10

    int-to-float v6, v6

    mul-float/2addr v6, v3

    :goto_3
    cmpg-float v9, v6, v7

    if-gez v9, :cond_9

    move v6, v7

    goto :goto_4

    :cond_9
    int-to-float v9, v2

    .line 164
    iget v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v12, v10

    int-to-float v12, v12

    mul-float/2addr v12, v3

    add-float/2addr v12, v9

    sub-float/2addr v12, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v13, v2

    int-to-float v13, v13

    sub-float/2addr v13, v3

    cmpg-float v12, v12, v13

    if-gez v12, :cond_a

    .line 165
    iget v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v6, v10

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v9, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v2

    int-to-float v6, v6

    sub-float/2addr v6, v3

    sub-float v6, v9, v6

    .line 169
    :cond_a
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v2, v2

    add-float v10, v2, v6

    div-float/2addr v10, v3

    sub-float/2addr v10, v4

    float-to-int v10, v10

    .line 171
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v10, v8, 0x6

    .line 172
    iget-boolean v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-eqz v12, :cond_b

    iget v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    iget v13, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_5

    :cond_b
    iget v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    :goto_5
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_6
    if-ge v8, v10, :cond_10

    int-to-float v12, v8

    mul-float/2addr v12, v3

    add-float/2addr v12, v2

    sub-float/2addr v12, v6

    add-float v13, v12, v3

    cmpg-float v14, v13, v7

    if-ltz v14, :cond_c

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v14, v12, v14

    if-lez v14, :cond_d

    :cond_c
    move/from16 v16, v4

    goto/16 :goto_7

    .line 178
    :cond_d
    iget-object v14, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    add-float/2addr v12, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v13, v5

    invoke-virtual {v14, v7, v12, v15, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    iget-boolean v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    const/high16 v13, 0x42980000    # 76.0f

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v12, :cond_e

    iget v15, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    if-lt v8, v15, :cond_e

    .line 180
    iget-object v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    iget v15, v0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    move/from16 v16, v4

    invoke-static {v15}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v14

    mul-float/2addr v4, v13

    move/from16 v17, v13

    iget v13, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v13, v16, v13

    mul-float/2addr v4, v13

    float-to-int v4, v4

    invoke-static {v15, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 182
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    mul-float v13, v13, v17

    float-to-int v13, v13

    invoke-static {v12, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_e
    move/from16 v16, v4

    move/from16 v17, v13

    if-eqz v12, :cond_f

    .line 183
    iget v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    if-lt v8, v4, :cond_f

    .line 184
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    mul-float v13, v13, v17

    iget v15, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    mul-float/2addr v13, v15

    float-to-int v13, v13

    invoke-static {v12, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    iget v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    mul-float v13, v13, v17

    float-to-int v13, v13

    invoke-static {v12, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    .line 188
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v12, v0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v16

    goto/16 :goto_6

    :cond_10
    move/from16 v16, v4

    .line 193
    iget-boolean v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    if-eqz v4, :cond_11

    .line 194
    iget v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    iget v8, v0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    sub-float v10, v16, v8

    mul-float/2addr v4, v10

    iget v10, v0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    add-float/2addr v4, v10

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    sub-float/2addr v2, v6

    .line 195
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    add-float v6, v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v2, v3

    sub-float/2addr v2, v5

    invoke-virtual {v4, v7, v6, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 196
    iget-object v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 198
    :cond_11
    iget v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    sub-float/2addr v2, v6

    .line 199
    iget-object v4, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    add-float v6, v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v2, v3

    sub-float/2addr v2, v5

    invoke-virtual {v4, v7, v6, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    iget-object v2, v0, Lorg/telegram/ui/Components/PinnedLineView;->rectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_8
    if-eqz v11, :cond_12

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/PinnedLineView;->fadePaint2:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    :goto_9
    return-void
.end method

.method public set(IIZ)V
    .locals 7

    .line 213
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    if-eqz p2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    if-nez v2, :cond_1

    :cond_0
    move p3, v1

    :cond_1
    if-nez p3, :cond_3

    .line 217
    iget-object p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    .line 218
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 220
    :cond_2
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    .line 221
    iput p2, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 224
    :cond_3
    iget p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    const/4 v2, 0x2

    if-ne p3, p2, :cond_5

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-le p3, v2, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    if-nez p3, :cond_4

    goto :goto_0

    .line 280
    :cond_4
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PinnedLineView;->selectPosition(I)V

    return-void

    .line 225
    :cond_5
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_6

    .line 226
    iput v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->nextPosition:I

    .line 227
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    const/high16 p3, 0x41000000    # 8.0f

    .line 229
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    iget v3, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    .line 233
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v3, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-gez v5, :cond_7

    .line 235
    iput v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    goto :goto_1

    .line 236
    :cond_7
    iget v5, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v3

    add-int/2addr v5, p3

    int-to-float v3, v5

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p3

    iget v5, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_8

    .line 237
    iget v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, v5

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, p3

    iget v5, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHFrom:I

    sub-int/2addr v3, v5

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetFrom:F

    :cond_8
    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 240
    iget v3, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    cmpg-float v5, v0, v4

    if-gez v5, :cond_9

    .line 242
    iput v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    goto :goto_2

    :cond_9
    add-int/lit8 v5, p2, -0x1

    mul-int/2addr v3, v5

    add-int/2addr v3, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p3

    iget v6, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_a

    mul-int/2addr v5, v6

    add-int/2addr v5, p3

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p3

    iget p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->lineHTo:I

    sub-int/2addr v0, p3

    sub-int/2addr v5, v0

    int-to-float p3, v5

    iput p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->startOffsetTo:F

    .line 246
    :cond_a
    :goto_2
    iget p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    int-to-float p3, p3

    iput p3, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromPosition:F

    .line 247
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToPosition:I

    .line 249
    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPosition:I

    .line 250
    iget p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    iput p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateFromTotal:I

    .line 251
    iput p2, p0, Lorg/telegram/ui/Components/PinnedLineView;->animateToTotal:I

    .line 252
    iput p2, p0, Lorg/telegram/ui/Components/PinnedLineView;->totalCount:I

    .line 254
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->replaceInProgress:Z

    .line 255
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationInProgress:Z

    .line 256
    iput v4, p0, Lorg/telegram/ui/Components/PinnedLineView;->animationProgress:F

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 259
    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    .line 260
    new-instance p2, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PinnedLineView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 264
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/PinnedLineView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PinnedLineView$2;-><init>(Lorg/telegram/ui/Components/PinnedLineView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xdc

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Components/PinnedLineView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateColors()V
    .locals 4

    .line 76
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelLine:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PinnedLineView;->getThemedColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->paint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42e00000    # 112.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/PinnedLineView;->selectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/PinnedLineView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
