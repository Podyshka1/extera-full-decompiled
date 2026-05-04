.class Lorg/telegram/ui/Components/AudioPlayerAlert$18;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1443
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1444
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1399
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x3

    .line 1402
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1407
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1408
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 1409
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetpadWithItem(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1412
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsavedMusicList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/messenger/MessagesController$SavedMusicList;

    move-result-object p3

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->move(II)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 1414
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsavedMusicList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/messenger/MessagesController$SavedMusicList;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->move(II)V

    .line 1416
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1417
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsavedMusicList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/messenger/MessagesController$SavedMusicList;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1418
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1430
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1433
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$18;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    if-eqz p1, :cond_1

    .line 1435
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1438
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
