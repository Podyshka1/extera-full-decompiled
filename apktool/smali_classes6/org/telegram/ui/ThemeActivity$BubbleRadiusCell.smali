.class Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubbleRadiusCell"
.end annotation


# instance fields
.field private endRadius:I

.field private sizeBar:Lorg/telegram/ui/Components/SeekBarView;

.field private startRadius:I

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/ThemeActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetendRadius(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->endRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsizeBar(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)Lorg/telegram/ui/Components/SeekBarView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartRadius(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->startRadius:I

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V
    .locals 7

    .line 391
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->this$0:Lorg/telegram/ui/ThemeActivity;

    .line 392
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->startRadius:I

    const/16 v1, 0x11

    .line 387
    iput v1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->endRadius:I

    .line 394
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 396
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41800000    # 16.0f

    .line 397
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 399
    new-instance v0, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    .line 400
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->endRadius:I

    iget v2, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->startRadius:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/SeekBarView;->setSeparatorsCount(I)V

    .line 402
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell$1;-><init>(Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 423
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    const/high16 v5, 0x421c0000    # 39.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, 0x42180000    # 38.0f

    const/16 v2, 0x33

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 440
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x421c0000    # 39.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 446
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getSeekBarAccessibilityDelegate()Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 434
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    sget p2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    iget v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->startRadius:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget v1, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->endRadius:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 452
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->sizeBar:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->getSeekBarAccessibilityDelegate()Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
