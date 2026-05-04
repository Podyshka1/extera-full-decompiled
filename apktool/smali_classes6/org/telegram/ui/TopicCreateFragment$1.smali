.class Lorg/telegram/ui/TopicCreateFragment$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicCreateFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicCreateFragment;


# direct methods
.method public static synthetic $r8$lambda$A4rw8_fIKrbUpoQ2vSRisKnBqRU(Lorg/telegram/ui/TopicCreateFragment$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/TopicCreateFragment$1;->lambda$onItemClick$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$amldw3qyO9IcHiCsIMINuL4IC4E(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$iNFPvgVNVpBR8EQajc7nBAHNcns(Lorg/telegram/ui/TopicCreateFragment$1;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicCreateFragment$1;->lambda$onItemClick$1(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$otLZCyN9xeFR8YST98V_B6y2Ojk(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/TopicCreateFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_3

    .line 165
    move-object/from16 v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v3, 0x0

    move v4, v3

    .line 166
    :goto_0
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 167
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v5, :cond_2

    .line 168
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 169
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;-><init>()V

    .line 170
    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    .line 171
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 172
    iput-object v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 173
    iget-object v6, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v8, v8, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 174
    iget-object v6, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v8, v6, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 175
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    iput v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v6, v8

    iput v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 178
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-static {v8}, Lorg/telegram/ui/TopicCreateFragment;->access$300(Lorg/telegram/ui/TopicCreateFragment;)I

    move-result v8

    invoke-direct {v6, v8, v7, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v6, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v10, v8, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 181
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    .line 182
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    iput v5, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 183
    iget-object v5, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v11, v5, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    const-wide/16 v15, 0x0

    cmp-long v6, v11, v15

    const/4 v15, 0x1

    if-eqz v6, :cond_0

    .line 184
    iput-wide v11, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    .line 185
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    or-int/2addr v6, v15

    iput v6, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    .line 187
    :cond_0
    iput-boolean v15, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->my:Z

    .line 188
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    .line 189
    iput-object v7, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 190
    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 191
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v6, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    .line 192
    iput-object v7, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 193
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    iget-wide v11, v6, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v5

    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 194
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 195
    iget-object v5, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget v6, v5, Lorg/telegram/ui/TopicCreateFragment;->iconColor:I

    iput v6, v14, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    .line 197
    invoke-static {v5}, Lorg/telegram/ui/TopicCreateFragment;->-$$Nest$fgetopenInChatActivity(Lorg/telegram/ui/TopicCreateFragment;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 198
    iget-object v5, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-static {v5}, Lorg/telegram/ui/TopicCreateFragment;->-$$Nest$fgetopenInChatActivity(Lorg/telegram/ui/TopicCreateFragment;)Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    .line 200
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->resetForReload()V

    .line 201
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->saveDraft()V

    .line 202
    iget v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/ChatActivity;->setThreadMessages(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 203
    iput-boolean v15, v8, Lorg/telegram/ui/ChatActivity;->justCreatedTopic:Z

    .line 205
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->firstLoadMessages()V

    .line 207
    invoke-virtual {v8, v15}, Lorg/telegram/ui/ChatActivity;->updateTitle(Z)V

    .line 208
    iget-object v5, v8, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v5, v15}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle(Z)V

    .line 209
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->updateTopicTitleIcon()V

    .line 210
    iget-object v5, v8, Lorg/telegram/ui/ChatActivity;->topicsTabs:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/TopicsTabsView;->setCurrentTopic(J)V

    .line 211
    invoke-virtual {v8, v15}, Lorg/telegram/ui/ChatActivity;->updateTopPanel(Z)V

    .line 212
    invoke-virtual {v8, v15}, Lorg/telegram/ui/ChatActivity;->updateBottomOverlay(Z)V

    .line 213
    invoke-virtual {v8, v15}, Lorg/telegram/ui/ChatActivity;->hideFieldPanel(Z)V

    .line 214
    invoke-virtual {v8, v15, v15}, Lorg/telegram/ui/ChatActivity;->applyDraftMaybe(ZZ)V

    .line 216
    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->reloadPinnedMessages()V

    .line 217
    iget-object v5, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v6, v6, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    invoke-virtual {v5, v6, v7, v14, v15}, Lorg/telegram/messenger/TopicsController;->onTopicCreated(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    .line 219
    iget-object v5, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_1

    .line 221
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 222
    iget-object v6, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v11, v6, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    neg-long v11, v11

    const-string v6, "chat_id"

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 223
    const-string v6, "message_id"

    invoke-virtual {v5, v6, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v6, "unread_count"

    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v6, "historyPreloaded"

    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 226
    new-instance v8, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v8, v5}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 228
    iget v11, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/ChatActivity;->setThreadMessages(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 229
    iput-boolean v15, v8, Lorg/telegram/ui/ChatActivity;->justCreatedTopic:Z

    .line 230
    iget-object v5, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v6, v6, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    invoke-virtual {v5, v6, v7, v14, v15}, Lorg/telegram/messenger/TopicsController;->onTopicCreated(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    .line 231
    iget-object v5, v0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 236
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 163
    new-instance p4, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TopicCreateFragment$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_5

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 142
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-boolean p1, p1, Lorg/telegram/ui/TopicCreateFragment;->created:Z

    if-eqz p1, :cond_3

    goto/16 :goto_3

    .line 146
    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v4, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v4, 0x1f4

    .line 147
    invoke-virtual {p1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 148
    iget-object v4, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iput-boolean v3, v4, Lorg/telegram/ui/TopicCreateFragment;->created:Z

    .line 150
    new-instance v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;-><init>()V

    .line 152
    iget-object v5, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v6, v6, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 153
    iput-object v2, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->title:Ljava/lang/String;

    .line 154
    iget-object v5, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v5, v5, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_4

    .line 155
    iput-wide v5, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->icon_emoji_id:J

    .line 156
    iget v0, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->flags:I

    .line 158
    :cond_4
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 159
    iput-wide v0, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->random_id:J

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget v1, v0, Lorg/telegram/ui/TopicCreateFragment;->iconColor:I

    iput v1, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->icon_color:I

    .line 161
    iget v1, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->flags:I

    or-int/2addr v1, v3

    iput v1, v4, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->flags:I

    .line 163
    invoke-static {v0}, Lorg/telegram/ui/TopicCreateFragment;->access$000(Lorg/telegram/ui/TopicCreateFragment;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2, p1}, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicCreateFragment$1;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, v4, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_f

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 242
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 246
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object v5, p1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    iget-wide v7, p1, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    cmp-long p1, v5, v7

    if-eqz p1, :cond_b

    .line 247
    :cond_8
    new-instance p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;-><init>()V

    .line 248
    iget-object v5, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v6, v6, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 249
    iget-object v5, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object v5, v5, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iput v6, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->topic_id:I

    .line 250
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 251
    iput-object v2, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->title:Ljava/lang/String;

    .line 252
    iget v5, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->flags:I

    or-int/2addr v5, v3

    iput v5, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->flags:I

    .line 254
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object v6, v5, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    iget-wide v8, v5, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 255
    iput-wide v8, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->icon_emoji_id:J

    .line 256
    iget v6, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->flags:I

    or-int/2addr v4, v6

    iput v4, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->flags:I

    .line 262
    :cond_a
    invoke-static {v5}, Lorg/telegram/ui/TopicCreateFragment;->access$100(Lorg/telegram/ui/TopicCreateFragment;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v4, p1, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 266
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object v4, p1, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v4, :cond_c

    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne p1, v3, :cond_c

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v3

    iget-object v4, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object v4, v4, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eq p1, v4, :cond_c

    .line 267
    new-instance p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;-><init>()V

    .line 268
    iget-object v4, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v5, v5, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 269
    iget-object v4, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object v5, v4, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iput v5, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->topic_id:I

    .line 270
    iget-object v4, v4, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->hidden:Z

    .line 271
    iget v4, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p1, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_editForumTopic;->flags:I

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-static {v4}, Lorg/telegram/ui/TopicCreateFragment;->access$200(Lorg/telegram/ui/TopicCreateFragment;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/telegram/ui/TopicCreateFragment$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v4, p1, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 277
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-object v4, p1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-wide v5, p1, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_d

    .line 279
    iget v0, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    or-int/2addr v0, v3

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    goto :goto_2

    .line 281
    :cond_d
    iget v0, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    .line 283
    :goto_2
    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 284
    iget-object p1, p1, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz p1, :cond_e

    .line 285
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    .line 287
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    iget-wide v1, v0, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    iget-object v0, v0, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/TopicsController;->onTopicEdited(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment$1;->this$0:Lorg/telegram/ui/TopicCreateFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_f
    :goto_3
    return-void
.end method
