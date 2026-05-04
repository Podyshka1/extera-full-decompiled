.class public Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MentionsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MentionsListView"
.end annotation


# instance fields
.field private isDragging:Z

.field private isScrolling:Z

.field private lastHeight:I

.field private lastWidth:I

.field final synthetic this$0:Lorg/telegram/ui/Components/MentionsContainerView;


# direct methods
.method static bridge synthetic -$$Nest$fputisDragging(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->isDragging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScrolling(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->isScrolling:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    .line 702
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 703
    new-instance p2, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$1;-><init>(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 730
    new-instance p2, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;-><init>(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetlinearLayoutManager(Lorg/telegram/ui/Components/MentionsContainerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 764
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    .line 768
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    .line 772
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->isScrolling:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v5

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_2
    move-object v4, p1

    :cond_3
    move p1, v1

    .line 773
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 774
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->doSomeStickersAction()V

    .line 776
    :cond_6
    invoke-super {p0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    sub-int v6, p4, p2

    sub-int v7, p5, p3

    .line 810
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v1

    .line 811
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getCurrentLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 813
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    .line 815
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v1, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->lastHeight:I

    sub-int/2addr v1, v7

    :goto_1
    sub-int/2addr v4, v1

    goto :goto_2

    :cond_2
    move v4, v8

    .line 818
    :goto_2
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 820
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetscrollToFirst(Lorg/telegram/ui/Components/MentionsContainerView;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 821
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    const v1, 0x186a0

    .line 822
    invoke-virtual {v2, v8, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 823
    invoke-super/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 824
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    .line 825
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fputscrollToFirst(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    goto :goto_3

    :cond_3
    const/4 v1, -0x1

    if-eq v3, v1, :cond_4

    .line 826
    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->lastWidth:I

    if-ne v6, v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->lastHeight:I

    sub-int v1, v7, v1

    if-eqz v1, :cond_4

    .line 827
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    .line 828
    invoke-virtual {v2, v3, v4, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 829
    invoke-super/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 830
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v1, v8}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    .line 833
    :cond_4
    :goto_3
    iput v7, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->lastHeight:I

    .line 834
    iput v6, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->lastWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 847
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/PaddedListAdapter;->setPadding(I)V

    .line 851
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    const/high16 v1, 0x42fc0000    # 126.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const v3, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fputlistViewPadding(Lorg/telegram/ui/Components/MentionsContainerView;F)V

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetlistViewPadding(Lorg/telegram/ui/Components/MentionsContainerView;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 857
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 858
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 860
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$mcheckBackgroundBounds(Lorg/telegram/ui/Components/MentionsContainerView;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetlinearLayoutManager(Lorg/telegram/ui/Components/MentionsContainerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 782
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    .line 786
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetpaddedAdapter(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    .line 790
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$fgetignoreLayout(Lorg/telegram/ui/Components/MentionsContainerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 839
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->-$$Nest$mcheckBackgroundBounds(Lorg/telegram/ui/Components/MentionsContainerView;)V

    return-void
.end method
