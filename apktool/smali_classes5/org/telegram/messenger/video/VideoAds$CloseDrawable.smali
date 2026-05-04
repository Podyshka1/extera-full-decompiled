.class public Lorg/telegram/messenger/video/VideoAds$CloseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/VideoAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseDrawable"
.end annotation


# instance fields
.field private alpha:I

.field private final max_display_duration:J

.field private final min_display_duration:J

.field private minusTime:J

.field private final paint:Landroid/graphics/Paint;

.field private final parentView:Landroid/view/View;

.field private paused:Z

.field private pausedTime:J

.field private final showCrossAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final showTimerAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final startTime:J

.field private final timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final timerScaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/view/View;IIJ)V
    .locals 9

    .line 639
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 630
    new-instance v0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 634
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    .line 712
    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paused:Z

    const/16 v1, 0xff

    .line 724
    iput v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->alpha:I

    .line 640
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->parentView:Landroid/view/View;

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p4

    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->startTime:J

    int-to-long p4, p2

    const-wide/16 v1, 0x3e8

    mul-long/2addr p4, v1

    .line 642
    iput-wide p4, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->min_display_duration:J

    int-to-long p2, p3

    mul-long/2addr p2, v1

    .line 643
    iput-wide p2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->max_display_duration:J

    .line 645
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 646
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 647
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 p2, -0x1

    .line 648
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 p3, 0x11

    .line 651
    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 652
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 653
    const-string p3, "fonts/num.otf"

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 654
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 655
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 657
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1a4

    move-object v2, p1

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v3, v2

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->showCrossAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 658
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1a4

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->showTimerAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 659
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timerScaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 671
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v6, v1

    .line 672
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v7, v1

    .line 674
    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paused:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->pausedTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->minusTime:J

    sub-long/2addr v1, v3

    .line 675
    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->startTime:J

    sub-long/2addr v1, v3

    .line 676
    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->min_display_duration:J

    sub-long/2addr v3, v1

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float v5, v3

    .line 677
    iget-wide v8, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->min_display_duration:J

    long-to-float v10, v8

    div-float v10, v5, v10

    cmp-long v1, v1, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gez v1, :cond_1

    move v1, v9

    goto :goto_1

    :cond_1
    move v1, v8

    .line 680
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->showTimerAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v3

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 683
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timerScaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    if-lt v3, v4, :cond_2

    const v3, 0x3f533333    # 0.825f

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    const/high16 v3, 0x3f600000    # 0.875f

    goto :goto_2

    :cond_3
    move v3, v12

    :goto_2
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    .line 684
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 685
    invoke-virtual {p1, v2, v2, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 686
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sub-float v2, v6, v12

    sub-float v3, v7, v12

    add-float v4, v6, v12

    add-float v5, v7, v12

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    .line 688
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->alpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 689
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 690
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 692
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->alpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 693
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 694
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v7, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v7

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v2, -0x3c4c0000    # -360.0f

    mul-float v3, v10, v2

    const/4 v4, 0x0

    .line 695
    iget-object v5, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 697
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->showCrossAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v2, v12, v10

    mul-float/2addr v2, v1

    const/high16 v1, 0x42960000    # 75.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    .line 698
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    invoke-static {v6, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 699
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v7, v1

    invoke-static {v7, v1, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    .line 700
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3eb33333    # 0.35f

    invoke-static {v4, v12, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    mul-float/2addr v3, v4

    .line 702
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->alpha:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    move v0, v1

    sub-float v1, v2, v3

    sub-float v4, v0, v3

    add-float/2addr v2, v3

    add-float/2addr v0, v3

    .line 703
    iget-object v5, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    move v3, v2

    move v2, v4

    move v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 704
    iget-object v5, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    move v0, v4

    move v4, v2

    move v2, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_5

    .line 707
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 749
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 745
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isCrossAvailable()Z
    .locals 4

    .line 663
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->pausedTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->minusTime:J

    sub-long/2addr v0, v2

    .line 664
    :goto_0
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->startTime:J

    sub-long/2addr v0, v2

    .line 665
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->min_display_duration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 727
    iput p1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->alpha:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 735
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 736
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->timer:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 732
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setPaused(Z)V
    .locals 4

    .line 714
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paused:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 715
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->paused:Z

    if-eqz p1, :cond_1

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->pausedTime:J

    return-void

    .line 719
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->pausedTime:J

    sub-long/2addr v0, v2

    .line 720
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->minusTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/telegram/messenger/video/VideoAds$CloseDrawable;->minusTime:J

    return-void
.end method
