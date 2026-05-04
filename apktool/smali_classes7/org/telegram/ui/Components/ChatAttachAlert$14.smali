.class Lorg/telegram/ui/Components/ChatAttachAlert$14;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final hasFadeLeft:Lme/vkryl/android/animator/BoolAnimator;

.field private final hasFadeRight:Lme/vkryl/android/animator/BoolAnimator;

.field private mHasFadeLeft:Z

.field private mHasFadeRight:Z

.field private final paintLeft:Landroid/graphics/Paint;

.field private final paintRight:Landroid/graphics/Paint;

.field private final shaderLeft:Landroid/graphics/Shader;

.field private final shaderRight:Landroid/graphics/Shader;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2494
    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 2495
    new-instance v1, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x140

    invoke-direct {v1, v0, v2, v3, v4}, Lme/vkryl/android/animator/BoolAnimator;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;J)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->hasFadeLeft:Lme/vkryl/android/animator/BoolAnimator;

    .line 2496
    new-instance v1, Lme/vkryl/android/animator/BoolAnimator;

    invoke-direct {v1, v0, v2, v3, v4}, Lme/vkryl/android/animator/BoolAnimator;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;J)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->hasFadeRight:Lme/vkryl/android/animator/BoolAnimator;

    .line 2497
    new-instance v5, Landroid/graphics/LinearGradient;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v8, v2

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    filled-new-array {v2, v3}, [I

    move-result-object v10

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v12, v18

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->shaderLeft:Landroid/graphics/Shader;

    .line 2498
    new-instance v11, Landroid/graphics/LinearGradient;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v14, v1

    filled-new-array {v3, v2}, [I

    move-result-object v16

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->shaderRight:Landroid/graphics/Shader;

    .line 2499
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->paintLeft:Landroid/graphics/Paint;

    .line 2500
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->paintRight:Landroid/graphics/Paint;

    .line 2503
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2504
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2505
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2506
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    .line 2513
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeRight:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeLeft:Z

    .line 2514
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2515
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->hasFadeLeft:Lme/vkryl/android/animator/BoolAnimator;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeLeft:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 2516
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->hasFadeRight:Lme/vkryl/android/animator/BoolAnimator;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeRight:Z

    invoke-virtual {p1, v0, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13

    .line 2521
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    .line 2522
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    const/high16 v3, 0x41200000    # 10.0f

    .line 2523
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    .line 2524
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v6, v3

    int-to-float v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-nez v1, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    .line 2527
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeLeft:Z

    or-int/2addr v2, v1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeLeft:Z

    .line 2528
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeRight:Z

    or-int/2addr v2, v6

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->mHasFadeRight:Z

    .line 2530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v7, 0x41980000    # 19.0f

    if-eqz v4, :cond_4

    .line 2532
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2534
    :cond_4
    invoke-super/range {p0 .. p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    .line 2535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, 0x41300000    # 11.0f

    if-eqz v1, :cond_5

    .line 2538
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 2539
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 2540
    invoke-super/range {p0 .. p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2542
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->hasFadeLeft:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v3}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v3

    sub-float v3, v10, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2543
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->paintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 2544
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2545
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    if-eqz v6, :cond_6

    .line 2549
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 2550
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 2551
    invoke-super/range {p0 .. p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2552
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2553
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->hasFadeRight:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v3}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v3

    sub-float/2addr v10, v3

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2554
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$14;->paintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 2555
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return v8
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 2564
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2565
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 2569
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2570
    instance-of v6, v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;

    if-eqz v6, :cond_0

    .line 2571
    check-cast v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    .line 2572
    invoke-virtual {v5}, Lorg/telegram/ui/Components/glass/GlassTabView;->measureAttachTabWidth()F

    move-result v5

    add-float/2addr v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    cmpl-float v4, v1, v2

    if-lez v4, :cond_2

    if-lez v0, :cond_2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 2577
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-ge v3, v0, :cond_4

    .line 2579
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2580
    instance-of v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;

    if-eqz v4, :cond_3

    .line 2581
    check-cast v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    .line 2582
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setAdditionalWidth(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2585
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method
