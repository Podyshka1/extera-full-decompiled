.class public Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation


# instance fields
.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field private messagesStartRow:I

.field private final oldStableIds:Ljava/util/ArrayList;

.field private rowCount:I

.field private final stableIds:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessagesEndRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessagesStartRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0

    .line 2744
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2749
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->oldStableIds:Ljava/util/ArrayList;

    .line 2750
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->stableIds:Ljava/util/ArrayList;

    .line 2745
    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 2746
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2776
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 2781
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_0

    .line 2782
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->stableId:I

    int-to-long v0, p1

    return-wide v0

    .line 2783
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x2

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x5

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 3360
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_0

    .line 3361
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->contentType:I

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method public getMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .locals 3

    .line 2790
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_0

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 3417
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 3419
    :try_start_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3421
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3427
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    .line 3429
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3431
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3447
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    .line 3449
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3451
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3457
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    .line 3459
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3461
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3437
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    .line 3439
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3441
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3467
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    .line 3469
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3471
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 1

    const/4 v0, 0x0

    .line 3487
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    .line 3489
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3491
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3477
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    .line 3479
    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3481
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 3307
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 3308
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 3309
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    return-void

    .line 3310
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p2, v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p2, v0, :cond_c

    .line 3311
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v3, p2, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3312
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3314
    instance-of v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_b

    .line 3315
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3316
    iput-boolean v1, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    add-int/lit8 v0, p2, 0x1

    .line 3317
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v4

    add-int/lit8 v5, p2, -0x1

    .line 3318
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v5

    .line 3321
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    const/16 v7, 0x12c

    const/4 v8, 0x0

    if-nez v6, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    if-ne v4, v6, :cond_4

    .line 3322
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v9, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v0, v9

    sub-int/2addr v6, v0

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 3323
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-nez v4, :cond_1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v7, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    if-eqz v4, :cond_5

    .line 3325
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3100(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v6

    iget-object v9, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6, v9, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v9

    goto :goto_1

    :cond_2
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v9, v6

    .line 3326
    :goto_1
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3200(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v6

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v6, v0, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v11

    goto :goto_2

    :cond_3
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v11, v0

    :goto_2
    cmp-long v0, v9, v11

    if-eqz v0, :cond_5

    :cond_4
    move v4, v8

    .line 3334
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne v5, p1, :cond_a

    .line 3335
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p2, v5

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 3336
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    cmp-long p2, v5, v9

    if-nez p2, :cond_6

    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt p2, v7, :cond_6

    move p2, v1

    goto :goto_3

    :cond_6
    move p2, v8

    :goto_3
    if-eqz p2, :cond_9

    .line 3338
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3300(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v0

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v5

    goto :goto_4

    :cond_7
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v5, v0

    .line 3339
    :goto_4
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3400(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v0

    goto :goto_5

    :cond_8
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v0, p1

    :goto_5
    cmp-long p1, v5, v0

    if-eqz p1, :cond_9

    move p2, v8

    :cond_9
    move v6, p2

    :goto_6
    move v5, v4

    goto :goto_7

    :cond_a
    move v6, v8

    goto :goto_6

    :goto_7
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 3347
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZZ)V

    .line 3348
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 3349
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetsearchQuery(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)Z

    return-void

    .line 3350
    :cond_b
    instance-of p1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p1, :cond_c

    .line 3351
    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 3352
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3353
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 2800
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2801
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 2802
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2804
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1600(Lorg/telegram/ui/ChannelAdminLogActivity;)I

    move-result v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;I)V

    .line 2806
    :goto_0
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2807
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 3171
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    goto :goto_1

    :cond_1
    if-ne p2, p1, :cond_2

    .line 3173
    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$2;

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;Landroid/content/Context;)V

    .line 3182
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    .line 3297
    new-instance p2, Lorg/telegram/ui/Cells/ChatUnreadCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 3299
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/ChatLoadingCell;

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3301
    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3302
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 3368
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_1

    .line 3370
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$4;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3396
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_2

    .line 3397
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3398
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    .line 3400
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3401
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 3403
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    :cond_2
    return-void
.end method

.method public updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 2753
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows(Z)V

    return-void
.end method

.method public updateRows(Z)V
    .locals 1

    const/4 p1, 0x0

    .line 2757
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    .line 2758
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 2759
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2760
    iget p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_0

    .line 2762
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 2764
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 2765
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->rowCount:I

    .line 2766
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    return-void

    .line 2768
    :cond_1
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 2769
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 2770
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->messagesEndRow:I

    return-void
.end method
