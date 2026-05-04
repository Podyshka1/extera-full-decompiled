.class Lorg/telegram/ui/GroupCreateActivity$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 605
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 607
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->inRecording()Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->needUpdateDisplayList(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetiBlur3Invalidated(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->draw(Landroid/graphics/Canvas;I)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->endRecording()V

    .line 614
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/GroupCreateActivity;Z)V

    .line 617
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v1

    invoke-static {p1, p0, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->drawNavigationBarProtection(Landroid/graphics/Canvas;Landroid/view/View;II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 647
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 649
    iget-object p2, p1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckUi_bottomButtons(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 650
    iget-object p2, p1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckUi_floatingButton(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 651
    iget-object p2, p1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckUi_searchFieldY(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 652
    iget-object p2, p1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckUi_listClip(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 653
    iget-object p2, p1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckUi_headerShadowY(Lorg/telegram/ui/GroupCreateActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 623
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 624
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 625
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    if-le v1, v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    goto :goto_1

    .line 626
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/high16 v1, 0x43100000    # 144.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    .line 631
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 632
    iget-object p1, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 633
    iget-object p1, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetheaderShadowView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/HeaderShadowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 634
    iget-object p1, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetsearchField(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 635
    iget-object p1, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 636
    iget-object p1, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetscrollView(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v0, p2, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 638
    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetactionBarBackgroundView(Lorg/telegram/ui/GroupCreateActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 639
    iget-object p2, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity;->access$500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x42540000    # 53.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, v1, Lorg/telegram/ui/GroupCreateActivity$2;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v2, v0, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    add-int/2addr p2, v2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 641
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckUi_listViewPadding(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 642
    invoke-super {p0, v3, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
