.class public Lorg/telegram/ui/Components/AnimatedArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private animProgress:F

.field private animateToProgress:F

.field private isSmall:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    .line 25
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 30
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->isSmall:Z

    .line 32
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->updatePath()V

    return-void
.end method

.method private checkAnimation()V
    .locals 6

    .line 73
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animateToProgress:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 75
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 76
    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->lastUpdateTime:J

    .line 77
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animateToProgress:F

    cmpg-float v4, v0, v1

    const/high16 v5, 0x43340000    # 180.0f

    if-gez v4, :cond_0

    long-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 78
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 80
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    goto :goto_0

    :cond_0
    long-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v0, v2

    .line 83
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 85
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    .line 88
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->updatePath()V

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method private updatePath()V
    .locals 8

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 43
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 44
    iget-boolean v2, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->isSmall:Z

    const/high16 v3, 0x41500000    # 13.0f

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 46
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    sub-float/2addr v5, v7

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41ac0000    # 21.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 38
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->checkAnimation()V

    return-void
.end method

.method public getAnimationProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 100
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41d00000    # 26.0f

    .line 125
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41d00000    # 26.0f

    .line 120
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 57
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animProgress:F

    .line 58
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animateToProgress:F

    .line 59
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->updatePath()V

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAnimationProgressAnimated(F)V
    .locals 2

    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animateToProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->animateToProgress:F

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->lastUpdateTime:J

    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
