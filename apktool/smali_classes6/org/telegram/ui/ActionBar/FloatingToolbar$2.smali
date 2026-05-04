.class Lorg/telegram/ui/ActionBar/FloatingToolbar$2;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downRootView:Landroid/view/View;

.field private final p:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1476
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 1494
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    const/4 p1, 0x0

    .line 1495
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->downRootView:Landroid/view/View;

    return-void
.end method

.method private isParent(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 1483
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1484
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1485
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->isParent(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 1486
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p2, :cond_3

    return v0

    .line 1488
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    return v2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1498
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1500
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1501
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    int-to-float v4, v4

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 1503
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->allGlobalViews()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1504
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 1505
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    :goto_0
    if-ltz v4, :cond_3

    .line 1506
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1507
    invoke-direct {p0, p0, v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->isParent(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1508
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    aget v6, v0, v3

    neg-int v6, v6

    int-to-float v6, v6

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1510
    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->downRootView:Landroid/view/View;

    return v1

    .line 1515
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1518
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->downRootView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->p:[I

    aget v3, v0, v3

    neg-int v3, v3

    int-to-float v3, v3

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1522
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1525
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 1526
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$2;->downRootView:Landroid/view/View;

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1479
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1532
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
