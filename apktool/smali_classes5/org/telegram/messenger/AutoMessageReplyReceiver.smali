.class public Lorg/telegram/messenger/AutoMessageReplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p2

    .line 23
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 24
    invoke-static {v0}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "extra_voice_reply"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    const-string v2, "dialog_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 33
    const-string v2, "max_id"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 34
    const-string v8, "currentAccount"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 35
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v5 .. v19}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 39
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v9, v2

    move v8, v2

    invoke-virtual/range {v5 .. v16}, Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZJIZI)V

    :cond_3
    :goto_0
    return-void
.end method
