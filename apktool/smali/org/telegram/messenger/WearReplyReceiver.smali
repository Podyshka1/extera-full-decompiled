.class public Lorg/telegram/messenger/WearReplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$0sxgz3GZTgd5leursKdeRTKBbT8(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$1(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$9RVHfJXqNCzEHdsCl7aXU1xHBw4(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JJI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$0(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hdresv04p6LFB56Ikw15HlYnsng(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JJI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$2(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$zIbWXwFl2cD_yrywt80-rMEFBSE(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/WearReplyReceiver;->lambda$onReceive$3(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JJI)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    move-object p2, p1

    move-object p1, p0

    .line 49
    invoke-direct/range {p1 .. p8}, Lorg/telegram/messenger/WearReplyReceiver;->sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JJI)V

    return-void
.end method

.method private synthetic lambda$onReceive$1(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V
    .locals 11

    .line 46
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 47
    new-instance v1, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    move-object v5, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JJI)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onReceive$2(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JJI)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    move-object p2, p1

    move-object p1, p0

    .line 61
    invoke-direct/range {p1 .. p8}, Lorg/telegram/messenger/WearReplyReceiver;->sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JJI)V

    return-void
.end method

.method private synthetic lambda$onReceive$3(Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V
    .locals 11

    .line 58
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    neg-long v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 59
    new-instance v1, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    move-object v5, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/CharSequence;JJI)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JJI)V
    .locals 18

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move/from16 v15, p7

    .line 73
    const-string v0, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v15, :cond_0

    .line 74
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 75
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 76
    iput v15, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 77
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 78
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v9

    invoke-direct {v8, v9, v7, v5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    const-wide/16 v9, 0x0

    cmp-long v16, v3, v9

    if-eqz v16, :cond_1

    .line 81
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 82
    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    long-to-int v7, v3

    .line 83
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 84
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 85
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;-><init>()V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 86
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    .line 87
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v7

    invoke-direct {v0, v7, v6, v5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object v6, v0

    .line 90
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v0

    move-object v0, v5

    const/4 v5, 0x0

    move-object v4, v6

    const/4 v6, 0x1

    move-object v3, v7

    const/4 v7, 0x0

    move-object v9, v3

    move-object v3, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x1

    move-object v12, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v15, v17

    invoke-static/range {v0 .. v14}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    if-nez v16, :cond_2

    .line 93
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v4, p7

    move-wide/from16 v1, p3

    move-wide/from16 v7, p5

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZJIZI)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 25
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 26
    invoke-static {p2}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 30
    :cond_0
    const-string v0, "extra_voice_reply"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 31
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    .line 34
    :cond_1
    const-string p1, "dialog_id"

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 35
    const-string/jumbo p1, "max_id"

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 36
    const-string/jumbo p1, "topic_id"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 37
    const-string p1, "currentAccount"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    cmp-long p2, v4, v0

    if-eqz p2, :cond_5

    if-eqz v9, :cond_5

    .line 38
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 41
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    .line 42
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 43
    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_3

    .line 45
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    move-object v1, p0

    move-object v2, v3

    move-object v3, v6

    move-wide v6, v7

    move v8, v9

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    neg-long v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-nez p1, :cond_3

    .line 57
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;JLjava/lang/CharSequence;JI)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 67
    :goto_0
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/WearReplyReceiver;->sendMessage(Lorg/telegram/messenger/AccountInstance;Ljava/lang/CharSequence;JJI)V

    :cond_5
    :goto_1
    return-void
.end method
