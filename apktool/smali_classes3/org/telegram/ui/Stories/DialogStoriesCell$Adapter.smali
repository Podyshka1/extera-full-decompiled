.class Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field mini:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V
    .locals 0

    .line 1409
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    .line 1410
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->mini:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1437
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->mini:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1426
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 1427
    iput p2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    .line 1428
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->mini:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v0, p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setDialogId(J)V

    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-object v0, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v0, p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setDialogId(J)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1416
    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V

    .line 1417
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->mini:Z

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->-$$Nest$fputmini(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Z)V

    .line 1418
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;->mini:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1419
    invoke-virtual {p2, v1, v1, p1, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setProgressToCollapsed(FFFZ)V

    .line 1421
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
