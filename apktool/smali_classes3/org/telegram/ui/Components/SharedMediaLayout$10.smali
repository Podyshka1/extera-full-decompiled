.class Lorg/telegram/ui/Components/SharedMediaLayout$10;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 2297
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method private getAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;
    .locals 1

    .line 2301
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 2302
    instance-of v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_0

    .line 2303
    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 2368
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2369
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 2315
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$10;->getAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object p1

    .line 2316
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$10;->isLongPressDragEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->canReorder(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2317
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 2319
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetitemAnimator(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    const/16 p1, 0xf

    .line 2321
    invoke-static {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 2323
    :cond_2
    invoke-static {v1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 2

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->storiesContainer:Lorg/telegram/ui/ProfileStoriesCollectionTabs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileStoriesCollectionTabs;->isReordering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 2329
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$10;->getAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2330
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->canReorder(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->canReorder(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2333
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->swapElements(II)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 2344
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2345
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    :cond_0
    if-nez p2, :cond_2

    .line 2348
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    if-eqz v0, :cond_1

    .line 2349
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->reorderDone()V

    .line 2352
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 2353
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 2356
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$10;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_3

    .line 2357
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    :cond_3
    if-eqz p1, :cond_4

    .line 2360
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2363
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
