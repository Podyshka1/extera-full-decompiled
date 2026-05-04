.class public Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 947
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 948
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 907
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iget-boolean p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 910
    invoke-static {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 908
    :cond_1
    :goto_0
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 925
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 915
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iget-boolean p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->active:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 919
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-static {p1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->-$$Nest$fgetadapter(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->swapElements(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 931
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v1, v1, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fputignoreScroll(Lorg/telegram/ui/ChatEditTypeActivity;Z)V

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->-$$Nest$msendReorder(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v1, v1, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fputignoreScroll(Lorg/telegram/ui/ChatEditTypeActivity;Z)V

    .line 935
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 936
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 938
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
