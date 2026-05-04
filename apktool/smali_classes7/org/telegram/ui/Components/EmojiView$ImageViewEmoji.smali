.class public Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageViewEmoji"
.end annotation


# instance fields
.field backAnimator:Landroid/animation/ValueAnimator;

.field private backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

.field public drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field public ignoring:Z

.field public imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isRecent:Z

.field private pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

.field public position:I

.field pressedProgress:F

.field private span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public static synthetic $r8$lambda$ri2om8IFp4RRHog-B4slAsmI-BQ(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lambda$setPressed$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundThreadDrawHolder(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->isRecent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpack(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$EmojiPack;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspan(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputpack(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView$EmojiPack;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pack:Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 1

    .line 1506
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1507
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x2

    .line 1502
    new-array p2, p2, [Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    .line 1508
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1509
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setPressed$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1550
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    .line 1551
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 1

    .line 1522
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1569
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 1570
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    const/4 v2, 0x0

    .line 1571
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    .line 1572
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1574
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    sub-float/2addr v1, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v0

    const v0, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v0

    .line 1575
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1576
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1577
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1532
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1533
    const-string v0, "android.view.View"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1527
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 1513
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->isRecent:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    .line 1538
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1539
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1540
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1543
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    .line 1547
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 1548
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    .line 1549
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1553
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$1;-><init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1560
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1561
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1562
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public setSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-void
.end method
