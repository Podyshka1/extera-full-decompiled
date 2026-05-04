.class public Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;
.super Lorg/telegram/ui/Components/AnimatedLinearLayout;
.source "SourceFile"


# instance fields
.field backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private final clipPath:Landroid/graphics/Path;

.field private final clipRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipPath:Landroid/graphics/Path;

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->updateColors()V

    return-void
.end method

.method private checkBoundsAndClipping()V
    .locals 10

    .line 59
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator$Metadata;->getTotalHeight()F

    move-result v0

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lme/vkryl/android/animator/ListAnimator$Metadata;->getTotalVisibility()F

    move-result v1

    .line 62
    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 64
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 65
    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 66
    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipRectF:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v6, v3, v3, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 68
    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v3, :cond_0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 69
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setAlpha(I)V

    .line 70
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v8, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v3, v9

    float-to-int v9, v0

    add-int/2addr v3, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v1, v4, v7, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator$Metadata;->getTotalVisibility()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 92
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getEntriesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 93
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getEntry(I)Lme/vkryl/android/animator/ListAnimator$Entry;

    move-result-object v2

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Lme/vkryl/android/animator/ListAnimator$Entry;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v7, v3, v4

    .line 96
    invoke-virtual {v2}, Lme/vkryl/android/animator/ListAnimator$Entry;->getPosition()F

    move-result v3

    .line 97
    invoke-virtual {v2}, Lme/vkryl/android/animator/ListAnimator$Entry;->getVisibility()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v2, v3

    .line 99
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 100
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v6, v3

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v2

    mul-float/2addr v8, v4

    add-float/2addr v5, v8

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v8, v4, v2

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move v9, v7

    move v6, v5

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v1, v1, 0x1

    move-object p1, v5

    goto :goto_0

    :cond_2
    move-object v5, p1

    .line 107
    invoke-super {p0, v5}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onItemsChanged()V
    .locals 0

    .line 44
    invoke-super {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->onItemsChanged()V

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->checkBoundsAndClipping()V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 38
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->onLayout(ZIIII)V

    .line 39
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->checkBoundsAndClipping()V

    return-void
.end method

.method public setBlurredBackground(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    return-void
.end method

.method public updateColors()V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->backgroundDrawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
