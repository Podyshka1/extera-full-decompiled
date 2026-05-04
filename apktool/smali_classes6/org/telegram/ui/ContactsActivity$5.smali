.class Lorg/telegram/ui/ContactsActivity$5;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 485
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/ContactsActivity;)V

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 490
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 493
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 494
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 497
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 500
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v2

    if-nez v2, :cond_3

    .line 502
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 504
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 507
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 510
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/ContactsActivity;Z)V

    .line 513
    :cond_4
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 6

    .line 518
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p5, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p5}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object p5

    if-nez p5, :cond_1

    :cond_0
    move-object v1, p1

    goto :goto_0

    .line 523
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p5, 0x0

    neg-float v0, p2

    .line 524
    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 525
    iget-object p5, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p5}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

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

    .line 526
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 528
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    const/16 p2, 0xb2

    .line 529
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 530
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 531
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 519
    :goto_0
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 546
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 548
    iget-object p2, p1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_emptyView(Lorg/telegram/ui/ContactsActivity;)V

    .line 549
    iget-object p2, p1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_searchButton(Lorg/telegram/ui/ContactsActivity;)V

    .line 550
    iget-object p2, p1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_sortItem(Lorg/telegram/ui/ContactsActivity;)V

    .line 551
    iget-object p2, p1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_floatingButtonPosition(Lorg/telegram/ui/ContactsActivity;)V

    .line 552
    iget-object p2, p1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_searchFieldY(Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 537
    iget-object p1, v1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, v1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->access$200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 538
    iget-object p1, v1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetheaderShadowView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/HeaderShadowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, v1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 540
    iget-object p1, v1, Lorg/telegram/ui/ContactsActivity$5;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_listViewPadding(Lorg/telegram/ui/ContactsActivity;)V

    .line 541
    invoke-super {p0, v3, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
