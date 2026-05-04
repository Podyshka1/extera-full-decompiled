.class Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

.field final synthetic val$dragDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    iput-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->val$dragDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 287
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 288
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 289
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 290
    iget-object v0, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {v0}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetdraggingItemView(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Landroid/view/View;

    move-result-object v0

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 291
    iget-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p2, v1}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fputdraggingItemView(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;Landroid/view/View;)V

    .line 293
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 246
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p2}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetaccounts(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    .line 247
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 281
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 282
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 252
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 253
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 254
    iget-object p3, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p3}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetaccounts(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p3}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetaccounts(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object p3, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p3}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetadapter(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AccountAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$AccountAdapter;->swapElements(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 271
    iget-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fputdraggingItemView(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;Landroid/view/View;)V

    .line 272
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetdraggingItemView(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 273
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetdraggingItemView(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 274
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetrecyclerView(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->val$dragDrawingOrderCallback:Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 275
    iget-object p1, p0, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView$5;->this$0:Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;

    invoke-static {p1}, Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;->-$$Nest$fgetrecyclerView(Lcom/exteragram/messenger/drawer/DrawerAccountPickerView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
