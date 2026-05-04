.class public Lorg/telegram/ui/ActionBar/BackDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private alwaysClose:Z

.field private animationTime:F

.field private arrowRotation:I

.field private color:I

.field private currentAnimationTime:I

.field private currentRotation:F

.field private finalRotation:F

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private prevPaint:Landroid/graphics/Paint;

.field private reverseAngle:Z

.field private rotated:Z

.field private rotatedColor:I


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prevPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    const v0, -0x8a8a8b

    .line 37
    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    const/high16 v0, 0x43960000    # 300.0f

    .line 38
    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    .line 39
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prevPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prevPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 102
    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 103
    iget-wide v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    sub-long/2addr v3, v5

    .line 106
    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-long v5, v1

    add-long/2addr v5, v3

    long-to-int v1, v5

    iput v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v3, v1

    .line 107
    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 108
    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    iput v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto :goto_0

    .line 110
    :cond_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 111
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    mul-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto :goto_0

    .line 113
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v2, v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 117
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 118
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 121
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->arrowRotation:I

    if-eqz v1, :cond_4

    int-to-float v1, v1

    .line 126
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 128
    :cond_4
    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 129
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    if-nez v3, :cond_6

    .line 130
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v3, :cond_5

    const/16 v3, -0xe1

    goto :goto_1

    :cond_5
    const/16 v3, 0x87

    :goto_1
    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    move v6, v1

    goto :goto_3

    .line 132
    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v3, :cond_7

    const/16 v3, -0xb4

    goto :goto_2

    :cond_7
    const/16 v3, 0xb4

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x43070000    # 135.0f

    add-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    move v6, v2

    :goto_3
    const/high16 v1, -0x3f280000    # -6.75f

    const/high16 v3, -0x3f000000    # -8.0f

    .line 135
    invoke-static {v1, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v8, v2, v6

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, -0x41800000    # -0.25f

    .line 136
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v9, v0

    const/high16 v0, 0x40e00000    # 7.0f

    .line 137
    invoke-static {v0, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v8

    sub-float v7, v0, v1

    const/high16 v0, -0x3f180000    # -7.25f

    const/4 v1, 0x0

    .line 138
    invoke-static {v0, v1, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    neg-float v2, v9

    neg-float v4, v7

    .line 140
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move v4, v7

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 167
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 162
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 43
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimationTime(F)V
    .locals 0

    .line 93
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    return-void
.end method

.method public setArrowRotation(I)V
    .locals 0

    .line 66
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->arrowRotation:I

    .line 67
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 56
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    .line 57
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setRotatedColor(I)V
    .locals 0

    .line 61
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRotation(FZ)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 72
    iget v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 73
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 75
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    .line 77
    :cond_1
    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    if-eqz p2, :cond_3

    cmpg-float p2, v2, p1

    if-gez p2, :cond_2

    .line 80
    iget p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    goto :goto_1

    :cond_2
    sub-float/2addr v3, v2

    .line 82
    iget p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v3, p2

    float-to-int p2, v3

    iput p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    .line 84
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 85
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    goto :goto_2

    .line 87
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    .line 89
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
