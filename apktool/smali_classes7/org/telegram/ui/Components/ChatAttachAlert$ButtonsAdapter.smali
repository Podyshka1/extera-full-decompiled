.class Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonsAdapter"
.end annotation


# instance fields
.field private attachBotsEndRow:I

.field private attachBotsStartRow:I

.field private attachMenuBots:Ljava/util/List;

.field private buttonsCount:I

.field private contactButton:I

.field private documentButton:I

.field private galleryButton:I

.field private locationButton:I

.field private mContext:Landroid/content/Context;

.field private musicButton:I

.field private pollButton:I

.field private quickRepliesButton:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private todoButton:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0

    .line 5985
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 5974
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    .line 5986
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 6080
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    .line 6081
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    .line 6082
    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 6172
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 6173
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 8

    const/4 v0, 0x0

    .line 6089
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, -0x1

    .line 6090
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    .line 6091
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 6092
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    .line 6093
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    .line 6094
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->todoButton:I

    .line 6095
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 6096
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->quickRepliesButton:I

    .line 6097
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    .line 6098
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    .line 6099
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    .line 6100
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 6101
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    add-int v0, v5, v5

    .line 6102
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 6103
    iget-boolean v1, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-eqz v1, :cond_13

    add-int/lit8 v1, v0, 0x1

    .line 6104
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 6106
    :cond_0
    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_4

    .line 6107
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgeteditType(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 6108
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    add-int/lit8 v2, v0, 0x2

    .line 6109
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    add-int/lit8 v0, v0, 0x3

    .line 6110
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 6112
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgeteditType(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-nez v0, :cond_2

    .line 6113
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    .line 6115
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgeteditType(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 6116
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 6118
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgeteditType(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 6119
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    .line 6123
    :cond_4
    instance-of v1, v3, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v2

    .line 6124
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_6

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    :cond_6
    if-eqz v1, :cond_7

    .line 6125
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_7

    goto :goto_1

    :cond_7
    move v5, v0

    .line 6126
    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    .line 6127
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetphotosEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetvideosEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_8
    if-nez v5, :cond_d

    if-eqz v2, :cond_9

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 6128
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_d

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_d

    .line 6129
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    .line 6131
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    .line 6132
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 6133
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_a
    :goto_2
    if-ge v0, v4, :cond_c

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 6134
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v7, :cond_a

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    goto :goto_3

    :cond_b
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    :goto_3
    invoke-static {v6, v7}, Lorg/telegram/messenger/MediaDataController;->canShowAttachMenuBot(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 6135
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6139
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    .line 6140
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    .line 6143
    :cond_d
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    .line 6145
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetplainTextEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6146
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    .line 6149
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpollsEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6150
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    .line 6152
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettodoEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6153
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->todoButton:I

    .line 6155
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetplainTextEnabled(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6156
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    .line 6158
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_12

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    if-nez v0, :cond_12

    if-eqz v1, :cond_12

    if-nez v5, :cond_12

    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->hasReplies()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6159
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->quickRepliesButton:I

    .line 6161
    :cond_12
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    .line 6163
    :cond_13
    :goto_4
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 6010
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    return-void

    .line 6051
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 6052
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/glass/GlassTabView;->onPreBind()V

    .line 6053
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    if-lt p2, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    if-ge p2, v1, :cond_1

    sub-int/2addr p2, v0

    .line 6055
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6056
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 6057
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setAttachBot(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    return-void

    .line 6061
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    sub-int/2addr p2, v0

    .line 6062
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6063
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 6012
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 6013
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/glass/GlassTabView;->onPreBind()V

    .line 6016
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 6017
    sget p2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->GALLERY:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6018
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6019
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$smcheckPhotoAndCameraPermission(Landroid/content/Context;)Z

    move-result p2

    :goto_0
    xor-int/2addr p2, v1

    :goto_1
    move v0, v2

    goto/16 :goto_4

    .line 6020
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    if-ne p2, v0, :cond_4

    .line 6021
    sget p2, Lorg/telegram/messenger/R$string;->ChatDocument:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->FILES:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6022
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6023
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$smcheckPhotoAndDocumentsPermission(Landroid/content/Context;)Z

    move-result p2

    goto :goto_0

    .line 6024
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    if-ne p2, v0, :cond_5

    .line 6025
    sget p2, Lorg/telegram/messenger/R$string;->ChatLocation:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->LOCATION:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6026
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 6027
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    if-ne p2, v0, :cond_6

    .line 6028
    sget p2, Lorg/telegram/messenger/R$string;->AttachMusic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->MUSIC:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6029
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6030
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$smcheckMusicPermission(Landroid/content/Context;)Z

    move-result p2

    goto :goto_0

    .line 6031
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    if-ne p2, v0, :cond_7

    .line 6032
    sget p2, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->POLL:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    const/16 v3, 0x9

    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6033
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 6034
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    if-ne p2, v0, :cond_9

    .line 6035
    sget p2, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->CONTACTS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6036
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6037
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$smcheckContactsPermission(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_8

    move p2, v1

    goto/16 :goto_1

    :cond_8
    move p2, v2

    goto/16 :goto_1

    .line 6038
    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->quickRepliesButton:I

    if-ne p2, v0, :cond_a

    .line 6039
    sget p2, Lorg/telegram/messenger/R$string;->AttachQuickReplies:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->REPLIES:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    const/16 v3, 0xb

    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6040
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    move v0, v1

    move p2, v2

    goto :goto_4

    .line 6042
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->todoButton:I

    if-ne p2, v0, :cond_b

    .line 6043
    sget p2, Lorg/telegram/messenger/R$string;->Todo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->CHECKLIST:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    const/16 v3, 0xc

    invoke-virtual {p1, v3, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;)V

    .line 6044
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    :goto_3
    move p2, v2

    move v0, p2

    .line 6047
    :goto_4
    iget-object v3, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    if-eqz p2, :cond_c

    const-string v4, "!"

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v3, v4, p2, v2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setCounter(Ljava/lang/String;ZZ)V

    .line 6048
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    if-eqz v0, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    move v1, v2

    :goto_6
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setPremiumBadge(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_0

    .line 5999
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    goto :goto_0

    .line 5995
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    :goto_0
    const/4 p2, 0x1

    .line 6002
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 6003
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 6004
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6005
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 6070
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mapplyAttachButtonColors(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V

    return-void
.end method
