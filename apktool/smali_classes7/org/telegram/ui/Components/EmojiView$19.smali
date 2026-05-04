.class Lorg/telegram/ui/Components/EmojiView$19;
.super Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0

    .line 2221
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2227
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcontentPreviewViewerDelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    .line 2228
    invoke-super {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

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

.method protected onLayout(ZIIII)V
    .locals 3

    .line 2238
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfirstStickersAttach(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2239
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->ignoreLayout:Z

    .line 2240
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2241
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputfirstStickersAttach(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 2242
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$19;->ignoreLayout:Z

    .line 2244
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 2245
    iget-object p2, p1, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckStickersSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 2

    .line 2258
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 2259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 2261
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$minvalidateBlurCaptures(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2263
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersTabContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2264
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersTab(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    :cond_2
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2250
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2253
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2233
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    return-void
.end method
