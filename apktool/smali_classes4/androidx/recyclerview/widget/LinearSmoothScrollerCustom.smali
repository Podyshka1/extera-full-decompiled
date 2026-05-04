.class public Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "SourceFile"


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field private durationMultiplier:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;

.field private offset:I

.field private scrollPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDy:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->durationMultiplier:F

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->MILLISECONDS_PER_PX:F

    .line 48
    iput p2, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->scrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDy:I

    .line 52
    iput p3, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->durationMultiplier:F

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p3

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->MILLISECONDS_PER_PX:F

    .line 54
    iput p2, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->scrollPosition:I

    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 0

    sub-int p2, p1, p2

    mul-int/2addr p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;)I
    .locals 7

    .line 132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 137
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 138
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v2

    .line 139
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    .line 140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    sub-int v2, p1, v3

    .line 144
    iget v5, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->scrollPosition:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 145
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    iget v4, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->offset:I

    add-int/2addr v0, v4

    goto :goto_0

    :cond_1
    if-le v2, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    sub-int/2addr v4, v2

    .line 149
    div-int/lit8 v0, v4, 0x2

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    iget v4, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->offset:I

    add-int/2addr v0, v4

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    :goto_0
    add-int/2addr v2, v0

    sub-int/2addr v0, v3

    if-lez v0, :cond_4

    return v0

    :cond_4
    sub-int/2addr v2, p1

    if-gez v2, :cond_5

    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4

    .line 98
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->calculateTimeForScrolling(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->MILLISECONDS_PER_PX:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 168
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onEnd()V
    .locals 0

    return-void
.end method

.method protected onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    return-void

    .line 83
    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    .line 84
    iget p1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDy:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDy:I

    .line 86
    iget p2, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 87
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mTargetVector:Landroid/graphics/PointF;

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 68
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->calculateDyToMakeVisible(Landroid/view/View;)I

    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->calculateTimeForDeceleration(I)I

    move-result p2

    if-lez p2, :cond_0

    neg-int p1, p1

    const/high16 v0, 0x43c80000    # 400.0f

    .line 71
    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->durationMultiplier:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->onEnd()V

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 63
    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->offset:I

    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    .line 106
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 114
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mTargetVector:Landroid/graphics/PointF;

    .line 116
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    .line 117
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDy:I

    const/16 v0, 0x2710

    .line 118
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->calculateTimeForScrolling(I)I

    move-result v0

    .line 119
    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    .line 109
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    return-void
.end method
