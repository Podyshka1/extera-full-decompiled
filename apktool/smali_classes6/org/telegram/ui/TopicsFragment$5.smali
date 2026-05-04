.class Lorg/telegram/ui/TopicsFragment$5;
.super Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$5;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public emptyViewIsVisible()Z
    .locals 4

    .line 911
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$5;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$5;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$5;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$5;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v2, :cond_2

    .line 915
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_1

    return v2

    :cond_1
    return v1

    .line 917
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gt v0, v2, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 905
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 906
    iget-object p2, p1, Lorg/telegram/ui/TopicsFragment$5;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mcheckForLoadMore(Lorg/telegram/ui/TopicsFragment;)V

    return-void
.end method
