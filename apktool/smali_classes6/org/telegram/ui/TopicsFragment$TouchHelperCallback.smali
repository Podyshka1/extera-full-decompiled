.class public Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field private currentItemViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private swipeFolderBack:Z

.field private swipingFolder:Z

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentItemViewHolder(Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->currentItemViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswipingFolder(Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->swipingFolder:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputswipeFolderBack(Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->swipeFolderBack:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 2462
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 2540
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2541
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .line 2475
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 2476
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2479
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 2480
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v1, :cond_1

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2481
    check-cast p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 2482
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->swipeFolderBack:Z

    .line 2483
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->swipingFolder:Z

    .line 2484
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Cells/DialogCell;->setSliding(Z)V

    const/4 p1, 0x4

    .line 2485
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 2487
    :cond_1
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-nez p1, :cond_2

    .line 2488
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x3

    .line 2490
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 2477
    :cond_3
    :goto_0
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 2470
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 2508
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 2495
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 2498
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_2

    .line 2499
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 2502
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/TopicsFragment$Adapter;->swapElements(II)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 2514
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment;->sendReorder()V

    goto :goto_0

    .line 2516
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 2517
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2519
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 2525
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 2526
    iget-object p2, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p2, :cond_0

    .line 2527
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v0, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget-object v2, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    invoke-virtual {p2, v0, v1, v3, v2}, Lorg/telegram/messenger/TopicsController;->toggleShowTopic(JIZ)V

    .line 2529
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2, p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fputgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V

    .line 2530
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->-$$Nest$msetArchiveHidden(Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;ZLorg/telegram/ui/Cells/DialogCell;)V

    .line 2531
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2, v1, v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mupdateTopicsList(Lorg/telegram/ui/TopicsFragment;ZZ)V

    .line 2532
    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->-$$Nest$fgetcurrentTopic(Lorg/telegram/ui/TopicsFragment$TopicDialogCell;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2533
    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->-$$Nest$fgetcurrentTopic(Lorg/telegram/ui/TopicsFragment$TopicDialogCell;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setTopicIcon(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    :cond_1
    return-void
.end method
