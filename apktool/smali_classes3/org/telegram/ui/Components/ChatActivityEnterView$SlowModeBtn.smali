.class Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlowModeBtn"
.end annotation


# instance fields
.field private final bgRect:Landroid/graphics/RectF;

.field private final closeDrawable:Landroid/graphics/drawable/Drawable;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private isPremiumMode:Z

.field private final textView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetisPremiumMode(Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->isPremiumMode:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 496
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->bgRect:Landroid/graphics/RectF;

    .line 491
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->gradientPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->isPremiumMode:Z

    .line 497
    new-instance v1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    .line 498
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 500
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_close_tooltip:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->closeDrawable:Landroid/graphics/drawable/Drawable;

    .line 501
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 502
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 503
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 504
    invoke-static {p0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 558
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->isPremiumMode:Z

    if-eqz v0, :cond_0

    .line 559
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 560
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v1, 0x3f4ccccd    # 0.8f

    .line 561
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 562
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 563
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 564
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 566
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 570
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 544
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->isPremiumMode:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41d00000    # 26.0f

    .line 546
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 547
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 548
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->bgRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v0, v0

    invoke-virtual {v1, v3, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 549
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->bgRect:Landroid/graphics/RectF;

    div-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 550
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->closeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->closeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 552
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 509
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 510
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->gradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float v3, p3

    const p3, -0x8a6c01

    const p4, -0x5b8d01

    filled-new-array {p3, p4}, [I

    move-result-object v5

    const/4 p3, 0x2

    new-array v6, p3, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setGravity(I)V
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPremiumMode(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->isPremiumMode:Z

    .line 535
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SlowModeBtn;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 515
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
