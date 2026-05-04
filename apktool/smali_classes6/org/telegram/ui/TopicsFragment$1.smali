.class Lorg/telegram/ui/TopicsFragment$1;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionBarPaint:Landroid/graphics/Paint;

.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 420
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 579
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$1;->actionBarPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/TopicsFragment;)V

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 587
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 589
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v2

    if-nez v2, :cond_3

    .line 590
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->needUpdateDisplayList(II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3Invalidated(Lorg/telegram/ui/TopicsFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 592
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 593
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 596
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v2

    if-nez v2, :cond_5

    .line 597
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->needUpdateDisplayList(II)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3Invalidated(Lorg/telegram/ui/TopicsFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 603
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/TopicsFragment;Z)V

    .line 606
    :cond_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->actionBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->actionBarPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/TopicsFragment;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$1;->actionBarPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v11, p1

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_7
    move-object v1, p1

    .line 613
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, p1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-nez v0, :cond_8

    .line 614
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/TopicsFragment;)I

    move-result v0

    invoke-static {v1, p0, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;II)V

    :cond_8
    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 6

    .line 620
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p5, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p5}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object p5

    if-nez p5, :cond_1

    :cond_0
    move-object v1, p1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p5, 0x0

    neg-float v0, p2

    .line 626
    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 627
    iget-object p5, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p5}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    iget p5, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, p5

    iget p5, p3, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    add-float v3, p5, p2

    iget p5, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, p5

    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p5, p5

    add-float v5, p5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->draw(Landroid/graphics/Canvas;FFFF)V

    .line 628
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 630
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    const/16 p2, 0xb2

    .line 631
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 632
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 633
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 621
    :goto_0
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment$1;->getActionBarFullHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 437
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/TopicsFragment;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-interface {v1, p1, v2, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/TopicsFragment;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/TopicsFragment;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 440
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 441
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v5}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/TopicsFragment;)F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v6, v0

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move v8, v6

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 443
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    int-to-float v6, v0

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move v8, v6

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 449
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V
    .locals 5

    const/4 p2, 0x0

    .line 565
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 569
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p3, :cond_0

    .line 570
    instance-of v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;

    if-eqz v2, :cond_0

    .line 571
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$IViewWithInvalidateCallback;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 574
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getActionBarFullHeight()I
    .locals 3

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->access$000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchTabsView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchTabsView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchTabsView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 429
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/TopicsFragment;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 497
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p4, p2

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p1, :cond_7

    .line 506
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 507
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    .line 508
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 511
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 516
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    move v6, p3

    .line 523
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    .line 524
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v6, v6, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    .line 539
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v0

    goto :goto_2

    :cond_1
    sub-int v7, p4, v4

    .line 534
    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v7, v8

    goto :goto_2

    :cond_2
    sub-int v7, p4, v0

    sub-int/2addr v7, v4

    .line 529
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :goto_2
    const/16 v8, 0x10

    if-eq v6, v8, :cond_4

    const/16 v8, 0x50

    if-eq v6, v8, :cond_3

    .line 552
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, p2

    .line 553
    instance-of v6, v2, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 554
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v6}, Lorg/telegram/ui/TopicsFragment;->access$300(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v8}, Lorg/telegram/ui/TopicsFragment;->access$400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    goto :goto_4

    :cond_3
    sub-int v6, p5, v5

    .line 548
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v3, v6, v3

    goto :goto_4

    :cond_4
    sub-int v6, p5, p2

    sub-int/2addr v6, v5

    .line 544
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p2

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_5
    :goto_4
    add-int/2addr v4, v7

    add-int/2addr v5, v3

    .line 558
    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 456
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 457
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 459
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 460
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment$1;->ignoreLayout:Z

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/TopicsFragment;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 462
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment$1;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v3}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/TopicsFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 463
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$1;->ignoreLayout:Z

    :cond_0
    move v1, v2

    move v8, v1

    .line 467
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 468
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 469
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_1

    .line 470
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 471
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v9, v2

    .line 474
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_5

    .line 475
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 476
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v2, :cond_3

    .line 477
    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 478
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_3
    move v5, v8

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v8

    .line 480
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v8, v5

    goto :goto_1

    .line 484
    :cond_5
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 489
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$1;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
