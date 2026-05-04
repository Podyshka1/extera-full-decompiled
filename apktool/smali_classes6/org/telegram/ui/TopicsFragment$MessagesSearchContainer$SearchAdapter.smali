.class Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;)V
    .locals 0

    .line 3826
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Lorg/telegram/ui/TopicsFragment-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;-><init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 3907
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-boolean v1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->isLoading:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3910
    :cond_0
    iget v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 3893
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget v1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesHeaderRow:I

    if-eq p1, v1, :cond_3

    iget v1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsHeaderRow:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3896
    :cond_0
    iget v1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsStartRow:I

    if-lt p1, v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsEndRow:I

    if-ge p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 3899
    :cond_1
    iget v1, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesStartRow:I

    if-lt p1, v1, :cond_2

    iget v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesEndRow:I

    if-ge p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 3915
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 3858
    invoke-virtual {p0, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3859
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 3860
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget v2, v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsHeaderRow:I

    if-ne p2, v2, :cond_0

    .line 3861
    sget v2, Lorg/telegram/messenger/R$string;->Topics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 3863
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget v2, v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesHeaderRow:I

    if-ne p2, v2, :cond_1

    .line 3864
    sget v2, Lorg/telegram/messenger/R$string;->SearchMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    .line 3867
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 3868
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultTopics:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsStartRow:I

    sub-int v0, p2, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 3869
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TopicSearchCell;

    .line 3870
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/TopicSearchCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 3871
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->topicsEndRow:I

    sub-int/2addr v0, v1

    if-eq p2, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput-boolean v0, v2, Lorg/telegram/ui/Cells/TopicSearchCell;->drawDivider:Z

    .line 3873
    :cond_3
    invoke-virtual {p0, p2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 3874
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v2, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->searchResultMessages:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesStartRow:I

    sub-int v0, p2, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 3875
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 3876
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget v0, p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->messagesEndRow:I

    sub-int/2addr v0, v1

    if-eq p2, v0, :cond_4

    move v3, v1

    :cond_4
    iput-boolean v3, v4, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->drawDivider:Z

    .line 3877
    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$2500(Lorg/telegram/ui/TopicsFragment;)I

    move-result p1

    iget-object p2, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    const-wide/16 p1, 0x1

    .line 3881
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgettopicsController(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v5

    if-nez v5, :cond_6

    .line 3883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cant find topic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 3885
    :cond_6
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/DialogCell;->setForumTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JLorg/telegram/messenger/MessageObject;ZZ)V

    .line 3886
    invoke-virtual {v4, v5}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;->setTopicIcon(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 3844
    new-instance v1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v2, p2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    .line 3845
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$SearchAdapter;->this$1:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->access$2400(Lorg/telegram/ui/TopicsFragment;)Z

    move-result p1

    iput-boolean p1, v1, Lorg/telegram/ui/Cells/DialogCell;->inPreviewMode:Z

    goto :goto_0

    .line 3848
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported view type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3841
    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/TopicSearchCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/TopicSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 3838
    :cond_2
    new-instance v1, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 3852
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3853
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
