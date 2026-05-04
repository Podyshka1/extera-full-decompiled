.class Lorg/telegram/ui/ChatActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$XzLXLTaEQvdRtAvBoB8UJ1EJYPc(Lorg/telegram/ui/ChatActivity$12;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$12;->lambda$onItemClick$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 1806
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(I)V
    .locals 7

    .line 1834
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void
.end method


# virtual methods
.method public hasDoubleTap(Landroid/view/View;I)Z
    .locals 10

    .line 1867
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetactionsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityActionsButtonsLayout;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetactionsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityActionsButtonsLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    :cond_1
    return v0

    .line 1871
    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1872
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    goto :goto_0

    .line 1873
    :cond_3
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p2, :cond_33

    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 1874
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 1878
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 1879
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isChannel()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_2

    :cond_5
    :goto_1
    move p2, v1

    .line 1880
    :goto_2
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    :cond_7
    return v0

    .line 1883
    :cond_8
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    const-wide/16 v3, 0x0

    if-ne v2, v1, :cond_9

    if-eqz p2, :cond_a

    :cond_9
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    if-ne v2, v1, :cond_12

    if-eqz p2, :cond_12

    .line 1884
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object p2

    .line 1885
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-nez v2, :cond_c

    if-eqz p2, :cond_b

    .line 1886
    const-string v5, "animated_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    return v0

    .line 1889
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_d

    move v3, v1

    goto :goto_3

    :cond_d
    move v3, v0

    :goto_3
    if-nez v3, :cond_f

    .line 1890
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_f

    if-nez v2, :cond_e

    goto :goto_4

    .line 1891
    :cond_e
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    :goto_4
    invoke-static {v4, p2}, Lorg/telegram/messenger/ChatObject;->reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z

    move-result v3

    :cond_f
    if-nez v3, :cond_10

    return v0

    .line 1896
    :cond_10
    iget-boolean p2, p1, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-nez p2, :cond_11

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->canSetReaction()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    return v0

    .line 1898
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    .line 1899
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->isPeerNoForwards(J)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-nez v5, :cond_14

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    const-wide/32 v7, 0x77628

    cmp-long v5, v5, v7

    if-nez v5, :cond_13

    goto :goto_5

    :cond_13
    move v5, v0

    goto :goto_6

    :cond_14
    :goto_5
    move v5, v1

    .line 1900
    :goto_6
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z

    move-result v6

    if-nez v6, :cond_1c

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    if-eq v6, v1, :cond_1c

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 1901
    :cond_15
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v6

    if-nez v6, :cond_1c

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetMessageType(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result v6

    if-ne v6, v1, :cond_16

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1c

    :cond_16
    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionSecureValuesSent;

    if-nez v6, :cond_1c

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v6, :cond_17

    .line 1903
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ltz v6, :cond_1c

    :cond_17
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object v6

    .line 1904
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_18

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlayChatWaitsReply(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v6

    cmp-long v3, v6, v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    if-eqz v3, :cond_1c

    :cond_18
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_1b

    .line 1905
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_19
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canPost(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_1c

    :cond_1a
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    move v3, v1

    goto :goto_7

    :cond_1c
    move v3, v0

    .line 1906
    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasAudioToSend()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1d

    iget v4, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x17

    if-eq v4, v6, :cond_1d

    move v4, v1

    goto :goto_8

    :cond_1d
    move v4, v0

    :goto_8
    if-eqz v4, :cond_22

    if-eqz v2, :cond_22

    .line 1909
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v0

    move v7, v6

    :goto_9
    if-ge v6, v4, :cond_20

    .line 1910
    iget-object v8, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_1e

    .line 1911
    iget-object v9, v8, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 1912
    :cond_1e
    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9, v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObjectToEditCaption(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 1913
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1f

    add-int/lit8 v7, v7, 0x1

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_20
    const/4 v4, 0x2

    if-ge v7, v4, :cond_21

    move v4, v1

    goto :goto_a

    :cond_21
    move v4, v0

    .line 1920
    :cond_22
    :goto_a
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v6

    if-nez v6, :cond_24

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    if-eq v6, v1, :cond_24

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasExtendedMediaPreview()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1921
    :cond_23
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v6

    if-nez v6, :cond_24

    iget v6, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0x10

    if-eq v6, v7, :cond_24

    if-nez v5, :cond_24

    const/16 v7, 0x12

    if-eq v6, v7, :cond_24

    const/16 v7, 0x15

    if-eq v6, v7, :cond_24

    move v6, v1

    goto :goto_b

    :cond_24
    move v6, v0

    :goto_b
    if-eqz v6, :cond_25

    .line 1923
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_25

    move v7, v1

    goto :goto_c

    :cond_25
    move v7, v0

    :goto_c
    if-eqz v3, :cond_2a

    .line 1924
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_2a

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1925
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_2a

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_2a

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforumTopic(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v8

    if-eqz v8, :cond_26

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforumTopic(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v9

    .line 1926
    invoke-static {v8, v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcanSendMessageToTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v8

    if-eqz v8, :cond_2a

    :cond_26
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 1927
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForumInViewAsMessagesMode()Z

    move-result v8

    if-nez v8, :cond_2a

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 1928
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isForumInViewAsMessagesMode()Z

    move-result v8

    if-nez v8, :cond_27

    if-eqz v5, :cond_29

    .line 1929
    :cond_27
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v8

    invoke-virtual {v8, p1, v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageForRepeat(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_28

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->hasMediaForRepeat(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1930
    :cond_28
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->hasMediaForRepeat(Lorg/telegram/messenger/MessageObject;)Z

    move-result v8

    if-eqz v8, :cond_2a

    if-nez v5, :cond_2a

    :cond_29
    move v8, v1

    goto :goto_d

    :cond_2a
    move v8, v0

    :goto_d
    if-eqz p2, :cond_2b

    .line 1931
    sget v9, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    goto :goto_e

    :cond_2b
    sget v9, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    :goto_e
    invoke-static {v9, p2}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->getActionId(IZ)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    return v0

    .line 1940
    :pswitch_0
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageText(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_2c

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result p2

    if-nez p2, :cond_2c

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result p1

    if-nez p1, :cond_2c

    return v1

    :cond_2c
    return v0

    .line 1939
    :pswitch_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    if-ne p2, v1, :cond_2d

    move p2, v1

    goto :goto_f

    :cond_2d
    move p2, v0

    :goto_f
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(ZLorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_30

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObjects(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    :cond_2e
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_2f

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-nez p1, :cond_30

    :cond_2f
    return v1

    :cond_30
    return v0

    :pswitch_2
    return v8

    :pswitch_3
    return v7

    :pswitch_4
    return v4

    :pswitch_5
    return v6

    .line 1934
    :pswitch_6
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz p2, :cond_31

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result p2

    if-nez p2, :cond_31

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickers()Z

    move-result p2

    if-nez p2, :cond_31

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetMessageCaption(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_32

    :cond_31
    if-nez v5, :cond_32

    return v1

    :cond_32
    return v0

    .line 1933
    :pswitch_7
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-lez p1, :cond_33

    if-eqz v3, :cond_33

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez p1, :cond_33

    return v1

    :cond_33
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDoubleTap(Landroid/view/View;IFF)V
    .locals 12

    .line 1948
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto/16 :goto_5

    .line 1951
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    sget v0, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    goto/16 :goto_5

    .line 1955
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1956
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_0

    .line 1957
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 1958
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1959
    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v4, :cond_3

    goto/16 :goto_5

    .line 1965
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_5

    .line 1966
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isChannel()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v6

    .line 1967
    :goto_2
    sget v7, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    if-nez v7, :cond_6

    if-eqz v4, :cond_18

    :cond_6
    sget v7, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    if-nez v7, :cond_7

    if-eqz v4, :cond_7

    goto/16 :goto_5

    .line 1970
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z

    move-result v7

    if-nez v7, :cond_18

    iget v7, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_8

    goto/16 :goto_5

    .line 1973
    :cond_8
    sget v7, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    if-ne v7, v6, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    sget v7, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    if-ne v7, v6, :cond_14

    if-eqz v4, :cond_14

    .line 1974
    :cond_a
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSecret()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->canSetReaction()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z

    move-result v2

    if-nez v2, :cond_18

    iget v2, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v2, v8, :cond_b

    goto/16 :goto_5

    .line 1977
    :cond_b
    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrent(Z)V

    .line 1978
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object v2

    .line 1979
    const-string v3, "animated_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_f

    .line 1980
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_c

    move v5, v6

    :cond_c
    if-nez v5, :cond_d

    .line 1981
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_d

    .line 1982
    invoke-static {v3, v2}, Lorg/telegram/messenger/ChatObject;->reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z

    move-result v5

    :cond_d
    if-nez v5, :cond_e

    goto/16 :goto_5

    :cond_e
    move-object v3, v2

    move-object v2, v0

    .line 1987
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    move v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ChatActivity;->selectReaction(Landroid/view/View;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZZ)V

    return-void

    :cond_f
    move-object v3, v2

    move-object v2, v0

    .line 1989
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_18

    .line 1990
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_5

    .line 1993
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    cmp-long v1, v3, v7

    if-ltz v1, :cond_11

    move v5, v6

    :cond_11
    if-nez v5, :cond_12

    .line 1994
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_12

    .line 1995
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ChatObject;->reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z

    move-result v5

    :cond_12
    if-nez v5, :cond_13

    goto/16 :goto_5

    :cond_13
    move-object v1, v0

    .line 2000
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    move v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/ChatActivity;->selectReaction(Landroid/view/View;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZZ)V

    return-void

    .line 2003
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObject(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 2004
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObjectGroup(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    if-eqz v4, :cond_15

    .line 2006
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    goto :goto_3

    :cond_15
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    :goto_3
    invoke-static {v0, v4}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->getActionId(IZ)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 2016
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoiceTranscriptionOpen()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ne v0, v2, :cond_17

    :cond_16
    const/4 v0, 0x0

    goto :goto_4

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    .line 2017
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObjectGroup(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translateWithAlert(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Lorg/telegram/tgnet/TLRPC$InputPeer;ILorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 2014
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V

    return-void

    .line 2013
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V

    return-void

    .line 2012
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V

    return-void

    .line 2011
    :pswitch_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V

    return-void

    .line 2010
    :pswitch_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V

    return-void

    .line 2009
    :pswitch_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V

    return-void

    .line 2008
    :pswitch_7
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->processSelectedOption(I)V

    :cond_18
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/view/View;IFF)V
    .locals 7

    .line 1809
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1812
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputwasManualScroll(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1813
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v4, :cond_2

    .line 1814
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 1817
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1818
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1819
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    const-string v0, "dialog_id"

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1820
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide p3

    const-string/jumbo v0, "topic_id"

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1821
    const-string/jumbo p3, "type"

    invoke-virtual {p1, p3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1822
    new-instance p3, Lorg/telegram/ui/CalendarActivity;

    invoke-direct {p3, p1, v2, p2}, Lorg/telegram/ui/CalendarActivity;-><init>(Landroid/os/Bundle;II)V

    .line 1823
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/CalendarActivity;->setChatActivity(Lorg/telegram/ui/ChatActivity;)V

    .line 1824
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 1827
    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionBoostApply;

    if-eqz v3, :cond_3

    .line 1828
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->openBoostForUsersDialog:I

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 1831
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;

    if-eqz v3, :cond_4

    .line 1832
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result p1

    .line 1833
    new-instance p2, Lorg/telegram/ui/ChatActivity$12$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatActivity$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$12;I)V

    const-wide/16 p3, 0x10

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1838
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v4, p3

    move v5, p4

    goto :goto_0

    .line 1849
    :cond_6
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_7

    .line 1850
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1851
    iget v3, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_7

    .line 1852
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->toggleChannelRecommendations()V

    .line 1853
    iput-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1854
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->forceResetMessageObject()V

    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    if-ltz p2, :cond_8

    .line 1857
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    return-void

    .line 1862
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZ)Z

    return-void

    .line 1840
    :goto_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_a

    .line 1841
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    :goto_1
    return-void

    .line 1844
    :cond_9
    invoke-virtual {p3, v4, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result p2

    xor-int/lit8 v2, p2, 0x1

    .line 1846
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$12;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1, v2, v4, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mprocessRowSelect(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    return-void
.end method
