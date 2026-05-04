.class public abstract Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "SourceFile"


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 28
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDx:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDy:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->MILLISECONDS_PER_PX:F

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
.method public calculateDxToMakeVisible(Landroid/view/View;)I
    .locals 5

    .line 115
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 120
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    .line 121
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v2

    .line 122
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 123
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    sub-int/2addr v4, v0

    if-le v3, v2, :cond_1

    if-ge p1, v4, :cond_1

    return v1

    :cond_1
    sub-int/2addr v4, v2

    sub-int v0, p1, v3

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    sub-int/2addr v4, v3

    if-lez v4, :cond_2

    return v4

    :cond_2
    sub-int/2addr v0, p1

    if-gez v0, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4

    .line 75
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->calculateTimeForScrolling(I)I

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

    .line 79
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->MILLISECONDS_PER_PX:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    return-void

    .line 60
    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDx:I

    invoke-direct {p0, p3, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDx:I

    .line 61
    iget p1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDy:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->clampApplyScroll(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDy:I

    .line 63
    iget p2, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDx:I

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 64
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

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

    .line 70
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDx:I

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mTargetVector:Landroid/graphics/PointF;

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 47
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->calculateDxToMakeVisible(Landroid/view/View;)I

    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->calculateTimeForDeceleration(I)I

    move-result p2

    if-lez p2, :cond_0

    neg-int p1, p1

    const/16 v0, 0x190

    .line 50
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 92
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mTargetVector:Landroid/graphics/PointF;

    .line 94
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDx:I

    .line 95
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDy:I

    const/16 v0, 0x2710

    .line 96
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->calculateTimeForScrolling(I)I

    move-result v0

    .line 100
    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDx:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearSmoothScrollerEnd;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    .line 87
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    return-void
.end method
