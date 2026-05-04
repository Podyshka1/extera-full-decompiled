.class Lorg/telegram/ui/Components/RecyclerListView$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
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

    .line 1457
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$mcheckIfEmpty(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetresetSelectorOnChanged(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputcurrentFirst(Lorg/telegram/ui/Components/RecyclerListView;I)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetremoveHighlighSelectionRunnable(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1472
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$mcheckIfEmpty(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    .line 1473
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetpinnedHeader(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fgetpinnedHeader(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 1474
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$fputcurrentFirst(Lorg/telegram/ui/Components/RecyclerListView;I)V

    .line 1475
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1481
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$2;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->-$$Nest$mcheckIfEmpty(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    return-void
.end method
