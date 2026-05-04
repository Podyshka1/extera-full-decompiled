.class public Lcom/exteragram/messenger/pillstack/ui/PillStackView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private currentAnimator:Landroid/animation/ValueAnimator;

.field private currentIndex:I

.field private currentSwipeProgress:F

.field private isSwiping:Z

.field private isSwipingUp:Z

.field private longClickPerformed:Z

.field private final longPressRunnable:Ljava/lang/Runnable;

.field private maybeClick:Z

.field private final pills:Ljava/util/List;

.field private startX:F

.field private startY:F

.field private final touchSlop:F

.field private visibilityFactor:F


# direct methods
.method public static synthetic $r8$lambda$cWJx3vHzhNT0xjN6XCQagRksPi8(Lcom/exteragram/messenger/pillstack/ui/PillStackView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->lambda$cancelSwipe$1(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vRI0TE6ZldQfh8TthHXwywoSABk(Lcom/exteragram/messenger/pillstack/ui/PillStackView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->lambda$animateToNextPill$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentIndex(Lcom/exteragram/messenger/pillstack/ui/PillStackView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSwiping(Lcom/exteragram/messenger/pillstack/ui/PillStackView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlongClickPerformed(Lcom/exteragram/messenger/pillstack/ui/PillStackView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longClickPerformed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaybeClick(Lcom/exteragram/messenger/pillstack/ui/PillStackView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->maybeClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpills(Lcom/exteragram/messenger/pillstack/ui/PillStackView;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentIndex(Lcom/exteragram/messenger/pillstack/ui/PillStackView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentSwipeProgress(Lcom/exteragram/messenger/pillstack/ui/PillStackView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlongClickPerformed(Lcom/exteragram/messenger/pillstack/ui/PillStackView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longClickPerformed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    .line 46
    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/PillStackView$1;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackView$1;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackView;)V

    iput-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longPressRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    .line 59
    iput-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 62
    iput v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->visibilityFactor:F

    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->touchSlop:F

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private animateToNextPill(Z)V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 345
    :cond_0
    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/PillStackView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/PillStackView$2;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView$2;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 397
    iget-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private applyProgress(FZ)V
    .locals 7

    .line 271
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    .line 272
    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    if-eqz p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 274
    :goto_0
    sget-boolean v2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->infiniteScrolling:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    move v1, v3

    :cond_1
    if-gez v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    move v2, v3

    .line 279
    :goto_1
    iget-object v4, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 280
    iget v4, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    if-eq v2, v4, :cond_3

    if-eq v2, v1, :cond_3

    .line 281
    iget-object v4, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 282
    iget-object v4, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    :cond_4
    sget-boolean v2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->infiniteScrolling:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_7

    .line 288
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    if-gez v1, :cond_7

    .line 289
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e3851ec    # 0.18f

    mul-float/2addr p1, v2

    float-to-double v2, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v5

    div-double v2, v5, v2

    sub-double/2addr v5, v2

    double-to-float p1, v5

    if-eqz p2, :cond_6

    mul-float/2addr v1, p1

    neg-float p1, v1

    goto :goto_2

    :cond_6
    mul-float/2addr p1, v1

    .line 291
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 292
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 297
    :cond_7
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 298
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 301
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    if-eqz p2, :cond_9

    neg-float v2, v2

    .line 305
    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    sub-float v2, v4, p1

    .line 306
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, p1

    sub-float/2addr v4, v2

    .line 307
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 308
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    const v0, 0x3f4ccccd    # 0.8f

    add-float/2addr v2, v0

    .line 311
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 312
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 313
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_a

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_3
    int-to-float p2, p2

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    goto :goto_3

    :goto_4
    mul-float/2addr p1, p2

    sub-float/2addr p2, p1

    .line 316
    invoke-virtual {v1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private cancelSwipe(Z)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 403
    :cond_0
    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 406
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/PillStackView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    iget-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/PillStackView$3;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackView$3;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    iget-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private finishSwipe(F)V
    .locals 4

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 322
    iget-boolean p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->cancelSwipe(Z)V

    return-void

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    .line 328
    sget-boolean v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->infiniteScrolling:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 329
    iget-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    sub-int/2addr v1, v2

    .line 330
    :goto_0
    iget-object v3, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-gez v1, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 335
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    if-eqz v2, :cond_4

    .line 336
    iget-boolean p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->animateToNextPill(Z)V

    return-void

    .line 338
    :cond_4
    iget-boolean p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->cancelSwipe(Z)V

    return-void
.end method

.method private handleSwipeProgress(F)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 254
    :goto_1
    iput-boolean v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    .line 255
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 257
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    sub-int/2addr v0, v1

    .line 258
    :goto_2
    sget-boolean v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->infiniteScrolling:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    .line 259
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    if-gez v0, :cond_5

    .line 262
    :cond_4
    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    goto :goto_3

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 264
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    .line 267
    :goto_3
    iget p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->applyProgress(FZ)V

    return-void
.end method

.method private synthetic lambda$animateToNextPill$0(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 350
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 351
    invoke-direct {p0, p2, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->applyProgress(FZ)V

    return-void
.end method

.method private synthetic lambda$cancelSwipe$1(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 407
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 408
    invoke-direct {p0, p2, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->applyProgress(FZ)V

    return-void
.end method


# virtual methods
.method public addPill(Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f4ccccd    # 0.8f

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/16 v0, 0x8

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onPillSelected()V

    return-void
.end method

.method public clearPills()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    invoke-virtual {v0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onPillUnselected()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    return-void
.end method

.method public getPillsCount()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startX:F

    sub-float/2addr v0, v1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startY:F

    sub-float/2addr v1, v2

    .line 159
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->touchSlop:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->touchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 160
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->touchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 161
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    .line 163
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 166
    :cond_3
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 167
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startY:F

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    return v1

    .line 152
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startX:F

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startY:F

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    .line 180
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    goto/16 :goto_1

    .line 203
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startX:F

    sub-float/2addr v0, v3

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startY:F

    sub-float/2addr v3, v4

    .line 206
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->touchSlop:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->touchSlop:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 207
    :cond_2
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->maybeClick:Z

    .line 208
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 211
    :cond_3
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    if-eqz v0, :cond_4

    .line 212
    invoke-direct {p0, v3}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->handleSwipeProgress(F)V

    return v2

    .line 214
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->touchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_8

    .line 215
    iput-boolean v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    .line 217
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 220
    :cond_5
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwipingUp:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentSwipeProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 221
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startY:F

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    return v2

    .line 246
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 232
    :cond_9
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    if-eqz v0, :cond_a

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startY:F

    sub-float/2addr p1, v0

    .line 235
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->finishSwipe(F)V

    .line 236
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    goto :goto_2

    .line 237
    :cond_a
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->maybeClick:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longClickPerformed:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_b

    .line 238
    iget-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    invoke-virtual {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onPillClicked()V

    :cond_b
    :goto_2
    move p1, v1

    .line 240
    :goto_3
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 241
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 243
    :cond_c
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->maybeClick:Z

    return v2

    .line 190
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startX:F

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->startY:F

    .line 192
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->isSwiping:Z

    .line 193
    iput-boolean v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->maybeClick:Z

    .line 194
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longClickPerformed:Z

    .line 195
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    return v2
.end method

.method public setCurrentIndex(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    const/16 v1, 0x8

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onPillUnselected()V

    .line 97
    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->currentIndex:I

    .line 99
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 105
    invoke-virtual {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onPillSelected()V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibilityFactor(F)V
    .locals 2

    .line 120
    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->visibilityFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iput p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->visibilityFactor:F

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_1
    iget p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->visibilityFactor:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 127
    iget p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->visibilityFactor:F

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 128
    iget p1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->visibilityFactor:F

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_2
    const/16 p1, 0x8

    .line 130
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackView;->pills:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;

    .line 136
    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->updateColors()V

    goto :goto_0

    :cond_0
    return-void
.end method
