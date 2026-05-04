.class Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoPlayerControlFrameLayout"
.end annotation


# instance fields
.field public final SEEKBAR_ALPHA:Landroid/util/Property;

.field private ignoreLayout:Z

.field private lastTimeWidth:I

.field private parentHeight:I

.field private parentWidth:I

.field private progress:F

.field private seekBarTransitionEnabled:Z

.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;

.field private timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private translationYAnimationEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$IMujwW4wl06bT4dYEgHgDxINKuw(Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/content/Context;)V
    .locals 2

    .line 2569
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    .line 2570
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2545
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->progress:F

    const/4 p2, 0x1

    .line 2546
    iput-boolean p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->seekBarTransitionEnabled:Z

    .line 2547
    iput-boolean p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->translationYAnimationEnabled:Z

    .line 2553
    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 2554
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v0, 0x443b8000    # 750.0f

    .line 2556
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 2557
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 2555
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;)V

    .line 2558
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2668
    new-instance p1, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout$1;

    const-string p2, "progress"

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout$1;-><init>(Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->SEEKBAR_ALPHA:Landroid/util/Property;

    const/4 p1, 0x0

    .line 2571
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    .line 2560
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->parentWidth:I

    iget p3, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->parentHeight:I

    if-le p1, p3, :cond_0

    const/high16 p1, 0x42400000    # 48.0f

    .line 2561
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2566
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setSize(II)V

    return-void
.end method

.method private onProgressChanged(F)V
    .locals 3

    .line 2681
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2682
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->seekBarTransitionEnabled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2683
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 2685
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    sub-float p1, v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2686
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2687
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setTransitionProgress(F)V

    return-void

    .line 2689
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->translationYAnimationEnabled:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2690
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2692
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbarView(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 2658
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->progress:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2589
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2591
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    const/4 v0, 0x0

    .line 2592
    iput v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->lastTimeWidth:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2649
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 2651
    iget-object p2, p1, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2652
    iget-object p2, p1, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide p2

    long-to-float p2, p2

    iget-object p3, p1, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide p3

    long-to-float p3, p3

    div-float/2addr p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2654
    :goto_0
    iget-object p3, p1, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p3}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x1

    .line 2606
    iput-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->ignoreLayout:Z

    .line 2607
    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2608
    iget v2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->parentWidth:I

    iget v3, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->parentHeight:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    const/high16 v2, 0x42400000    # 48.0f

    .line 2609
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x423c0000    # 47.0f

    .line 2610
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41400000    # 12.0f

    .line 2613
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v2, v4

    .line 2615
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->ignoreLayout:Z

    .line 2616
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2618
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_2

    .line 2619
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide p1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v7

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v5, p1

    :cond_2
    :goto_1
    const-wide/16 p1, 0x3e8

    .line 2626
    div-long/2addr v5, p1

    const-wide/16 p1, 0x3c

    .line 2629
    div-long v7, v5, p1

    cmp-long v1, v7, p1

    const/4 v3, 0x2

    if-lez v1, :cond_3

    .line 2630
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    div-long v9, v7, p1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    rem-long/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    rem-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v9, p2, v4

    aput-object v7, p2, v0

    aput-object p1, p2, v3

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2632
    :cond_3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    rem-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v7, p2, v4

    aput-object p1, p2, v0

    const-string p1, "%02d:%02d"

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2635
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string p1, "%1$s / %1$s"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 2636
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 2637
    iget p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->lastTimeWidth:I

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p2

    int-to-float v0, p1

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_4

    .line 2638
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2639
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_3

    .line 2641
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p2}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setSize(II)V

    .line 2642
    iget-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    int-to-float v0, p1

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 2644
    :goto_3
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->lastTimeWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2576
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2579
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbar(Lorg/telegram/ui/SecretMediaViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->onTouch(IFF)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2580
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2581
    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {p1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetseekbarView(Lorg/telegram/ui/SecretMediaViewer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return v0
.end method

.method public requestLayout()V
    .locals 1

    .line 2597
    iget-boolean v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2600
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 2662
    iget v0, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->progress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2663
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->progress:F

    .line 2664
    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretMediaViewer$VideoPlayerControlFrameLayout;->onProgressChanged(F)V

    :cond_0
    return-void
.end method
