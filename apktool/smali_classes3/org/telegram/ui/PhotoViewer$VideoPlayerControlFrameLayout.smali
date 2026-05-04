.class Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoPlayerControlFrameLayout"
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private lastTimeWidth:I

.field private parentHeight:I

.field private parentWidth:I

.field private progress:F

.field private seekBarTransitionEnabled:Z

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private translationYAnimationEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$2WcLCts5KE83ySi_nw6reCprS-Y(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputparentHeight(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->parentHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputparentWidth(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->parentWidth:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 2

    .line 3491
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 3492
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3467
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->progress:F

    const/4 p2, 0x1

    .line 3469
    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->translationYAnimationEnabled:Z

    .line 3475
    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 3476
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v0, 0x443b8000    # 750.0f

    .line 3478
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 3479
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 3477
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;)V

    .line 3480
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    .line 3493
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 2

    .line 3482
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->parentWidth:I

    iget p3, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->parentHeight:I

    if-le p1, p3, :cond_0

    const/high16 p1, 0x42400000    # 48.0f

    .line 3483
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3488
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

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

    .line 3601
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3602
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetexitFullscreenButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3603
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->seekBarTransitionEnabled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 3604
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 3605
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 3606
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    sub-float p1, v1, p1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3607
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3608
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setTransitionProgress(F)V

    return-void

    .line 3610
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->translationYAnimationEnabled:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 3611
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3613
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbarView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 3590
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->progress:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 3511
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3513
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    const/4 v0, 0x0

    .line 3514
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->lastTimeWidth:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3578
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3580
    iget-object p2, p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3581
    iget-object p2, p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide p2

    long-to-float p2, p2

    iget-object p3, p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide p3

    long-to-float p3, p3

    div-float/2addr p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3583
    :goto_0
    iget-object p3, p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplayerWasReady(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3584
    iget-object p3, p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 3586
    :cond_1
    iget-object p3, p1, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTimelineView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x1

    .line 3528
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->ignoreLayout:Z

    .line 3529
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3530
    iget v2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->parentWidth:I

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->parentHeight:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    .line 3531
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetexitFullscreenButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3532
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetexitFullscreenButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const/high16 v2, 0x42400000    # 48.0f

    .line 3534
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x423c0000    # 47.0f

    .line 3535
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 3537
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetexitFullscreenButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 3538
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetexitFullscreenButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const/high16 v2, 0x41400000    # 12.0f

    .line 3541
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v2, v4

    .line 3543
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->ignoreLayout:Z

    .line 3544
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3546
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_4

    .line 3547
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide p1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v7

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v5, p1

    goto :goto_1

    .line 3551
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->isControllable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3552
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoViewerWebView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result p1

    int-to-long v5, p1

    :cond_5
    :goto_1
    const-wide/16 p1, 0x3e8

    .line 3556
    div-long/2addr v5, p1

    const-wide/16 p1, 0x3c

    .line 3558
    div-long v7, v5, p1

    cmp-long v1, v7, p1

    const/4 v3, 0x2

    if-lez v1, :cond_6

    .line 3559
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

    .line 3561
    :cond_6
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

    .line 3564
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

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

    .line 3565
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 3566
    iget p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->lastTimeWidth:I

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result p2

    int-to-float v0, p1

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_7

    .line 3567
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 3568
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_3

    .line 3570
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

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

    .line 3571
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->timeValue:Landroidx/dynamicanimation/animation/FloatValueHolder;

    int-to-float v0, p1

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 3573
    :goto_3
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->lastTimeWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 3498
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3501
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

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

    .line 3502
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3503
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbarView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return v0
.end method

.method public requestLayout()V
    .locals 1

    .line 3519
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3522
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 3594
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->progress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 3595
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->progress:F

    .line 3596
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->onProgressChanged(F)V

    :cond_0
    return-void
.end method

.method public setSeekBarTransitionEnabled(Z)V
    .locals 2

    .line 3622
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->seekBarTransitionEnabled:Z

    if-eq v0, p1, :cond_1

    .line 3623
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->seekBarTransitionEnabled:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 3625
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3626
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbarView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 3628
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3629
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerTime(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3630
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerSeekbar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setTransitionProgress(F)V

    .line 3632
    :goto_0
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->progress:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->onProgressChanged(F)V

    :cond_1
    return-void
.end method

.method public setTranslationYAnimationEnabled(Z)V
    .locals 1

    .line 3637
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->translationYAnimationEnabled:Z

    if-eq v0, p1, :cond_1

    .line 3638
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->translationYAnimationEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3640
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 3642
    :cond_0
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->progress:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;->onProgressChanged(F)V

    :cond_1
    return-void
.end method
