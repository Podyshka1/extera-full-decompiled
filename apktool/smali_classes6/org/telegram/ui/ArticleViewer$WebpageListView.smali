.class public abstract Lorg/telegram/ui/ArticleViewer$WebpageListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebpageListView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 13692
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 13693
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 13740
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckVideoPlayer(Lorg/telegram/ui/ArticleViewer;)V

    .line 13741
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 13718
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLink(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 13719
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLink(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 13720
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 13721
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLinkOwnerView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V

    :cond_2
    move-object v3, p1

    goto :goto_0

    .line 13722
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLink(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    if-eqz v0, :cond_2

    .line 13723
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLinkOwnerView(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckLayoutForLinks(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    .line 13725
    :goto_0
    invoke-super {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 13698
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 13699
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    .line 13701
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 13702
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 13703
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 13704
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 13705
    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 13706
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 13707
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 13708
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p2, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p5, p3, p4, v0, p2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 13746
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 13747
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    if-eqz p1, :cond_0

    .line 13748
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 13730
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpressedLink(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpopupWindow(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 13731
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLink(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 13732
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLinkOwnerLayout(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 13733
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageListView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputpressedLinkOwnerView(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V

    .line 13735
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
