.class Lorg/telegram/ui/Components/RecyclerListView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 1527
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 11

    .line 1531
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$mcheckStopHeavyOperations(Lorg/telegram/ui/Components/RecyclerListView;I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1532
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputselectChildRunnable(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 1537
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1539
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetgestureDetector(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1541
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1543
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1544
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1545
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v0

    .line 1546
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 1547
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputcurrentChildView(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)V

    .line 1548
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3, v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$mremoveSelection(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputinterceptedByChild(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    .line 1551
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonScrollListener(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonScrollListener(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1554
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    iput-boolean v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz v1, :cond_5

    .line 1556
    iput-boolean v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrolledByUserOnce:Z

    :cond_5
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1562
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonScrollListener(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetonScrollListener(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1565
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1566
    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    neg-int p2, p2

    neg-int v0, p3

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1567
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 1568
    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1570
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1572
    :cond_2
    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1574
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->checkSection(Z)V

    if-eqz p3, :cond_3

    .line 1575
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetfastScroll(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1576
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetfastScroll(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->showFloatingDate()V

    .line 1578
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetpendingHighlightPosition(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1579
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$3;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetpendingHighlightPosition(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    move-result-object p3

    const/16 v0, 0x2bc

    invoke-static {p1, p3, v0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$mhighlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V

    :cond_4
    return-void
.end method
