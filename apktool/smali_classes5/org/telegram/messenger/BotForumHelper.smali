.class public Lorg/telegram/messenger/BotForumHelper;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;,
        Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;,
        Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;,
        Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftDeleteNotification;,
        Lorg/telegram/messenger/BotForumHelper$BotForumTopicCreateNotification;,
        Lorg/telegram/messenger/BotForumHelper$BotDraftAnimationsPool;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/BotForumHelper;


# instance fields
.field private final botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap<",
            "Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingBotTopics:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessagesStorage$IntCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0saIOVxMTwVByxh7-ob_dhG4D30(Lorg/telegram/messenger/BotForumHelper;Lorg/telegram/tgnet/TLObject;[JJLjava/lang/Runnable;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/BotForumHelper;->lambda$beforeSendingFinalRequest$2(Lorg/telegram/tgnet/TLObject;[JJLjava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dk0md9bzU9tPkHiMt_IMN8F1_Do(Lorg/telegram/messenger/BotForumHelper;JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/BotForumHelper;->lambda$performSendBotTopicCreate$3(JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pvUjcLA2sjU6VNljJYUj2nOehgA(Lorg/telegram/messenger/BotForumHelper;JIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/BotForumHelper;->lambda$onBotForumDraftUpdate$0(JIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$voJh2mzuZx9NLkAZTARDRt7wn-w(Lorg/telegram/messenger/BotForumHelper;[JJILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/BotForumHelper;->lambda$beforeSendingFinalRequest$1([JJILjava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 394
    new-array v0, v0, [Lorg/telegram/messenger/BotForumHelper;

    sput-object v0, Lorg/telegram/messenger/BotForumHelper;->Instance:[Lorg/telegram/messenger/BotForumHelper;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 56
    new-instance p1, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    invoke-direct {p1}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BotForumHelper;->botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    .line 243
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/BotForumHelper;->pendingBotTopics:Landroid/util/LongSparseArray;

    return-void
.end method

.method private createDraftMessage(JIJILorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 24
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 25
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 26
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 27
    iput p6, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    iput p6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 28
    iput-wide p4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 30
    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 32
    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 33
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 35
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 37
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 38
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    .line 41
    iput p3, p1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    .line 42
    iget p3, p1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    .line 44
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 45
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 47
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {p1, p3, v0, p2, p2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 49
    iput-boolean p2, p1, Lorg/telegram/messenger/MessageObject;->isBotPendingDraft:Z

    .line 50
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    return-object p1
.end method

.method public static getInstance(I)Lorg/telegram/messenger/BotForumHelper;
    .locals 3

    .line 396
    sget-object v0, Lorg/telegram/messenger/BotForumHelper;->Instance:[Lorg/telegram/messenger/BotForumHelper;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 398
    const-class v1, Lorg/telegram/messenger/BotForumHelper;

    monitor-enter v1

    .line 399
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/BotForumHelper;->Instance:[Lorg/telegram/messenger/BotForumHelper;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 401
    sget-object v0, Lorg/telegram/messenger/BotForumHelper;->Instance:[Lorg/telegram/messenger/BotForumHelper;

    new-instance v2, Lorg/telegram/messenger/BotForumHelper;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/BotForumHelper;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 403
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static isBotForum(IJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 379
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    return p0

    .line 381
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$beforeSendingFinalRequest$1([JJILjava/lang/Runnable;)V
    .locals 8

    .line 230
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v5, p1, v1

    .line 231
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-wide v3, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateMessageTopicId(JJI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$beforeSendingFinalRequest$2(Lorg/telegram/tgnet/TLObject;[JJLjava/lang/Runnable;I)V
    .locals 7

    .line 219
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    .line 221
    iput p6, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->top_msg_id:I

    .line 222
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    goto :goto_0

    .line 224
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage;-><init>()V

    .line 225
    iput p6, v0, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->reply_to_msg_id:I

    .line 226
    invoke-static {p1, v0}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->setInputReplyToFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputReplyTo;)V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/BotForumHelper;[JJILjava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onBotForumDraftUpdate$0(JIJ)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/BotForumHelper;->onBotForumDraftTimeout(JIJ)V

    return-void
.end method

.method private synthetic lambda$performSendBotTopicCreate$3(JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    const/4 p5, -0x1

    if-nez p4, :cond_0

    .line 271
    invoke-direct {p0, p1, p2, p5}, Lorg/telegram/messenger/BotForumHelper;->performSendBotTopicCreateComplete(JI)V

    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 278
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :cond_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Update;

    .line 279
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v4, :cond_1

    .line 280
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 286
    invoke-direct {p0, p1, p2, p5}, Lorg/telegram/messenger/BotForumHelper;->performSendBotTopicCreateComplete(JI)V

    return-void

    .line 290
    :cond_3
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    .line 291
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 293
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;-><init>()V

    .line 294
    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    .line 296
    iput-object v0, p5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 297
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 298
    iput-wide p1, p5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 299
    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    iput v0, p5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, p5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 302
    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    iput v0, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v2, 0x1

    .line 303
    iput-boolean v2, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->my:Z

    .line 304
    iget v4, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->flags:I

    .line 305
    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 306
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 307
    iput v0, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->top_message:I

    .line 308
    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 309
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p5

    iget-wide v4, p5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p3

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 310
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    .line 311
    iput v1, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    .line 312
    iput-boolean v2, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title_missing:Z

    .line 314
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4, v2}, Lorg/telegram/messenger/TopicsController;->onTopicCreated(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    .line 316
    iget p3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/BotForumHelper;->performSendBotTopicCreateComplete(JI)V

    .line 317
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->botForumTopicDidCreate:I

    new-instance p5, Lorg/telegram/messenger/BotForumHelper$BotForumTopicCreateNotification;

    iget v0, v3, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-direct {p5, p1, p2, v0}, Lorg/telegram/messenger/BotForumHelper$BotForumTopicCreateNotification;-><init>(JI)V

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p5, p1, v1

    invoke-virtual {p3, p4, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private onBotForumDraftTimeout(JIJ)V
    .locals 7

    .line 133
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper;->botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    int-to-long v3, p3

    move-wide v1, p1

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->remove(JJJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->botForumDraftDelete:I

    move-wide v4, v3

    move-wide v2, v1

    new-instance v1, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftDeleteNotification;

    iget v6, p1, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->localMessageId:I

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftDeleteNotification;-><init>(JJI)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v1, p1, p4

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private performSendBotTopicCreate(Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;JLorg/telegram/messenger/MessagesStorage$IntCallback;)V
    .locals 4

    .line 250
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v0

    .line 252
    iget-object v2, p0, Lorg/telegram/messenger/BotForumHelper;->pendingBotTopics:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 254
    invoke-interface {v2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 258
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    invoke-interface {v2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object p5, p0, Lorg/telegram/messenger/BotForumHelper;->pendingBotTopics:Landroid/util/LongSparseArray;

    invoke-virtual {p5, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 262
    new-instance p5, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;

    invoke-direct {p5}, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;-><init>()V

    .line 263
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "#New Chat"

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    iput-object v2, p5, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->title:Ljava/lang/String;

    .line 265
    iput-boolean v3, p5, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->title_missing:Z

    .line 266
    iput-object p1, p5, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 267
    iput-wide p3, p5, Lorg/telegram/tgnet/tl/TL_forum$TL_messages_createForumTopic;->random_id:J

    .line 269
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance p4, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, v0, v1, p2}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/BotForumHelper;JLjava/lang/String;)V

    invoke-virtual {p1, p5, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method private performSendBotTopicCreateComplete(JI)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper;->pendingBotTopics:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lorg/telegram/messenger/BotForumHelper;->pendingBotTopics:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesStorage$IntCallback;

    .line 329
    invoke-interface {p2, p3}, Lorg/telegram/messenger/MessagesStorage$IntCallback;->run(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public beforeSendingFinalRequest(Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/lang/Runnable;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLObject;",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/lang/Runnable;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_9

    .line 172
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 174
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->getInputPeerFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    .line 175
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v8

    if-eqz v3, :cond_9

    const-wide/16 v1, 0x0

    cmp-long v4, v8, v1

    if-gtz v4, :cond_1

    goto/16 :goto_3

    .line 181
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 182
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    .line 186
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v7, v4, [J

    const/4 v11, 0x0

    move v4, v11

    .line 187
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 188
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    int-to-long v5, v5

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->getOrCalculateRandomIdFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v4

    .line 193
    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->getInputReplyToFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object p2

    .line 194
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage;

    if-eqz p2, :cond_4

    return v0

    .line 198
    :cond_4
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz p2, :cond_5

    .line 199
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->top_msg_id:I

    if-eqz p2, :cond_5

    return v0

    .line 204
    :cond_5
    invoke-static {p1}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->getMessageFromSendMessageRequest(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    cmp-long v0, v4, v1

    if-eqz v0, :cond_6

    not-long v0, v4

    goto :goto_1

    .line 205
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v0

    .line 208
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x10

    if-le v2, v4, :cond_8

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 215
    :cond_7
    sget p2, Lorg/telegram/messenger/R$string;->TopicsTitleMedia:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 218
    :cond_8
    :goto_2
    new-instance v4, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda0;

    move-object v5, p0

    move-object v6, p1

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/BotForumHelper;Lorg/telegram/tgnet/TLObject;[JJLjava/lang/Runnable;)V

    move-object v7, v4

    move-object v2, v5

    move-object v4, p2

    move-wide v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/BotForumHelper;->performSendBotTopicCreate(Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;JLorg/telegram/messenger/MessagesStorage$IntCallback;)V

    return v11

    :cond_9
    :goto_3
    return v0
.end method

.method public beforeSendingFinalRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)Z
    .locals 0

    .line 168
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/BotForumHelper;->beforeSendingFinalRequest(Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public onBotForumDraftCheckNewMessages(JIILjava/lang/String;)Lorg/telegram/messenger/MessageObject;
    .locals 10

    .line 105
    iget-object p4, p0, Lorg/telegram/messenger/BotForumHelper;->botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    int-to-long v3, p3

    invoke-virtual {p4, p1, p2, v3, v4}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->get(JJ)Landroid/util/LongSparseArray;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 110
    :goto_0
    invoke-virtual {p4}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    const-string v7, " "

    const-string v8, "[BotForum] onDraftNewMessage "

    if-ge v2, v5, :cond_3

    .line 111
    invoke-virtual {p4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;

    .line 112
    invoke-static {v9}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgettext(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {p5, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    invoke-static {v9}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 114
    invoke-static {v9}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper;->botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    iget-wide v5, v9, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->randomId:J

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->remove(JJJ)Ljava/lang/Object;

    .line 118
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 119
    invoke-static {v9}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetmessageObject(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p4}, Landroid/util/LongSparseArray;->size()I

    move-result p5

    if-lez p5, :cond_4

    .line 124
    invoke-virtual {p4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;

    .line 125
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 126
    invoke-static {p4}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetmessageObject(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public onBotForumDraftUpdate(JIJLorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 15

    move-wide/from16 v1, p1

    move/from16 v7, p3

    move-wide/from16 v5, p4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BotForum] onDraftNewDraft "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper;->botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    int-to-long v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->get(JJ)Landroid/util/LongSparseArray;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 63
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 65
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    move v11, v9

    :goto_0
    if-ge v11, v10, :cond_0

    .line 66
    invoke-virtual {v8, v11}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    aput-wide v12, v0, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    move-object v10, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 70
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/BotForumHelper;->botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->get(JJJ)Ljava/lang/Object;

    move-result-object v0

    move-wide v11, v3

    check-cast v0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v6

    const/4 v7, 0x0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;-><init>(JIJILorg/telegram/messenger/BotForumHelper-IA;)V

    .line 73
    iget-object v1, p0, Lorg/telegram/messenger/BotForumHelper;->botTextDraftsByRandomIds:Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;

    move-wide/from16 v5, p4

    move-object v7, v0

    move-object v0, v1

    move-wide v3, v11

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/BotForumHelper$DialogTopicIdKeyMap;->put(JJJLjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    :cond_2
    move-object v13, v0

    if-eqz v10, :cond_5

    .line 77
    array-length v6, v10

    move v7, v9

    :goto_3
    if-ge v7, v6, :cond_5

    aget-wide v4, v10, v7

    cmp-long v0, v4, p4

    if-nez v0, :cond_3

    goto :goto_4

    .line 81
    :cond_3
    invoke-virtual {v8, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;

    .line 82
    invoke-static {v0}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 83
    invoke-static {v0}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    move-object v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 85
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/BotForumHelper;->onBotForumDraftTimeout(JIJ)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 89
    :cond_5
    invoke-static {v13}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetmessageObject(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v8, 0x1

    if-nez v0, :cond_6

    move v10, v8

    goto :goto_5

    :cond_6
    move v10, v9

    .line 90
    :goto_5
    invoke-static {v13}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 91
    invoke-static {v13}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 94
    :cond_7
    new-instance v0, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/BotForumHelper;JIJ)V

    invoke-static {v13, v0}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fputselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;Ljava/lang/Runnable;)V

    move-object/from16 v7, p6

    .line 95
    invoke-static {v13, v7}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fputtext(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    .line 96
    iget v6, v13, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->localMessageId:I

    move-object v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/BotForumHelper;->createDraftMessage(JIJILorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-static {v13, v3}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fputmessageObject(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;Lorg/telegram/messenger/MessageObject;)V

    .line 98
    invoke-static {v13}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetselfDestruct(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getAppGlobalConfig()Lorg/telegram/messenger/AppGlobalConfig;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/AppGlobalConfig;->messageTypingDraftTtl:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->get(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 100
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v14, Lorg/telegram/messenger/NotificationCenter;->botForumDraftUpdate:I

    new-instance v0, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;

    invoke-static {v13}, Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;->-$$Nest$fgetmessageObject(Lorg/telegram/messenger/BotForumHelper$BotDraftMessage;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    move-wide/from16 v1, p1

    move v6, v10

    move-wide v3, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/BotForumHelper$BotForumTextDraftUpdateNotification;-><init>(JJLorg/telegram/messenger/MessageObject;Z)V

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-virtual {v7, v14, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
