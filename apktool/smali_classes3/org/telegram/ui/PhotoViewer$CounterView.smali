.class Lorg/telegram/ui/PhotoViewer$CounterView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CounterView"
.end annotation


# instance fields
.field private currentCount:I

.field private height:I

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private rotation:F

.field private staticLayout:Landroid/text/StaticLayout;

.field private textPaint:Landroid/text/TextPaint;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2387
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2383
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->currentCount:I

    .line 2388
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41700000    # 15.0f

    .line 2389
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2390
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2391
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->textPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2393
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    .line 2394
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2395
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2396
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2397
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2399
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rect:Landroid/graphics/RectF;

    .line 2401
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$CounterView;->setCount(I)V

    return-void
.end method


# virtual methods
.method public getRotationX()F
    .locals 1

    .line 2420
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rotation:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 2467
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2468
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2469
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v4, v6, v7, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2470
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2471
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->staticLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 2472
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->textPaint:Landroid/text/TextPaint;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rotation:F

    sub-float v2, v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2474
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->height:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rotation:F

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2475
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 2476
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2477
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rotation:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2478
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-int v7, v1

    .line 2479
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    .line 2480
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rotation:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v8, v1

    .line 2481
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v7

    int-to-float v1, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v8, v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v7, v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2482
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v1, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v8, v0

    int-to-float v2, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v7, v0

    int-to-float v3, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v8, v0

    int-to-float v4, v8

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 2462
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->width:I

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setCount(I)V
    .locals 12

    .line 2424
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->textPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->staticLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    .line 2425
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->width:I

    .line 2426
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->height:I

    .line 2427
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 2428
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    if-nez p1, :cond_0

    .line 2429
    new-array v7, v8, [F

    const/4 v9, 0x0

    aput v9, v7, v1

    .line 2430
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v7, v8, [F

    aput v9, v7, v1

    .line 2431
    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    sget-object v9, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    filled-new-array {v1}, [I

    move-result-object v10

    .line 2432
    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->textPaint:Landroid/text/TextPaint;

    filled-new-array {v1}, [I

    move-result-object v11

    .line 2433
    invoke-static {v10, v9, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v6, v3, v1

    aput-object v5, v3, v8

    aput-object v7, v3, v4

    aput-object v9, v3, v2

    .line 2429
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2434
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_0

    .line 2435
    :cond_0
    iget v7, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->currentCount:I

    if-nez v7, :cond_1

    .line 2436
    new-array v7, v4, [F

    fill-array-data v7, :array_0

    .line 2437
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v7, v4, [F

    fill-array-data v7, :array_1

    .line 2438
    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->paint:Landroid/graphics/Paint;

    sget-object v9, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    const/16 v10, 0xff

    filled-new-array {v1, v10}, [I

    move-result-object v11

    .line 2439
    invoke-static {v7, v9, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->textPaint:Landroid/text/TextPaint;

    filled-new-array {v1, v10}, [I

    move-result-object v10

    .line 2440
    invoke-static {v11, v9, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v6, v3, v1

    aput-object v5, v3, v8

    aput-object v7, v3, v4

    aput-object v9, v3, v2

    .line 2436
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2441
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    if-ge p1, v7, :cond_2

    .line 2443
    new-array v2, v4, [F

    fill-array-data v2, :array_2

    .line 2444
    invoke-static {p0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    .line 2445
    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v1

    aput-object v3, v4, v8

    .line 2443
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2446
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 2448
    :cond_2
    new-array v2, v4, [F

    fill-array-data v2, :array_4

    .line 2449
    invoke-static {p0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v4, [F

    fill-array-data v3, :array_5

    .line 2450
    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v1

    aput-object v3, v4, v8

    .line 2448
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2451
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    const-wide/16 v1, 0xb4

    .line 2454
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2455
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2456
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2457
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->currentCount:I

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

    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setRotationX(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2414
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$CounterView;->rotation:F

    .line 2415
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2407
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2408
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
