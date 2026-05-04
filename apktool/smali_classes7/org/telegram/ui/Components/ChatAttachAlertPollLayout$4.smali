.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4;
.super Lorg/telegram/ui/Components/FillLastLinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method protected getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 3

    .line 293
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 295
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    const/4 p2, 0x0

    .line 297
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v0

    .line 298
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 302
    :goto_0
    filled-new-array {p2, v2}, [I

    move-result-object p1

    return-object p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 272
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$4;Landroid/content/Context;)V

    .line 285
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 286
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
