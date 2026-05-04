.class Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->resetAdapter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

.field final synthetic val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;Landroid/content/Context;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iput-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    iput-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    const/16 p1, -0x3e8

    return p1

    .line 510
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p2, v0, :cond_1

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_0

    .line 493
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$PaddingView;

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$context:Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$PaddingView;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;->val$adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    new-instance v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8$1;-><init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$8;Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
