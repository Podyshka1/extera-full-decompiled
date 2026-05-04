.class Lorg/telegram/ui/MessageSendPreview$11;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iput-object p2, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmessageObjects(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fgetmessageObjects(Lorg/telegram/ui/MessageSendPreview;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/MessageSendPreview$11;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 988
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 989
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1, v4}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 990
    :goto_0
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 991
    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    .line 992
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$mgetMainMessageCellPosition(Lorg/telegram/ui/MessageSendPreview;)I

    move-result p1

    if-ne p2, p1, :cond_1

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 993
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1, v3}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputmainMessageCell(Lorg/telegram/ui/MessageSendPreview;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 994
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/MessageSendPreview;->-$$Nest$fputmainMessageCellId(Lorg/telegram/ui/MessageSendPreview;I)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 975
    new-instance v0, Lorg/telegram/ui/MessageSendPreview$MessageCell;

    iget-object v1, p0, Lorg/telegram/ui/MessageSendPreview$11;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-object v2, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$context:Landroid/content/Context;

    iget v3, v1, Lorg/telegram/ui/MessageSendPreview;->currentAccount:I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/ui/MessageSendPreview$11;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/MessageSendPreview$MessageCell;-><init>(Lorg/telegram/ui/MessageSendPreview;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 976
    new-instance p1, Lorg/telegram/ui/MessageSendPreview$11$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/MessageSendPreview$11$1;-><init>(Lorg/telegram/ui/MessageSendPreview$11;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 982
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
