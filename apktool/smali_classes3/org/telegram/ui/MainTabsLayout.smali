.class public Lorg/telegram/ui/MainTabsLayout;
.super Lorg/telegram/ui/Components/AnimatedLinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MainTabsLayout$Tab;
    }
.end annotation


# instance fields
.field private biggestTabTextWidth:I

.field private tabsLeftPos:[I

.field private tabsTextWidth:[F

.field private tabsTextWidthWithMargin:[F

.field private tabsWeight:[I

.field private tabsWidth:[I

.field private visibleChildCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private checkVisualWidth()V
    .locals 4

    .line 291
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getEntriesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 292
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getEntry(I)Lme/vkryl/android/animator/ListAnimator$Entry;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lme/vkryl/android/animator/ListAnimator$Entry;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 294
    iget-object v2, v2, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->view:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/glass/GlassTabView;->setVisualWidth(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureTabTexts()V
    .locals 7

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidth:[F

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 237
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidth:[F

    .line 238
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    .line 239
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    .line 240
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/MainTabsLayout;->tabsLeftPos:[I

    .line 241
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWidth:[I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v1, v0, :cond_4

    .line 248
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 249
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->isViewVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 250
    iget-object v5, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidth:[F

    const/high16 v6, -0x40800000    # -1.0f

    aput v6, v5, v1

    goto :goto_2

    .line 255
    :cond_2
    instance-of v6, v5, Lorg/telegram/ui/MainTabsLayout$Tab;

    if-eqz v6, :cond_3

    .line 256
    check-cast v5, Lorg/telegram/ui/MainTabsLayout$Tab;

    invoke-interface {v5}, Lorg/telegram/ui/MainTabsLayout$Tab;->measureTextWidth()F

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v2

    .line 261
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidth:[F

    aput v5, v6, v1

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    float-to-double v0, v4

    .line 266
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/MainTabsLayout;->biggestTabTextWidth:I

    .line 267
    iput v3, p0, Lorg/telegram/ui/MainTabsLayout;->visibleChildCount:I

    return-void
.end method


# virtual methods
.method protected onItemsChanged()V
    .locals 0

    .line 286
    invoke-super {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->onItemsChanged()V

    .line 287
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsLayout;->checkVisualWidth()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 280
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->onLayout(ZIIII)V

    .line 281
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsLayout;->checkVisualWidth()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 22
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 23
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 26
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsLayout;->measureTabTexts()V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x43a00000    # 320.0f

    .line 29
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    .line 30
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 32
    iget v4, p0, Lorg/telegram/ui/MainTabsLayout;->visibleChildCount:I

    div-int v5, v1, v4

    mul-int/lit8 v3, v3, 0x2

    .line 33
    div-int v4, p1, v4

    sub-int/2addr v4, v3

    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    move v9, v7

    :goto_0
    const/high16 v10, 0x41500000    # 13.0f

    if-ge v7, v3, :cond_3

    .line 39
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 40
    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->isViewVisible(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 41
    iget-object v10, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidth:[F

    iget-object v11, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aput v5, v11, v7

    aput v5, v10, v7

    .line 42
    iget-object v10, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    aput v6, v10, v7

    goto :goto_3

    .line 46
    :cond_0
    iget-object v11, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidth:[F

    aget v11, v11, v7

    int-to-float v12, v4

    cmpl-float v12, v11, v12

    if-lez v12, :cond_1

    .line 48
    iget-object v12, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v11, v10

    aput v11, v12, v7

    goto :goto_1

    .line 50
    :cond_1
    iget-object v10, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    aput v11, v10, v7

    .line 52
    :goto_1
    iget-object v10, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    iget-object v11, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aget v11, v11, v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    move v11, v6

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    :goto_2
    aput v11, v10, v7

    .line 54
    iget-object v10, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aget v10, v10, v7

    add-float/2addr v8, v10

    .line 55
    iget-object v10, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    aget v10, v10, v7

    add-int/2addr v9, v10

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 58
    :cond_3
    iget v3, p0, Lorg/telegram/ui/MainTabsLayout;->visibleChildCount:I

    if-lez v3, :cond_b

    .line 59
    iget v3, p0, Lorg/telegram/ui/MainTabsLayout;->biggestTabTextWidth:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    int-to-float v3, v1

    .line 60
    iget v4, p0, Lorg/telegram/ui/MainTabsLayout;->visibleChildCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v4, v2, v3

    if-gez v4, :cond_6

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v6

    :goto_4
    if-ge v4, v3, :cond_5

    .line 66
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->isViewVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 67
    iget-object v7, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aput v2, v7, v4

    add-float/2addr v5, v2

    .line 69
    iget-object v7, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    aput v6, v7, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, -0x1

    move v8, v5

    goto :goto_7

    .line 74
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, v6

    :goto_5
    if-ge v4, v2, :cond_8

    .line 75
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->isViewVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidth:[F

    aget v7, v7, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v7, v11

    cmpl-float v7, v7, v3

    if-lez v7, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 83
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, v6

    :goto_6
    if-ge v4, v2, :cond_a

    .line 84
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->isViewVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 85
    iget-object v7, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aput v3, v7, v4

    add-float/2addr v5, v3

    .line 87
    iget-object v7, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    aput v6, v7, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    move v8, v5

    move v9, v6

    :cond_b
    :goto_7
    if-nez v9, :cond_d

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v6

    :goto_8
    if-ge v3, v2, :cond_c

    .line 96
    iget-object v4, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->isViewVisible(Landroid/view/View;)Z

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 98
    :cond_c
    iget v9, p0, Lorg/telegram/ui/MainTabsLayout;->visibleChildCount:I

    :cond_d
    int-to-float p1, p1

    cmpl-float v2, v8, p1

    if-lez v2, :cond_e

    div-float/2addr p1, v8

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v6

    :goto_9
    if-ge v2, v1, :cond_f

    .line 104
    iget-object v3, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aget v4, v3, v2

    mul-float/2addr v4, p1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    int-to-float p1, v1

    cmpg-float v1, v8, p1

    if-gez v1, :cond_f

    if-lez v9, :cond_f

    sub-float/2addr p1, v8

    int-to-float v1, v9

    div-float/2addr p1, v1

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v6

    :goto_a
    if-ge v2, v1, :cond_f

    .line 112
    iget-object v3, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aget v4, v3, v2

    .line 117
    iget-object v5, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWeight:[I

    aget v5, v5, v2

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 135
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v6

    move v2, v1

    :goto_b
    if-ge v1, p1, :cond_11

    .line 136
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->isViewVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_c

    .line 140
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWidth:[I

    iget-object v4, p0, Lorg/telegram/ui/MainTabsLayout;->tabsTextWidthWithMargin:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    .line 141
    iget-object v3, p0, Lorg/telegram/ui/MainTabsLayout;->tabsLeftPos:[I

    aput v2, v3, v1

    .line 142
    iget-object v3, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWidth:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 145
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0, v2, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 146
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_d
    if-ge v6, p1, :cond_12

    .line 147
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/MainTabsLayout;->tabsWidth:[I

    aget v1, v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    .line 149
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 150
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 148
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 185
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->calculateTotalSizesAfterMeasure()V

    return-void
.end method

.method protected setChildVisibilityFactor(Landroid/view/View;F)V
    .locals 2

    const v0, 0x3f333333    # 0.7f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 272
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
