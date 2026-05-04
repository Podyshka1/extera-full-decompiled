.class public Lorg/telegram/messenger/PushListenerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;,
        Lorg/telegram/messenger/PushListenerController$IPushListenerServiceProvider;,
        Lorg/telegram/messenger/PushListenerController$PushType;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field public static final PUSH_TYPE_FIREBASE:I = 0x2

.field public static final PUSH_TYPE_HUAWEI:I = 0xd

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static synthetic $r8$lambda$P1a24T7VvkcTjlUqZlJxlqIf4HM(I)V
    .locals 4

    .line 262
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 263
    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 264
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->performLogout(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$X4AFqiYuWKNVxKgP6ag2LMkLD4I(IJI)V
    .locals 1

    .line 1483
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->reportMessageDelivery(JIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajFFKH7fIgEVRIQyyG8JkwTnc2M(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController;->lambda$processRemoteMessage$6(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNjoKzLxdgjjiAu7LAa_JzI_oiA(IILjava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->registerForPush(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gWkEZv3oxmETvqnhw1v-3CF-Wl4(Ljava/lang/String;I)V
    .locals 12

    .line 52
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->setRegId(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 57
    :cond_0
    sget-wide v0, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    sget-wide v5, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    :cond_1
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 61
    :goto_0
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 62
    sput p1, Lorg/telegram/messenger/SharedConfig;->pushType:I

    move v5, v4

    :goto_1
    const/16 v6, 0x10

    if-ge v5, v6, :cond_6

    .line 64
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    .line 65
    iput-boolean v4, v6, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 66
    invoke-virtual {v6, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 67
    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 70
    const-string v0, "fcm"

    goto :goto_2

    :cond_3
    const-string v0, "hcm"

    .line 71
    :goto_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;-><init>()V

    .line 72
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 73
    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    long-to-double v8, v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_token_request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 75
    iput-wide v2, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    .line 76
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 77
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;-><init>()V

    .line 80
    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    long-to-double v8, v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->time:D

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_token_response"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->type:Ljava/lang/String;

    .line 82
    sget-wide v8, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeEnd:J

    sget-wide v10, Lorg/telegram/messenger/SharedConfig;->pushStringGetTimeStart:J

    sub-long/2addr v8, v10

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->peer:J

    .line 83
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_jsonNull;-><init>()V

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_inputAppEvent;->data:Lorg/telegram/tgnet/TLRPC$JSONValue;

    .line 84
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_help_saveAppLog;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    .line 88
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 89
    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move v0, v4

    .line 91
    :cond_4
    new-instance v6, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;

    invoke-direct {v6, v5, p1, p0}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/String;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method public static synthetic $r8$lambda$iPr3PgkHJLl5aQDihBXflfLF_jI(ILorg/telegram/tgnet/TLRPC$TL_updates;)V
    .locals 1

    .line 255
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$k5j5e9Lujg-skyyg8gtnnTTFOME(I)V
    .locals 0

    .line 271
    invoke-static {p0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocationController;->setNewLocationEndWatchTime()V

    return-void
.end method

.method public static synthetic $r8$lambda$nYIZ4V9UJXbKQeRZEvfo7jiLnHo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 104
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 108
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " POST INIT APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 111
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReactedText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "CHAT_REACT_TODO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CHAT_REACT_TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "CHAT_REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "CHAT_REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "CHAT_REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "REACT_STORY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "CHAT_REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "REACT_GIVEAWAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "CHAT_REACT_GIVEAWAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "CHAT_REACT_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "CHAT_REACT_ROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "CHAT_REACT_PHOTO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "CHAT_REACT_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "CHAT_REACT_GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "CHAT_REACT_GEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "CHAT_REACT_DOC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "REACT_TODO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "REACT_TEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "REACT_QUIZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "REACT_POLL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "REACT_GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "CHAT_REACT_STICKER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_20
    const-string v0, "CHAT_REACT_INVOICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_21
    const-string v0, "REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_22
    const-string v0, "CHAT_REACT_NOTEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_23
    const-string v0, "REACT_HIDDEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_24
    const-string v0, "REACT_STORY_HIDDEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_25
    const-string v0, "REACT_GEOLIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_0

    :cond_25
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_26
    const-string v0, "CHAT_REACT_CONTACT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1627
    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactTodo:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1591
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactText:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1630
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactQuiz:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1624
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPoll:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1633
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGame:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1582
    :pswitch_5
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGif:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1561
    :pswitch_6
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeo:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1549
    :pswitch_7
    sget p0, Lorg/telegram/messenger/R$string;->PushReactDoc:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1543
    :pswitch_8
    sget p0, Lorg/telegram/messenger/R$string;->PushReactVideo:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1643
    :pswitch_9
    sget p0, Lorg/telegram/messenger/R$string;->PushReactStory:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1546
    :pswitch_a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactRound:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1540
    :pswitch_b
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPhoto:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1555
    :pswitch_c
    sget p0, Lorg/telegram/messenger/R$string;->PushReactAudio:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1621
    :pswitch_d
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeoLive:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1585
    :pswitch_e
    sget p0, Lorg/telegram/messenger/R$string;->NotificationReactGiveaway:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1588
    :pswitch_f
    sget p0, Lorg/telegram/messenger/R$string;->NotificationChatReactGiveaway:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1600
    :pswitch_10
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactVideo:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1603
    :pswitch_11
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactRound:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1597
    :pswitch_12
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactPhoto:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1612
    :pswitch_13
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactAudio:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1552
    :pswitch_14
    sget p0, Lorg/telegram/messenger/R$string;->PushReactSticker:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1639
    :pswitch_15
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGif:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1618
    :pswitch_16
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactGeo:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1606
    :pswitch_17
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactDoc:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1579
    :pswitch_18
    sget p0, Lorg/telegram/messenger/R$string;->PushReactInvoice:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1570
    :pswitch_19
    sget p0, Lorg/telegram/messenger/R$string;->PushReactTodo:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1534
    :pswitch_1a
    sget p0, Lorg/telegram/messenger/R$string;->PushReactText:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1573
    :pswitch_1b
    sget p0, Lorg/telegram/messenger/R$string;->PushReactQuiz:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1567
    :pswitch_1c
    sget p0, Lorg/telegram/messenger/R$string;->PushReactPoll:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1576
    :pswitch_1d
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGame:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1609
    :pswitch_1e
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactSticker:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1558
    :pswitch_1f
    sget p0, Lorg/telegram/messenger/R$string;->PushReactContect:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1636
    :pswitch_20
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactInvoice:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1537
    :pswitch_21
    sget p0, Lorg/telegram/messenger/R$string;->PushReactNoText:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1594
    :pswitch_22
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactNotext:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1531
    :pswitch_23
    sget p0, Lorg/telegram/messenger/R$string;->PushReactHidden:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1646
    :pswitch_24
    sget p0, Lorg/telegram/messenger/R$string;->PushReactStoryHidden:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1564
    :pswitch_25
    sget p0, Lorg/telegram/messenger/R$string;->PushReactGeoLocation:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1615
    :pswitch_26
    sget p0, Lorg/telegram/messenger/R$string;->PushChatReactContact:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7e0af387 -> :sswitch_26
        -0x70c28b43 -> :sswitch_25
        -0x69ae20cc -> :sswitch_24
        -0x5c91cb76 -> :sswitch_23
        -0x5461d12b -> :sswitch_22
        -0x51f8deb2 -> :sswitch_21
        -0x41ebd47a -> :sswitch_20
        -0x335596e0 -> :sswitch_1f
        -0x276d0e6a -> :sswitch_1e
        0x3191ed2 -> :sswitch_1d
        0x31d6a9f -> :sswitch_1c
        0x31df535 -> :sswitch_1b
        0x31f180d -> :sswitch_1a
        0x31f3b26 -> :sswitch_19
        0x8c9882d -> :sswitch_18
        0xb7e8a11 -> :sswitch_17
        0xb7e942a -> :sswitch_16
        0xb7e949d -> :sswitch_15
        0x23484e3d -> :sswitch_14
        0x25dcca6f -> :sswitch_13
        0x26aa6ccb -> :sswitch_12
        0x26c9e027 -> :sswitch_11
        0x26ff4314 -> :sswitch_10
        0x2b9f8026 -> :sswitch_f
        0x3795b85f -> :sswitch_e
        0x44881816 -> :sswitch_d
        0x5fbf24d6 -> :sswitch_c
        0x608cc732 -> :sswitch_b
        0x60ac3a8e -> :sswitch_a
        0x60bc81f5 -> :sswitch_9
        0x60e19d7b -> :sswitch_8
        0x63325238 -> :sswitch_7
        0x63325c51 -> :sswitch_6
        0x63325cc4 -> :sswitch_5
        0x6453e219 -> :sswitch_4
        0x64582de6 -> :sswitch_3
        0x6458b87c -> :sswitch_2
        0x6459db54 -> :sswitch_1
        0x6459fe6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private static synthetic lambda$processRemoteMessage$6(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 70

    move-object/from16 v0, p0

    .line 112
    const-string/jumbo v1, "user_id"

    const-string v2, "custom"

    const-string/jumbo v3, "loc_key"

    const-string v4, "STORY_NOTEXT"

    const-string v5, "REACT_"

    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_0

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " START PROCESSING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v6, -0x1

    const/16 v7, 0x8

    move-object/from16 v9, p1

    .line 120
    :try_start_0
    invoke-static {v9, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 121
    new-instance v10, Lorg/telegram/tgnet/NativeByteBuffer;

    array-length v11, v9

    invoke-direct {v10, v11}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    .line 122
    :try_start_1
    invoke-virtual {v10, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    const/4 v11, 0x0

    .line 123
    invoke-virtual {v10, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 125
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    if-nez v12, :cond_1

    .line 126
    :try_start_2
    new-array v12, v7, [B

    sput-object v12, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    .line 127
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v12

    .line 128
    array-length v13, v12

    sub-int/2addr v13, v7

    sget-object v14, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v12, v13, v14, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v1, v6

    move v3, v1

    move-object/from16 v37, v10

    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_69

    .line 130
    :cond_1
    :goto_1
    :try_start_3
    new-array v12, v7, [B

    const/4 v13, 0x1

    .line 131
    invoke-virtual {v10, v12, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 132
    sget-object v14, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v14, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    const/4 v15, 0x3

    const/4 v8, 0x2

    if-nez v14, :cond_3

    .line 133
    :try_start_4
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 134
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    .line 135
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DECRYPT ERROR 2 k1=%s k2=%s, key=%s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pushAuthKeyId:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v2, v5, v11

    aput-object v3, v5, v13

    aput-object v4, v5, v8

    invoke-static {v1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1513
    :cond_2
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    :cond_3
    const/16 v12, 0x10

    .line 140
    :try_start_5
    new-array v14, v12, [B

    .line 141
    invoke-virtual {v10, v14, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 143
    sget-object v15, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v15, v14, v13, v8}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZI)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v15

    .line 144
    iget-object v8, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v12, v15, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v15, v15, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    array-length v9, v9

    add-int/lit8 v23, v9, -0x18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    move-object/from16 v17, v8

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    invoke-static/range {v17 .. v23}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 146
    sget-object v26, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    iget-object v8, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    move-result v31

    const/16 v27, 0x60

    const/16 v28, 0x20

    const/16 v30, 0x18

    move-object/from16 v29, v8

    invoke-static/range {v26 .. v31}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIILjava/nio/ByteBuffer;II)[B

    move-result-object v8

    .line 147
    invoke-static {v14, v11, v8, v7}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_12

    if-nez v7, :cond_5

    .line 148
    :try_start_6
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 149
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_4

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DECRYPT ERROR 3, key = %s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v1, v2, v11

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1513
    :cond_4
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 155
    :cond_5
    :try_start_7
    invoke-virtual {v10, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    .line 156
    new-array v7, v7, [B

    .line 157
    invoke-virtual {v10, v7, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    .line 158
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_12

    .line 159
    :try_start_8
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_11

    if-eqz v9, :cond_6

    :try_start_9
    invoke-virtual {v9, v6, v7}, Lorg/telegram/messenger/ApplicationLoader;->consumePush(ILorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 162
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    :catchall_1
    move-exception v0

    move v1, v6

    move v3, v1

    move-object v2, v8

    move-object/from16 v37, v10

    goto/16 :goto_0

    .line 166
    :cond_6
    :try_start_a
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    const-string v12, ""

    if-eqz v9, :cond_7

    .line 167
    :try_start_b
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    :cond_7
    move-object v3, v12

    .line 175
    :goto_2
    :try_start_c
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 176
    instance-of v9, v9, Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    if-eqz v9, :cond_8

    .line 177
    :try_start_d
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move v1, v6

    move-object v2, v8

    move-object/from16 v37, v10

    move-object v8, v3

    move v3, v1

    goto/16 :goto_69

    .line 179
    :cond_8
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 183
    :goto_3
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    if-eqz v9, :cond_9

    .line 184
    :try_start_f
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_a

    .line 190
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_6

    .line 192
    :cond_a
    :try_start_10
    instance-of v9, v1, Ljava/lang/Long;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    if-eqz v9, :cond_b

    .line 193
    :try_start_11
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_6

    .line 194
    :cond_b
    :try_start_12
    instance-of v9, v1, Ljava/lang/Integer;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    if-eqz v9, :cond_c

    .line 195
    :try_start_13
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :goto_5
    int-to-long v14, v1

    goto :goto_6

    .line 196
    :cond_c
    :try_start_14
    instance-of v9, v1, Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    if-eqz v9, :cond_d

    .line 197
    :try_start_15
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_5

    .line 199
    :cond_d
    :try_start_16
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    .line 202
    :goto_6
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    move v9, v11

    const/16 v6, 0x10

    :goto_7
    if-ge v9, v6, :cond_f

    .line 205
    :try_start_17
    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v18

    cmp-long v18, v18, v14

    if-nez v18, :cond_e

    move v1, v9

    move v6, v13

    goto :goto_a

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v8

    move-object/from16 v37, v10

    const/4 v1, -0x1

    :goto_8
    move-object v8, v3

    :goto_9
    const/4 v3, -0x1

    goto/16 :goto_69

    :cond_f
    move v6, v11

    :goto_a
    if-nez v6, :cond_11

    .line 212
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_10

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ACCOUNT NOT FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 215
    :cond_10
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 219
    :cond_11
    :try_start_18
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    if-nez v6, :cond_13

    .line 220
    :try_start_19
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_12

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ACCOUNT NOT ACTIVATED"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_c

    :catchall_4
    move-exception v0

    :goto_b
    move-object v2, v8

    move-object/from16 v37, v10

    goto :goto_8

    .line 223
    :cond_12
    :goto_c
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 226
    :cond_13
    :try_start_1a
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    const-string v9, " "

    if-eqz v6, :cond_14

    .line 227
    :try_start_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 229
    :cond_14
    :try_start_1c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    const-wide/16 v18, 0x3e8

    const-string/jumbo v14, "silent"

    const-string/jumbo v15, "loc_args"

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    :try_start_1d
    const-string v6, "GEO_LIVE_PENDING"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 271
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 272
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 229
    :sswitch_1
    :try_start_1e
    const-string v6, "MESSAGE_ANNOUNCEMENT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 246
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    .line 247
    iput-boolean v11, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->popup:Z

    const/4 v2, 0x2

    .line 248
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->flags:I

    .line 249
    div-long v4, p2, v18

    long-to-int v2, v4

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->inbox_date:I

    .line 250
    const-string/jumbo v2, "message"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->message:Ljava/lang/String;

    .line 251
    const-string v2, "announcement"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->type:Ljava/lang/String;

    .line 252
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 253
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 254
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda1;-><init>(ILorg/telegram/tgnet/TLRPC$TL_updates;)V

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 256
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 257
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 229
    :sswitch_2
    :try_start_1f
    const-string v6, "OAUTH_REQUEST"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 277
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 278
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v6, v11

    :goto_d
    if-ge v6, v4, :cond_15

    .line 281
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_15
    const/4 v0, 0x2

    if-ge v4, v0, :cond_16

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 288
    :cond_16
    :try_start_20
    const-string/jumbo v0, "url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 289
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    if-eqz v0, :cond_17

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 292
    :cond_17
    :try_start_21
    sget v0, Lorg/telegram/messenger/R$string;->BotAuthNotification:I

    aget-object v4, v5, v11

    aget-object v5, v5, v13

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v11

    aput-object v5, v6, v13

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const v5, 0x7ffffff5

    .line 295
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-wide v5, 0x7ffffffffffffff5L

    .line 296
    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 297
    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 298
    div-long v5, p2, v18

    long-to-int v5, v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-wide/32 v5, 0x77629

    .line 299
    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 300
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 301
    iput-wide v5, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 302
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 303
    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 304
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_18

    move v11, v13

    :cond_18
    iput-boolean v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    .line 306
    new-instance v18, Lorg/telegram/messenger/MessageObject;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v21, v0

    move/from16 v19, v1

    move-object/from16 v20, v4

    :try_start_22
    invoke-direct/range {v18 .. v27}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move-object/from16 v2, v18

    move-object/from16 v0, v20

    .line 307
    :try_start_23
    iput-boolean v13, v2, Lorg/telegram/messenger/MessageObject;->isOauthPush:Z

    .line 308
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushListenerController push OAUTH notification to NotificationsController of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 311
    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v4, v13, v13, v2}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_4

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    :catchall_5
    move-exception v0

    move/from16 v1, v19

    goto/16 :goto_b

    :cond_19
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 229
    :sswitch_3
    :try_start_24
    const-string v6, "DC_UPDATE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 231
    const-string v0, "dc"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 232
    const-string v4, "addr"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    array-length v4, v2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1a

    .line 235
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 238
    :cond_1a
    :try_start_25
    aget-object v4, v2, v11

    .line 239
    aget-object v2, v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 240
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->applyDatacenterAddress(ILjava/lang/String;I)V

    .line 241
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 242
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 229
    :sswitch_4
    :try_start_26
    const-string v6, "SESSION_REVOKE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    if-eqz v6, :cond_1b

    .line 261
    :try_start_27
    new-instance v0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 267
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    .line 1513
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    return-void

    .line 323
    :cond_1b
    :goto_e
    :try_start_28
    const-string v6, "channel_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    move-object/from16 v20, v12

    if-eqz v6, :cond_1c

    .line 324
    :try_start_29
    const-string v6, "channel_id"

    const-wide/16 v21, 0x0

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_4

    move-object v6, v14

    neg-long v13, v11

    move-object/from16 v23, v6

    goto :goto_f

    :cond_1c
    const-wide/16 v21, 0x0

    move-object/from16 v23, v14

    move-wide/from16 v11, v21

    move-wide v13, v11

    .line 329
    :goto_f
    :try_start_2a
    const-string v6, "from_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    if-eqz v6, :cond_1d

    .line 330
    :try_start_2b
    const-string v6, "from_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    move-wide/from16 v25, v13

    goto :goto_10

    :cond_1d
    move-wide/from16 v25, v13

    move-wide/from16 v13, v21

    .line 335
    :goto_10
    :try_start_2c
    const-string v6, "chat_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    if-eqz v6, :cond_1e

    .line 336
    :try_start_2d
    const-string v6, "chat_id"
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    move-object/from16 v36, v8

    move-object/from16 v27, v9

    :try_start_2e
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6

    move-object/from16 v30, v7

    neg-long v6, v8

    move-wide/from16 v25, v6

    goto :goto_13

    :catchall_6
    move-exception v0

    :goto_11
    move-object v8, v3

    move-object/from16 v37, v10

    :goto_12
    move-object/from16 v2, v36

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 v36, v8

    goto :goto_11

    :cond_1e
    move-object/from16 v30, v7

    move-object/from16 v36, v8

    move-object/from16 v27, v9

    move-wide/from16 v8, v21

    .line 341
    :goto_13
    :try_start_2f
    const-string/jumbo v6, "topic_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    if-eqz v6, :cond_1f

    .line 342
    :try_start_30
    const-string/jumbo v6, "topic_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    goto :goto_14

    :cond_1f
    const/4 v6, 0x0

    .line 344
    :goto_14
    :try_start_31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    move-object/from16 v37, v10

    :try_start_32
    const-string/jumbo v10, "recived push notification {"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "} chatId "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " custom topicId "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 345
    const-string v7, "encryption_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_d

    if-eqz v7, :cond_20

    .line 346
    :try_start_33
    const-string v7, "encryption_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object v10, v4

    move-object/from16 v31, v5

    int-to-long v4, v7

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_8

    goto :goto_16

    :catchall_8
    move-exception v0

    :goto_15
    move-object v8, v3

    goto :goto_12

    :cond_20
    move-object v10, v4

    move-object/from16 v31, v5

    move-wide/from16 v4, v25

    .line 348
    :goto_16
    :try_start_34
    const-string/jumbo v7, "schedule"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_d

    if-eqz v7, :cond_21

    .line 349
    :try_start_35
    const-string/jumbo v7, "schedule"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    move-wide/from16 v25, v4

    const/4 v4, 0x1

    if-ne v7, v4, :cond_22

    const/4 v4, 0x1

    goto :goto_17

    :cond_21
    move-wide/from16 v25, v4

    :cond_22
    const/4 v4, 0x0

    :goto_17
    cmp-long v5, v25, v21

    if-nez v5, :cond_23

    .line 353
    const-string v5, "ENCRYPTED_MESSAGE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 354
    sget-wide v25, Lorg/telegram/messenger/NotificationsController;->globalSecretChatId:J
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_8

    :cond_23
    move v7, v4

    move-wide/from16 v4, v25

    cmp-long v25, v4, v21

    if-eqz v25, :cond_97

    move/from16 v26, v7

    .line 358
    :try_start_36
    const-string v7, "CONF_CALL_REQUEST"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_d

    move/from16 v32, v7

    const-string v7, "call_id"

    move-object/from16 v33, v10

    const-string/jumbo v10, "msg_id"

    if-nez v32, :cond_92

    move/from16 v38, v1

    :try_start_37
    const-string v1, "CONF_VIDEOCALL_REQUEST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move/from16 v9, v38

    :goto_18
    move-wide/from16 v39, v4

    move-object v1, v7

    move-object/from16 v11, v30

    const/16 v28, 0x0

    goto/16 :goto_61

    .line 376
    :cond_24
    const-string v1, "READ_HISTORY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_b

    move/from16 v32, v1

    const-string v1, " for dialogId = "

    if-eqz v32, :cond_29

    .line 377
    :try_start_38
    const-string/jumbo v6, "max_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 378
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    sget-boolean v7, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v7, :cond_25

    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " received read notification max_id = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_19

    :catchall_9
    move-exception v0

    move-object v8, v3

    move-object/from16 v2, v36

    move/from16 v1, v38

    goto/16 :goto_9

    :cond_25
    :goto_19
    cmp-long v0, v11, v21

    if-eqz v0, :cond_26

    .line 383
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 384
    iput-wide v11, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->channel_id:J

    .line 385
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->max_id:I

    const/4 v1, 0x0

    .line 386
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;->still_unread_count:I

    .line 387
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 389
    :cond_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    cmp-long v1, v13, v21

    if-eqz v1, :cond_27

    .line 391
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 392
    iput-wide v13, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_1a

    .line 394
    :cond_27
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 395
    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 397
    :goto_1a
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;->max_id:I

    .line 398
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_1b
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v29

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v30, v6

    invoke-virtual/range {v29 .. v34}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_9

    :cond_28
    :goto_1c
    move/from16 v9, v38

    goto/16 :goto_64

    :cond_29
    move-wide/from16 v34, v13

    .line 401
    :try_start_39
    const-string v13, "READ_STORIES"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_b

    if-eqz v13, :cond_2a

    .line 402
    :try_start_3a
    const-string/jumbo v0, "max_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v0}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_9

    goto :goto_1c

    .line 404
    :cond_2a
    :try_start_3b
    const-string v13, "STORY_DELETED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_b

    const-string/jumbo v14, "story_id"

    if-eqz v13, :cond_2b

    .line 405
    :try_start_3c
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 406
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v0}, Lorg/telegram/messenger/NotificationsController;->processDeleteStory(JI)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_9

    goto :goto_1c

    .line 407
    :cond_2b
    :try_start_3d
    const-string v13, "MESSAGE_DELETED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_b

    move/from16 v32, v13

    const-string v13, ","

    move-wide/from16 v39, v4

    const-string/jumbo v4, "messages"

    if-eqz v32, :cond_2d

    .line 408
    :try_start_3e
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 410
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 411
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 412
    :goto_1d
    array-length v7, v2

    if-ge v6, v7, :cond_2c

    .line 413
    aget-object v7, v2, v6

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2c
    neg-long v6, v11

    .line 415
    invoke-virtual {v4, v6, v7, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 416
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    .line 418
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v33, v5

    move-wide/from16 v34, v11

    move-wide/from16 v31, v39

    invoke-virtual/range {v30 .. v35}, Lorg/telegram/messenger/MessagesController;->deleteMessagesByPush(JLjava/util/ArrayList;J)V

    move-wide/from16 v11, v31

    move-object/from16 v2, v33

    .line 419
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_28

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " received "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mids = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_9

    goto/16 :goto_1c

    .line 422
    :cond_2d
    :try_start_3f
    const-string v5, "READ_REACTION"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_b

    if-eqz v5, :cond_2f

    .line 423
    :try_start_40
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 425
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 426
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v5, 0x0

    .line 428
    :goto_1e
    array-length v7, v2

    if-ge v5, v7, :cond_2e

    .line 429
    aget-object v7, v2, v5

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 430
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 431
    invoke-virtual {v9, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2e
    neg-long v7, v11

    .line 433
    invoke-virtual {v4, v7, v8, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 434
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroidx/collection/LongSparseArray;Z)V

    .line 436
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    int-to-long v7, v6

    move-wide/from16 v5, v39

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesController;->checkUnreadReactions(JJLandroid/util/SparseBooleanArray;)V

    move-wide v4, v5

    .line 437
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_28

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " received "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mids = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_9

    goto/16 :goto_1c

    .line 440
    :cond_2f
    :try_start_41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 442
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_b

    if-eqz v5, :cond_30

    .line 443
    :try_start_42
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_9

    goto :goto_1f

    .line 444
    :cond_30
    :try_start_43
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_b

    if-eqz v5, :cond_31

    .line 445
    :try_start_44
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_9

    goto :goto_1f

    :cond_31
    const/4 v5, 0x0

    .line 451
    :goto_1f
    :try_start_45
    const-string/jumbo v10, "random_id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_b

    if-eqz v10, :cond_32

    .line 452
    :try_start_46
    const-string/jumbo v10, "random_id"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    move-wide/from16 v68, v41

    move-wide/from16 v41, v8

    move-wide/from16 v8, v68

    goto :goto_20

    :cond_32
    move-wide/from16 v41, v8

    move-wide/from16 v8, v21

    :goto_20
    if-eqz v5, :cond_35

    .line 459
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v13}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_33

    .line 461
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    move-wide/from16 v43, v11

    move-wide/from16 v11, v39

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 462
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    move/from16 v32, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v6, v10}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_33
    move/from16 v32, v6

    move-wide/from16 v43, v11

    move-wide/from16 v11, v39

    .line 464
    :goto_21
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_34

    const/4 v6, 0x1

    goto :goto_22

    :cond_34
    const/4 v6, 0x0

    :goto_22
    move-object/from16 v10, v31

    goto :goto_23

    :cond_35
    move/from16 v32, v6

    move-wide/from16 v43, v11

    move-wide/from16 v11, v39

    cmp-long v6, v8, v21

    if-eqz v6, :cond_36

    .line 468
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->checkMessageByRandomId(J)Z

    move-result v6
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_9

    if-nez v6, :cond_36

    move-object/from16 v10, v31

    const/4 v6, 0x1

    goto :goto_23

    :cond_36
    move-object/from16 v10, v31

    const/4 v6, 0x0

    .line 473
    :goto_23
    :try_start_47
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_b

    move/from16 v31, v5

    const-string v5, "CHAT_REACT_"

    if-nez v13, :cond_38

    :try_start_48
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_9

    if-eqz v13, :cond_37

    goto :goto_25

    :cond_37
    :goto_24
    move-object/from16 v13, v33

    goto :goto_26

    :cond_38
    :goto_25
    const/4 v6, 0x1

    goto :goto_24

    .line 478
    :goto_26
    :try_start_49
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_b

    move/from16 v39, v6

    const-string v6, "STORY_LIVE"

    move-wide/from16 v45, v8

    const-string v8, "STORY_HIDDEN_AUTHOR"

    if-nez v33, :cond_3a

    :try_start_4a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_9

    if-eqz v9, :cond_39

    goto :goto_27

    :cond_39
    move/from16 v14, v39

    const/4 v9, -0x1

    goto :goto_29

    .line 479
    :cond_3a
    :goto_27
    :try_start_4b
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_b

    if-eqz v9, :cond_3b

    .line 480
    :try_start_4c
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_9

    goto :goto_28

    :cond_3b
    const/4 v9, -0x1

    :goto_28
    if-ltz v9, :cond_3c

    const/4 v14, 0x1

    goto :goto_29

    :cond_3c
    const/4 v14, 0x0

    :goto_29
    if-eqz v14, :cond_91

    .line 486
    :try_start_4d
    const-string v14, "chat_from_id"

    move-wide/from16 v39, v11

    move-object/from16 v33, v13

    move-wide/from16 v11, v21

    invoke-virtual {v2, v14, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    move/from16 v47, v9

    .line 487
    const-string v9, "chat_from_broadcast_id"

    move-wide/from16 v48, v13

    invoke-virtual {v2, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 488
    const-string v9, "chat_from_group_id"

    invoke-virtual {v2, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v50

    cmp-long v9, v48, v11

    if-nez v9, :cond_3e

    cmp-long v52, v50, v11

    if-eqz v52, :cond_3d

    goto :goto_2a

    :cond_3d
    const/4 v11, 0x0

    goto :goto_2b

    :cond_3e
    :goto_2a
    const/4 v11, 0x1

    .line 491
    :goto_2b
    const-string/jumbo v12, "mention"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_b

    if-eqz v12, :cond_3f

    :try_start_4e
    const-string/jumbo v12, "mention"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_9

    if-eqz v12, :cond_3f

    move-object/from16 v12, v23

    move/from16 v23, v9

    move-object v9, v12

    const/4 v12, 0x1

    goto :goto_2c

    :cond_3f
    move-object/from16 v12, v23

    move/from16 v23, v9

    move-object v9, v12

    const/4 v12, 0x0

    .line 492
    :goto_2c
    :try_start_4f
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v52
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_b

    if-eqz v52, :cond_40

    :try_start_50
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_9

    if-eqz v9, :cond_40

    move-object/from16 v9, v30

    move/from16 v30, v11

    move-object v11, v9

    const/4 v9, 0x1

    goto :goto_2d

    :cond_40
    move-object/from16 v9, v30

    move/from16 v30, v11

    move-object v11, v9

    const/4 v9, 0x0

    .line 495
    :goto_2d
    :try_start_51
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v52
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_b

    if-eqz v52, :cond_42

    .line 496
    :try_start_52
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 497
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    move/from16 v52, v12

    new-array v12, v15, [Ljava/lang/String;

    move-object/from16 v53, v12

    const/4 v12, 0x0

    :goto_2e
    if-ge v12, v15, :cond_41

    .line 499
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v54

    aput-object v54, v53, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    :cond_41
    move-object/from16 v12, v53

    goto :goto_2f

    :cond_42
    move/from16 v52, v12

    const/4 v12, 0x0

    :goto_2f
    if-eqz v12, :cond_44

    .line 506
    array-length v11, v12

    if-gtz v11, :cond_43

    goto :goto_30

    :cond_43
    const/16 v28, 0x0

    aget-object v11, v12, v28
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_9

    goto :goto_31

    :cond_44
    :goto_30
    const/4 v11, 0x0

    .line 512
    :goto_31
    :try_start_53
    const-string v15, "edit_date"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    move/from16 v53, v15

    .line 513
    const-string v15, "CHAT_"

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_b

    if-eqz v15, :cond_48

    if-eqz v12, :cond_48

    :try_start_54
    array-length v15, v12

    if-lez v15, :cond_48

    .line 514
    invoke-static/range {v39 .. v40}, Lorg/telegram/messenger/UserObject;->isReplyUser(J)Z

    move-result v15

    if-eqz v15, :cond_46

    .line 515
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " @ "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v29, 0x1

    aget-object v11, v12, v29

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_45
    move-object/from16 v54, v11

    move/from16 v56, v25

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_32
    const/16 v25, 0x0

    :goto_33
    const/16 v55, 0x0

    goto :goto_37

    :cond_46
    const-wide/16 v21, 0x0

    cmp-long v15, v43, v21

    if-eqz v15, :cond_47

    const/4 v15, 0x1

    :goto_34
    const/16 v29, 0x1

    goto :goto_35

    :cond_47
    const/4 v15, 0x0

    goto :goto_34

    .line 519
    :goto_35
    aget-object v54, v12, v29
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_9

    move-object/from16 v55, v11

    move/from16 v56, v25

    const/4 v11, 0x0

    const/16 v25, 0x0

    goto :goto_37

    .line 521
    :cond_48
    :try_start_55
    const-string v15, "PINNED_"

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4a

    const-wide/16 v21, 0x0

    cmp-long v15, v43, v21

    if-eqz v15, :cond_49

    const/4 v15, 0x1

    goto :goto_36

    :cond_49
    const/4 v15, 0x0

    :goto_36
    move-object/from16 v54, v11

    move/from16 v56, v25

    const/4 v11, 0x1

    goto :goto_32

    .line 524
    :cond_4a
    const-string v15, "CHANNEL_"

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_45

    move-object/from16 v54, v11

    move/from16 v56, v25

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x1

    goto :goto_33

    .line 529
    :goto_37
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v57

    if-nez v57, :cond_4b

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v57

    if-eqz v57, :cond_4c

    :cond_4b
    move-object/from16 v65, v1

    move-object/from16 v60, v5

    move/from16 v62, v9

    move-object/from16 v61, v10

    move/from16 v58, v11

    move-wide/from16 v63, v13

    move/from16 v59, v15

    move-object/from16 v13, v33

    move/from16 v9, v38

    const/16 v28, 0x0

    goto/16 :goto_56

    .line 532
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v57
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_b

    move/from16 v58, v11

    const-string v11, "Files"

    move/from16 v59, v15

    const-string v15, "AmongWinners"

    move-object/from16 v60, v5

    const-string v5, "NotificationPaidMedia"

    move-object/from16 v61, v10

    const-string v10, "Videos"

    move/from16 v62, v9

    const-string v9, "MusicFiles"

    move-wide/from16 v63, v13

    const-string v13, "Photos"

    const-string v14, "NotificationPinnedPaidMedia"

    move-object/from16 v65, v1

    const-string v1, "NotificationMessageFew"

    move-object/from16 v66, v2

    const-string v2, "NotificationGroupFew"

    move-object/from16 v67, v7

    const-string v7, "ChannelMessageFew"

    sparse-switch v57, :sswitch_data_1

    :cond_4d
    move-object/from16 v13, v33

    move/from16 v9, v38

    :goto_38
    const/16 v28, 0x0

    goto/16 :goto_54

    :sswitch_5
    :try_start_56
    const-string v1, "CHAT_MESSAGE_GEOLIVE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1034
    const-string v1, "NotificationMessageGroupLiveLocation"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupLiveLocation:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1035
    sget v2, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_39
    move-object/from16 v16, v2

    :goto_3a
    move/from16 v5, v31

    move-object/from16 v13, v33

    move/from16 v9, v38

    :goto_3b
    const/16 v24, 0x0

    :goto_3c
    const/16 v28, 0x0

    goto/16 :goto_57

    .line 532
    :sswitch_6
    const-string v1, "MESSAGE_STARGIFT_PREPAID_UPGRADE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v28, 0x0

    .line 591
    aget-object v55, v12, v28

    .line 592
    const-string v1, "NotificationMessageUniqueStarGiftPrepaidUpgrade"

    const/4 v4, 0x1

    aget-object v2, v12, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v5, v12, v28

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 593
    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniquePrepaidUpgradeNotification:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 532
    :sswitch_7
    const-string v1, "CHANNEL_MESSAGE_PHOTOS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 912
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v2, 0x0

    aget-object v4, v12, v2

    const/16 v29, 0x1

    aget-object v5, v12, v29

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v13, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v2

    const/16 v29, 0x1

    aput-object v5, v9, v29

    invoke-static {v7, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3d
    move/from16 v5, v31

    move-object/from16 v13, v33

    move/from16 v9, v38

    :goto_3e
    const/16 v16, 0x0

    const/16 v24, 0x1

    goto :goto_3c

    .line 532
    :sswitch_8
    const-string v1, "CHANNEL_MESSAGE_NOTEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 814
    const-string v1, "ChannelMessageNoText"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageNoText:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 815
    sget v2, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_9
    const-string v1, "CHANNEL_MESSAGE_PLAYLIST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 922
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v13, 0x0

    aget-object v2, v12, v13

    const/16 v29, 0x1

    aget-object v4, v12, v29

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v9, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v13

    const/16 v29, 0x1

    aput-object v4, v5, v29

    invoke-static {v7, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    .line 532
    :sswitch_a
    const-string v1, "PINNED_CONTACT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_4e

    .line 1254
    const-string v1, "NotificationActionPinnedContactUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3f
    move/from16 v5, v31

    move-object/from16 v13, v33

    move/from16 v9, v38

    :goto_40
    const/16 v16, 0x0

    goto/16 :goto_3b

    :cond_4e
    if-eqz v30, :cond_4f

    .line 1257
    const-string v1, "NotificationActionPinnedContact2"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContact2:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v24, 0x2

    aget-object v5, v12, v24

    const/16 v29, 0x1

    aget-object v7, v12, v29

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    .line 1259
    :cond_4f
    const-string v1, "NotificationActionPinnedContactChannel2"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedContactChannel2:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    .line 532
    :sswitch_b
    const-string v1, "CHAT_PHOTO_EDITED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1067
    const-string v1, "NotificationEditedGroupPhoto"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationEditedGroupPhoto:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    .line 532
    :sswitch_c
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 540
    sget v1, Lorg/telegram/messenger/R$string;->StoryLiveNotificationSingle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_41
    move-object/from16 v13, v33

    move/from16 v9, v38

    move/from16 v5, v47

    goto :goto_40

    .line 532
    :sswitch_d
    const-string v1, "LOCKED_MESSAGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :goto_42
    move/from16 v9, v38

    goto/16 :goto_4e

    :sswitch_e
    const-string v1, "CHAT_MESSAGE_PLAYLIST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1130
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v13

    const/16 v29, 0x1

    aput-object v5, v9, v29

    const/16 v24, 0x2

    aput-object v7, v9, v24

    invoke-static {v2, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_f
    const-string v1, "CHAT_REACT_PAID_MEDIA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v4, 0x1

    .line 627
    aget-object v1, v12, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v28, 0x0

    .line 628
    aget-object v2, v12, v28

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v28

    invoke-static {v14, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 629
    aget-object v5, v12, v28

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v28

    invoke-static {v14, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_43
    move-object/from16 v16, v1

    move-object v1, v2

    goto/16 :goto_3a

    .line 532
    :sswitch_10
    const-string v1, "CHANNEL_MESSAGES"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 932
    const-string v1, "ChannelMessageAlbum"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageAlbum:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_11
    const-string v1, "MESSAGE_INVOICE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 742
    const-string v1, "NotificationMessageInvoice"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageInvoice:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 743
    sget v2, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_12
    const-string v1, "CHAT_MESSAGE_VIDEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 971
    const-string v1, "NotificationMessageGroupVideo"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupVideo:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 972
    sget v2, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_13
    const-string v1, "CHAT_MESSAGE_STORY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 961
    const-string v1, "NotificationChatStory"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationChatStory:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 962
    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_14
    const-string v1, "CHAT_MESSAGE_ROUND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 976
    const-string v1, "NotificationMessageGroupRound"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupRound:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 977
    sget v2, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_15
    const-string v1, "CHAT_MESSAGE_PHOTO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 966
    const-string v1, "NotificationMessageGroupPhoto"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPhoto:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 967
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_16
    const-string v1, "CHAT_MESSAGE_AUDIO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 996
    const-string v1, "NotificationMessageGroupAudio"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupAudio:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 997
    sget v2, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_17
    const-string v2, "MESSAGE_PLAYLIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 762
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v5, v12, v29

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v9, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v13

    const/16 v29, 0x1

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_18
    const-string v2, "MESSAGE_VIDEOS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 757
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v5, v12, v29

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v10, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v13

    const/16 v29, 0x1

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_19
    const-string v1, "PHONE_CALL_MISSED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_42

    :sswitch_1a
    const-string v1, "CHANNEL_MESSAGE_GIVEAWAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 800
    const-string v1, "NotificationMessageChannelGiveaway"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageChannelGiveaway:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 801
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_1b
    const-string v1, "MESSAGE_STARGIFT_UPGRADE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v28, 0x0

    .line 585
    aget-object v55, v12, v28

    .line 586
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageUniqueStarGiftUpgrade:I

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v55, v2, v28

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 587
    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueUpgradeNotification:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_1c
    const-string v1, "CHAT_MESSAGE_GIVEAWAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 937
    const-string v1, "NotificationMessageChatGiveaway"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageChatGiveaway:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    aget-object v10, v12, v9

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v28

    aput-object v5, v11, v29

    aput-object v7, v11, v24

    aput-object v10, v11, v9

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 938
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_1d
    const-string v2, "MESSAGE_PHOTOS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 752
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v7, 0x0

    aget-object v4, v12, v7

    const/16 v29, 0x1

    aget-object v5, v12, v29

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v13, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v7

    const/16 v29, 0x1

    aput-object v5, v9, v29

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_1e
    const-string v1, "CHAT_MESSAGE_VIDEOS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1125
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v10, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v13

    const/16 v29, 0x1

    aput-object v5, v9, v29

    const/16 v24, 0x2

    aput-object v7, v9, v24

    invoke-static {v2, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_1f
    const-string v1, "MESSAGE_NOTEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 633
    const-string v1, "NotificationMessageNoText"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageNoText:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 634
    sget v2, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_20
    const-string v1, "MESSAGE_GIF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 727
    const-string v1, "NotificationMessageGif"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGif:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 728
    sget v2, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_21
    const-string v1, "MESSAGE_GEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 717
    const-string v1, "NotificationMessageMap"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageMap:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 718
    sget v2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_22
    const-string v1, "MESSAGE_DOC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 677
    const-string v1, "NotificationMessageDocument"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageDocument:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 678
    sget v2, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_23
    const-string v1, "CHAT_MESSAGE_GAME_SCORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1049
    const-string v1, "NotificationMessageGroupGameScored"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGameScored:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    aget-object v10, v12, v9

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v28

    aput-object v5, v11, v29

    aput-object v7, v11, v24

    aput-object v10, v11, v9

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_24
    const-string v1, "CHANNEL_MESSAGE_GEOLIVE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 892
    const-string v1, "ChannelMessageLiveLocation"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageLiveLocation:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 893
    sget v2, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_25
    const-string v1, "CHAT_MESSAGE_PHOTOS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1120
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v7, 0x0

    aget-object v4, v12, v7

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v9, v12, v24

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v13, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v7

    const/16 v29, 0x1

    aput-object v5, v10, v29

    const/16 v24, 0x2

    aput-object v9, v10, v24

    invoke-static {v2, v1, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_26
    const-string v1, "MESSAGE_PAID_MEDIA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v4, 0x1

    .line 603
    aget-object v1, v12, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 604
    const-string v2, "NotificationMessagePaidMedia"

    const/4 v13, 0x0

    aget-object v7, v12, v13

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v13

    invoke-static {v2, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 605
    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_43

    .line 532
    :sswitch_27
    const-string v1, "MESSAGE_GIVEAWAY_STARS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_9

    if-eqz v1, :cond_4d

    const/16 v29, 0x1

    .line 784
    :try_start_57
    aget-object v1, v12, v29

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_0
    .catchall {:try_start_57 .. :try_end_57} :catchall_9

    goto :goto_44

    :catch_0
    const/4 v1, 0x1

    .line 786
    :goto_44
    :try_start_58
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageStarsGiveaway2:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v15, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2

    aget-object v5, v12, v24

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v13

    const/16 v29, 0x1

    aput-object v1, v7, v29

    aput-object v5, v7, v24

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_28
    const-string v1, "CHAT_MESSAGE_NOTEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 956
    const-string v1, "NotificationMessageGroupNoText"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupNoText:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 957
    sget v2, Lorg/telegram/messenger/R$string;->Message:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_29
    const-string v1, "CHAT_TITLE_EDITED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1063
    const-string v1, "NotificationEditedGroupName"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationEditedGroupName:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_2a
    const-string v1, "PINNED_NOTEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_50

    .line 1158
    const-string v1, "NotificationActionPinnedNoTextUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_50
    if-eqz v30, :cond_51

    .line 1161
    const-string v1, "NotificationActionPinnedNoText"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoText:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1163
    :cond_51
    const-string v1, "NotificationActionPinnedNoTextChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedNoTextChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_2b
    const-string v1, "MESSAGE_TODO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 712
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageTodo2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 713
    sget v2, Lorg/telegram/messenger/R$string;->Todo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_2c
    const-string v1, "MESSAGE_TEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_49

    :sswitch_2d
    const-string v1, "MESSAGE_QUIZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 702
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageQuiz2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 703
    sget v2, Lorg/telegram/messenger/R$string;->QuizPoll:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_2e
    const-string v1, "MESSAGE_POLL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 707
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessagePoll2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 708
    sget v2, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_2f
    const-string v1, "MESSAGE_GAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 732
    const-string v1, "NotificationMessageGame"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 733
    sget v2, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_30
    const-string v1, "MESSAGE_FWDS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 747
    const-string v1, "NotificationMessageForwardFew"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageForwardFew:I

    const/4 v13, 0x0

    aget-object v5, v12, v13

    const/16 v29, 0x1

    aget-object v7, v12, v29

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v13

    const/16 v29, 0x1

    aput-object v4, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_31
    const-string v2, "MESSAGE_DOCS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 767
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageFew:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v5, v12, v29

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v11, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v13

    const/16 v29, 0x1

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_32
    const-string v1, "MESSAGE_STORY_MENTION"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 643
    sget v1, Lorg/telegram/messenger/R$string;->StoryNotificationMention:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_33
    const-string v1, "CHAT_MESSAGE_TODO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1016
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupTodo2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/16 v24, 0x2

    aget-object v5, v12, v24

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v28

    aput-object v4, v7, v29

    aput-object v5, v7, v24

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    sget v2, Lorg/telegram/messenger/R$string;->Todo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_34
    const-string v1, "CHAT_MESSAGE_TEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 951
    const-string v1, "NotificationMessageGroupText"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupText:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 952
    aget-object v2, v12, v24

    goto/16 :goto_39

    .line 532
    :sswitch_35
    const-string v1, "CHAT_MESSAGE_QUIZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1006
    const-string v1, "NotificationMessageGroupQuiz2"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupQuiz2:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    sget v2, Lorg/telegram/messenger/R$string;->PollQuiz:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_36
    const-string v1, "CHAT_MESSAGE_POLL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1011
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupPoll2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/16 v24, 0x2

    aget-object v5, v12, v24

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v28

    aput-object v4, v7, v29

    aput-object v5, v7, v24

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    sget v2, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_37
    const-string v1, "CHAT_MESSAGE_GAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1044
    const-string v1, "NotificationMessageGroupGame"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGame:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    sget v2, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_38
    const-string v1, "CHAT_MESSAGE_FWDS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1115
    const-string v1, "NotificationGroupForwardedFew"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupForwardedFew:I

    const/4 v13, 0x0

    aget-object v5, v12, v13

    const/16 v29, 0x1

    aget-object v7, v12, v29

    const/16 v24, 0x2

    aget-object v9, v12, v24

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v13

    const/16 v29, 0x1

    aput-object v7, v9, v29

    const/16 v24, 0x2

    aput-object v4, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_39
    const-string v1, "CHAT_MESSAGE_DOCS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1135
    sget v1, Lorg/telegram/messenger/R$string;->NotificationGroupFew:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v11, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v13

    const/16 v29, 0x1

    aput-object v5, v9, v29

    const/16 v24, 0x2

    aput-object v7, v9, v24

    invoke-static {v2, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_3a
    const-string v1, "CHANNEL_MESSAGE_GAME_SCORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move/from16 v9, v38

    goto/16 :goto_52

    :sswitch_3b
    const-string v1, "PINNED_GEOLIVE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_52

    .line 1318
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_52
    if-eqz v30, :cond_53

    .line 1321
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLive:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1323
    :cond_53
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoLiveChannel:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_3c
    const-string v1, "MESSAGE_STARGIFT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v28, 0x0

    .line 573
    aget-object v55, v12, v28

    .line 574
    const-string v1, "NotificationMessageStarGift"

    const/4 v5, 0x1

    aget-object v2, v12, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v12, v28

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 575
    const-string v2, "Gift2Notification"

    aget-object v4, v12, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_3d
    const-string v1, "MESSAGE_GIVEAWAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 777
    const-string v1, "NotificationMessageGiveaway"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGiveaway:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_3e
    const-string v1, "CHANNEL_MESSAGE_GIVEAWAY_STARS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_9

    if-eqz v1, :cond_4d

    const/16 v29, 0x1

    .line 807
    :try_start_59
    aget-object v1, v12, v29

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_1
    .catchall {:try_start_59 .. :try_end_59} :catchall_9

    goto :goto_45

    :catch_1
    const/4 v1, 0x1

    .line 809
    :goto_45
    :try_start_5a
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageChannelStarsGiveaway2:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v15, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x2

    aget-object v5, v12, v24

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v13

    const/16 v29, 0x1

    aput-object v1, v7, v29

    aput-object v5, v7, v24

    invoke-static {v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 810
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_3f
    const-string v1, "CHAT_MESSAGE_TODO_DONE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1021
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupTodoDone2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/16 v24, 0x2

    aget-object v5, v12, v24

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v28

    aput-object v4, v7, v29

    aput-object v5, v7, v24

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_40
    const-string v1, "MESSAGE_CONTACT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 697
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageContact2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 698
    sget v2, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_41
    const-string v1, "PINNED_VIDEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_54

    .line 1182
    const-string v1, "NotificationActionPinnedVideoUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_54
    if-eqz v30, :cond_55

    .line 1185
    const-string v1, "NotificationActionPinnedVideo"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideo:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1187
    :cond_55
    const-string v1, "NotificationActionPinnedVideoChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVideoChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_42
    const-string v1, "PINNED_ROUND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_56

    .line 1194
    const-string v1, "NotificationActionPinnedRoundUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_56
    if-eqz v30, :cond_57

    .line 1197
    const-string v1, "NotificationActionPinnedRound"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRound:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1199
    :cond_57
    const-string v1, "NotificationActionPinnedRoundChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedRoundChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_43
    const-string v1, "PINNED_PHOTO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_58

    .line 1170
    const-string v1, "NotificationActionPinnedPhotoUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_58
    if-eqz v30, :cond_59

    .line 1173
    const-string v1, "NotificationActionPinnedPhoto"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhoto:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1175
    :cond_59
    const-string v1, "NotificationActionPinnedPhotoChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPhotoChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_44
    const-string v1, "PINNED_AUDIO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_5a

    .line 1242
    const-string v1, "NotificationActionPinnedVoiceUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_5a
    if-eqz v30, :cond_5b

    .line 1245
    const-string v1, "NotificationActionPinnedVoice"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoice:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1247
    :cond_5b
    const-string v1, "NotificationActionPinnedVoiceChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedVoiceChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_45
    const-string v1, "MESSAGE_STARGIFT_UNPACK_UPGRADE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v28, 0x0

    .line 597
    aget-object v55, v12, v28

    .line 598
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageUniqueStarGiftUnpackUpgrade:I

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v55, v2, v28

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 599
    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueUnpackUpgradeNotification:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_46
    const-string v1, "MESSAGE_PHOTO_SECRET"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 653
    const-string v1, "NotificationMessageSDPhoto"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageSDPhoto:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 654
    sget v2, Lorg/telegram/messenger/R$string;->AttachDestructingPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_47
    const-string v1, "CHAT_VOICECHAT_INVITE_YOU"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1087
    const-string v1, "NotificationGroupInvitedYouToCall"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedYouToCall:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_48
    const-string v1, "MESSAGE_GIFTCODE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 772
    const-string v1, "NotificationMessageGiftCode"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGiftCode:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const-string v5, "Months"

    const/16 v29, 0x1

    aget-object v7, v12, v29

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v13

    const/16 v29, 0x1

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_49
    const-string v1, "CHANNEL_MESSAGE_VIDEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 829
    const-string v1, "ChannelMessageVideo"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageVideo:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 830
    sget v2, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_4a
    const-string v1, "CHANNEL_MESSAGE_STORY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 819
    const-string v1, "NotificationChannelStory"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationChannelStory:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 820
    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_4b
    const-string v1, "CHANNEL_MESSAGE_ROUND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 834
    const-string v1, "ChannelMessageRound"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageRound:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 835
    sget v2, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_4c
    const-string v1, "CHANNEL_MESSAGE_PHOTO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 824
    const-string v1, "ChannelMessagePhoto"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessagePhoto:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 825
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_4d
    const-string v1, "CHAT_VOICECHAT_END"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1083
    const-string v1, "NotificationGroupEndedCall"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupEndedCall:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_4e
    const-string v1, "CHANNEL_MESSAGE_AUDIO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 854
    const-string v1, "ChannelMessageAudio"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageAudio:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 855
    sget v2, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_4f
    const-string v1, "CHAT_MESSAGE_STICKER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 986
    array-length v1, v12

    const/4 v9, 0x2

    if-le v1, v9, :cond_5c

    aget-object v1, v12, v9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 987
    const-string v1, "NotificationMessageGroupStickerEmoji"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupStickerEmoji:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v12, v24

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    :cond_5c
    move-object/from16 v4, v27

    .line 990
    const-string v1, "NotificationMessageGroupSticker"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupSticker:I

    const/16 v28, 0x0

    aget-object v5, v12, v28

    const/16 v29, 0x1

    aget-object v7, v12, v29

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v28

    aput-object v7, v9, v29

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v12, v29

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_50
    const-string v1, "MESSAGES"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 795
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageAlbum:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_51
    const-string v1, "CHAT_MESSAGE_GIF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1039
    const-string v1, "NotificationMessageGroupGif"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupGif:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1040
    sget v2, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_52
    const-string v1, "CHAT_MESSAGE_GEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1029
    const-string v1, "NotificationMessageGroupMap"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupMap:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    sget v2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_53
    const-string v1, "CHAT_MESSAGE_DOC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 981
    const-string v1, "NotificationMessageGroupDocument"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupDocument:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 982
    sget v2, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_54
    const-string v1, "CHAT_VOICECHAT_INVITE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1079
    const-string v1, "NotificationGroupInvitedToCall"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupInvitedToCall:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_55
    const-string v1, "CHAT_MESSAGE_PAID_MEDIA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v9, 0x2

    .line 615
    aget-object v1, v12, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 616
    const-string v2, "NotificationChatMessagePaidMedia"

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v7, v12, v29

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v13

    aput-object v7, v9, v29

    invoke-static {v2, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 617
    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_43

    .line 532
    :sswitch_56
    const-string v1, "CHAT_LEFT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1099
    const-string v1, "NotificationGroupLeftMember"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupLeftMember:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_57
    const-string v1, "PINNED_GIVEAWAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1265
    sget v1, Lorg/telegram/messenger/R$string;->NotificationPinnedGiveaway:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_58
    const-string v1, "CHAT_ADD_YOU"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move/from16 v9, v38

    goto/16 :goto_51

    :sswitch_59
    const-string v1, "REACT_TEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move-object/from16 v13, v33

    move/from16 v9, v38

    :goto_46
    const/16 v28, 0x0

    goto/16 :goto_55

    :sswitch_5a
    const-string v1, "CHANNEL_MESSAGE_PAID_MEDIA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v4, 0x1

    .line 609
    aget-object v1, v12, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 610
    const-string v2, "NotificationChannelMessagePaidMedia"

    const/4 v13, 0x0

    aget-object v7, v12, v13

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v13

    invoke-static {v2, v1, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 611
    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_43

    .line 532
    :sswitch_5b
    const-string v1, "CHAT_DELETE_MEMBER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1091
    const-string v1, "NotificationGroupKickMember"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupKickMember:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    array-length v7, v12

    const/4 v9, 0x2

    if-gt v7, v9, :cond_5d

    move-object/from16 v12, v20

    :goto_47
    const/4 v10, 0x3

    goto :goto_48

    :cond_5d
    aget-object v12, v12, v9

    goto :goto_47

    :goto_48
    new-array v7, v10, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object v4, v7, v28

    const/16 v29, 0x1

    aput-object v5, v7, v29

    aput-object v12, v7, v9

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_5c
    const-string v1, "MESSAGE_SUGGEST_BIRTHDAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 791
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageSuggestBirthday:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_5d
    const-string v1, "MESSAGE_SCREENSHOT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 668
    sget v1, Lorg/telegram/messenger/R$string;->ActionTakeScreenshoot:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "un1"

    const/16 v28, 0x0

    aget-object v4, v12, v28

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_5e
    const-string v1, "AUTH_REGION"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_42

    :sswitch_5f
    const-string v1, "CONTACT_JOINED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_42

    :sswitch_60
    const-string v1, "CHAT_MESSAGE_INVOICE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1053
    const-string v1, "NotificationMessageGroupInvoice"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupInvoice:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    sget v2, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_61
    const-string v1, "ENCRYPTION_REQUEST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_42

    :sswitch_62
    const-string v1, "MESSAGE_GEOLIVE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 722
    const-string v1, "NotificationMessageLiveLocation"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageLiveLocation:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 723
    sget v2, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_63
    const-string v1, "MESSAGE_SAME_WALLPAPER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 552
    const-string v1, "ActionSetSameWallpaperForThisChat"

    sget v2, Lorg/telegram/messenger/R$string;->ActionSetSameWallpaperForThisChat:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 553
    sget v2, Lorg/telegram/messenger/R$string;->WallpaperSameNotification:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_64
    const-string v1, "CHANNEL_MESSAGE_TODO_APPEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 883
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageTodoAppend2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v9, 0x2

    aget-object v4, v12, v9

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    const/16 v29, 0x1

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_65
    const-string v1, "CHAT_DELETE_YOU"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1095
    const-string v1, "NotificationGroupKickYou"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupKickYou:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_66
    const-string v1, "AUTH_UNKNOWN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_42

    :sswitch_67
    const-string v1, "MESSAGE_WALLPAPER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 557
    const-string v1, "ActionSetWallpaperForThisChat"

    sget v2, Lorg/telegram/messenger/R$string;->ActionSetWallpaperForThisChat:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 558
    sget v2, Lorg/telegram/messenger/R$string;->WallpaperNotification:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_68
    const-string v1, "PINNED_GIF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_5e

    .line 1366
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_5e
    if-eqz v30, :cond_5f

    .line 1369
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGif:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1371
    :cond_5f
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGifChannel:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_69
    const-string v1, "PINNED_GEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_60

    .line 1306
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_60
    if-eqz v30, :cond_61

    .line 1309
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeo:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1311
    :cond_61
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGeoChannel:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_6a
    const-string v1, "PINNED_DOC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_62

    .line 1206
    const-string v1, "NotificationActionPinnedFileUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_62
    if-eqz v30, :cond_63

    .line 1209
    const-string v1, "NotificationActionPinnedFile"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFile:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1211
    :cond_63
    const-string v1, "NotificationActionPinnedFileChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedFileChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_6b
    const-string v1, "PINNED_GAME_SCORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_64

    .line 1342
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_64
    if-eqz v30, :cond_65

    .line 1345
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScore:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1347
    :cond_65
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameScoreChannel:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :sswitch_6c
    move-object/from16 v4, v27

    .line 532
    const-string v1, "CHANNEL_MESSAGE_STICKER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 844
    array-length v1, v12

    const/4 v5, 0x1

    if-le v1, v5, :cond_66

    aget-object v1, v12, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 845
    const-string v1, "ChannelMessageStickerEmoji"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageStickerEmoji:I

    const/16 v28, 0x0

    aget-object v7, v12, v28

    aget-object v9, v12, v5

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v28

    aput-object v9, v10, v5

    invoke-static {v1, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v12, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 848
    :cond_66
    const-string v1, "ChannelMessageSticker"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageSticker:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 849
    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_6d
    const-string v1, "MESSAGE_UNIQUE_STARGIFT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/16 v28, 0x0

    .line 579
    aget-object v55, v12, v28

    .line 580
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageUniqueStarGift:I

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v55, v2, v28

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 581
    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueNotification:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_6e
    const-string v1, "PHONE_CALL_REQUEST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto/16 :goto_42

    :sswitch_6f
    const-string v1, "PINNED_STICKER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_68

    .line 1218
    array-length v1, v12

    const/4 v5, 0x1

    if-le v1, v5, :cond_67

    aget-object v1, v12, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 1219
    const-string v1, "NotificationActionPinnedStickerEmojiUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    aget-object v7, v12, v5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v7, v9, v5

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1221
    :cond_67
    const-string v1, "NotificationActionPinnedStickerUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_68
    if-eqz v30, :cond_6a

    .line 1225
    array-length v1, v12

    const/4 v9, 0x2

    if-le v1, v9, :cond_69

    aget-object v1, v12, v9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 1226
    const-string v1, "NotificationActionPinnedStickerEmoji"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmoji:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    aget-object v5, v12, v9

    const/16 v29, 0x1

    aget-object v7, v12, v29

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v28

    aput-object v5, v10, v29

    aput-object v7, v10, v9

    invoke-static {v1, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1228
    :cond_69
    const-string v1, "NotificationActionPinnedSticker"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedSticker:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1231
    :cond_6a
    array-length v1, v12

    const/4 v5, 0x1

    if-le v1, v5, :cond_6b

    aget-object v1, v12, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 1232
    const-string v1, "NotificationActionPinnedStickerEmojiChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerEmojiChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    aget-object v7, v12, v5

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v7, v9, v5

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1234
    :cond_6b
    const-string v1, "NotificationActionPinnedStickerChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedStickerChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_70
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 546
    const-string v1, "StoryNotificationHidden"

    const/4 v13, 0x0

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v1, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_41

    .line 532
    :sswitch_71
    const-string v1, "CHANNEL_MESSAGE_TODO_DONE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 879
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageTodoDone2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v9, 0x2

    aget-object v4, v12, v9

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    const/16 v29, 0x1

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_72
    const-string v1, "PINNED_TODO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_6c

    .line 1294
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTodoUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_6c
    if-eqz v30, :cond_6d

    .line 1297
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTodo2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v24, 0x2

    aget-object v4, v12, v24

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v28

    aput-object v4, v7, v29

    aput-object v5, v7, v24

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1299
    :cond_6d
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTodoChannel2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_73
    const-string v1, "PINNED_TEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_6e

    .line 1146
    const-string v1, "NotificationActionPinnedTextUser"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextUser:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_6e
    if-eqz v30, :cond_6f

    .line 1149
    const-string v1, "NotificationActionPinnedText"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedText:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1151
    :cond_6f
    const-string v1, "NotificationActionPinnedTextChannel"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationActionPinnedTextChannel:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_74
    const-string v1, "PINNED_QUIZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_70

    .line 1270
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_70
    if-eqz v30, :cond_71

    .line 1273
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuiz2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v24, 0x2

    aget-object v4, v12, v24

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v28

    aput-object v4, v7, v29

    aput-object v5, v7, v24

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1275
    :cond_71
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedQuizChannel2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_75
    const-string v1, "PINNED_POLL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_72

    .line 1282
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_72
    if-eqz v30, :cond_73

    .line 1285
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPoll2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v24, 0x2

    aget-object v4, v12, v24

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v28

    aput-object v4, v7, v29

    aput-object v5, v7, v24

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1287
    :cond_73
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedPollChannel2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_76
    const-string v1, "PINNED_GAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_74

    .line 1330
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_74
    if-eqz v30, :cond_75

    .line 1333
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGame:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1335
    :cond_75
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedGameChannel:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_77
    const-string v1, "CHAT_MESSAGE_CONTACT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1001
    const-string v1, "NotificationMessageGroupContact2"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGroupContact2:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v28

    aput-object v5, v9, v29

    aput-object v7, v9, v24

    invoke-static {v1, v2, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    sget v2, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_78
    const-string v1, "MESSAGE_VIDEO_SECRET"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 663
    const-string v1, "NotificationMessageSDVideo"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageSDVideo:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 664
    sget v2, Lorg/telegram/messenger/R$string;->AttachDestructingVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_79
    const-string v1, "CHANNEL_MESSAGE_TODO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 874
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageTodo2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 875
    sget v2, Lorg/telegram/messenger/R$string;->Todo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_7a
    const-string v1, "CHANNEL_MESSAGE_TEXT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 568
    :goto_49
    const-string v1, "NotificationMessageText"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageText:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 569
    aget-object v2, v12, v29

    goto/16 :goto_39

    .line 532
    :sswitch_7b
    const-string v1, "CHANNEL_MESSAGE_QUIZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 864
    const-string v1, "ChannelMessageQuiz2"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageQuiz2:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 865
    sget v2, Lorg/telegram/messenger/R$string;->QuizPoll:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_7c
    const-string v1, "CHANNEL_MESSAGE_POLL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 869
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessagePoll2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 870
    sget v2, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_7d
    const-string v1, "CHANNEL_MESSAGE_GAME"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 902
    const-string v1, "NotificationMessageGame"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGame:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 903
    sget v2, Lorg/telegram/messenger/R$string;->AttachGame:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    .line 532
    :sswitch_7e
    const-string v1, "CHANNEL_MESSAGE_FWDS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 907
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v13, 0x0

    aget-object v2, v12, v13

    const-string v4, "ForwardedMessageCount"

    const/16 v29, 0x1

    aget-object v5, v12, v29

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v13

    const/16 v29, 0x1

    aput-object v4, v5, v29

    invoke-static {v7, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_7f
    const-string v1, "CHANNEL_MESSAGE_DOCS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 927
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v13, 0x0

    aget-object v2, v12, v13

    const/16 v29, 0x1

    aget-object v4, v12, v29

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v13

    const/16 v29, 0x1

    aput-object v4, v5, v29

    invoke-static {v7, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3d

    .line 532
    :sswitch_80
    const-string v1, "PINNED_INVOICE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-lez v56, :cond_76

    .line 1354
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceUser:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    :cond_76
    if-eqz v30, :cond_77

    .line 1357
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoice:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v28

    aput-object v4, v5, v29

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 1359
    :cond_77
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionPinnedInvoiceChannel:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_81
    const-string v1, "CHAT_RETURNED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1103
    const-string v1, "NotificationGroupAddSelf"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelf:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 532
    :sswitch_82
    const-string v1, "ENCRYPTED_MESSAGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1377
    sget v1, Lorg/telegram/messenger/R$string;->YouHaveNewMessage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1378
    sget v2, Lorg/telegram/messenger/R$string;->SecretChatName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v54
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_9

    goto/16 :goto_3d

    .line 532
    :sswitch_83
    :try_start_5b
    const-string v1, "CONF_CALL_MISSED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    move-object/from16 v2, v66

    move-object/from16 v1, v67

    .line 1383
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1384
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_b

    move/from16 v9, v38

    :try_start_5c
    invoke-static {v4, v9, v1, v2}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hideByCallId(Landroid/content/Context;IJ)V

    const/4 v5, 0x1

    .line 1385
    aget-object v1, v12, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_78

    .line 1387
    sget v1, Lorg/telegram/messenger/R$string;->NotificationActionMissedCallConference:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4a
    move/from16 v5, v31

    move-object/from16 v13, v33

    goto/16 :goto_40

    :catchall_a
    move-exception v0

    :goto_4b
    move-object v8, v3

    move v1, v9

    goto/16 :goto_12

    .line 1389
    :cond_78
    const-string v2, "NotificationActionMissedCallConferenceOther"

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v2, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    :catchall_b
    move-exception v0

    move/from16 v9, v38

    goto :goto_4b

    :cond_79
    move/from16 v9, v38

    :cond_7a
    move-object/from16 v13, v33

    goto/16 :goto_38

    :sswitch_84
    move/from16 v9, v38

    .line 532
    const-string v1, "ENCRYPTION_ACCEPT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto/16 :goto_4e

    :sswitch_85
    move/from16 v9, v38

    const-string v1, "MESSAGE_VIDEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 658
    const-string v1, "NotificationMessageVideo"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageVideo:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 659
    sget v2, Lorg/telegram/messenger/R$string;->AttachVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4c
    move-object/from16 v16, v2

    :goto_4d
    move/from16 v5, v31

    move-object/from16 v13, v33

    goto/16 :goto_3b

    :sswitch_86
    move/from16 v9, v38

    .line 532
    const-string v1, "MESSAGE_STORY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 638
    const-string v1, "NotificationStory"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationStory:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 639
    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :sswitch_87
    move/from16 v9, v38

    .line 532
    const-string v1, "MESSAGE_ROUND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 672
    const-string v1, "NotificationMessageRound"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageRound:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 673
    sget v2, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :sswitch_88
    move/from16 v9, v38

    .line 532
    const-string v1, "MESSAGE_PHOTO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 648
    const-string v1, "NotificationMessagePhoto"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessagePhoto:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 649
    sget v2, Lorg/telegram/messenger/R$string;->AttachPhoto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :sswitch_89
    move/from16 v9, v38

    .line 532
    const-string v1, "MESSAGE_MUTED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    :goto_4e
    move-object/from16 v13, v33

    goto/16 :goto_46

    :sswitch_8a
    move/from16 v9, v38

    const-string v1, "MESSAGE_AUDIO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 692
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageAudio:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 693
    sget v2, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_8b
    move/from16 v9, v38

    .line 532
    const-string v1, "MESSAGE_RECURRING_PAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 562
    const-string v1, "NotificationMessageRecurringPay"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageRecurringPay:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 563
    sget v2, Lorg/telegram/messenger/R$string;->PaymentInvoice:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_8c
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_MESSAGES"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1140
    const-string v1, "NotificationGroupAlbum"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupAlbum:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4f
    move/from16 v5, v31

    move-object/from16 v13, v33

    goto/16 :goto_3e

    :sswitch_8d
    move/from16 v9, v38

    .line 532
    const-string v1, "PINNED_PAID_MEDIA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const/4 v5, 0x1

    .line 621
    aget-object v1, v12, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v28, 0x0

    .line 622
    aget-object v2, v12, v28

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v28

    invoke-static {v14, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 623
    aget-object v4, v12, v28

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v14, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move-object v1, v2

    goto/16 :goto_4d

    :sswitch_8e
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_VOICECHAT_START"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1075
    const-string v1, "NotificationGroupCreatedCall"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupCreatedCall:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :sswitch_8f
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_REQ_JOINED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1111
    const-string v1, "UserAcceptedToGroupPushWithGroup"

    sget v2, Lorg/telegram/messenger/R$string;->UserAcceptedToGroupPushWithGroup:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :sswitch_90
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_MESSAGE_GIVEAWAY_STARS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_a

    if-eqz v1, :cond_7a

    const/16 v24, 0x2

    .line 944
    :try_start_5d
    aget-object v1, v12, v24

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_2
    .catchall {:try_start_5d .. :try_end_5d} :catchall_a

    goto :goto_50

    :catch_2
    const/4 v1, 0x1

    .line 946
    :goto_50
    :try_start_5e
    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageChatStarsGiveaway2:I

    const/4 v13, 0x0

    aget-object v4, v12, v13

    const/16 v29, 0x1

    aget-object v5, v12, v29

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v15, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x3

    aget-object v7, v12, v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v13

    const/16 v29, 0x1

    aput-object v5, v11, v29

    const/16 v24, 0x2

    aput-object v1, v11, v24

    aput-object v7, v11, v10

    invoke-static {v2, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 947
    sget v2, Lorg/telegram/messenger/R$string;->BoostingGiveaway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_91
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_MESSAGE_TODO_APPEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1025
    sget v1, Lorg/telegram/messenger/R$string;->NotificationMessageGroupTodoAppend2:I

    const/16 v28, 0x0

    aget-object v2, v12, v28

    const/16 v29, 0x1

    aget-object v4, v12, v29

    const/16 v24, 0x2

    aget-object v5, v12, v24

    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v28

    aput-object v4, v7, v29

    aput-object v5, v7, v24

    invoke-static {v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :sswitch_92
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_JOINED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1107
    const-string v1, "NotificationGroupAddSelfMega"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupAddSelfMega:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :sswitch_93
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_ADD_MEMBER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1071
    const-string v1, "NotificationGroupAddMember"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationGroupAddMember:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v28

    aput-object v5, v10, v29

    aput-object v7, v10, v24

    invoke-static {v1, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :sswitch_94
    move/from16 v9, v38

    .line 532
    const-string v1, "CHANNEL_MESSAGE_GIF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 897
    const-string v1, "ChannelMessageGIF"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageGIF:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 898
    sget v2, Lorg/telegram/messenger/R$string;->AttachGif:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_95
    move/from16 v9, v38

    .line 532
    const-string v1, "CHANNEL_MESSAGE_GEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 887
    const-string v1, "ChannelMessageMap"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageMap:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 888
    sget v2, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_96
    move/from16 v9, v38

    .line 532
    const-string v1, "CHANNEL_MESSAGE_DOC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 839
    const-string v1, "ChannelMessageDocument"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageDocument:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 840
    sget v2, Lorg/telegram/messenger/R$string;->AttachDocument:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_97
    move/from16 v9, v38

    .line 532
    const-string v1, "CHANNEL_MESSAGE_VIDEOS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 917
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMessageFew:I

    const/4 v13, 0x0

    aget-object v2, v12, v13

    const/16 v29, 0x1

    aget-object v4, v12, v29

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v10, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v13

    const/16 v29, 0x1

    aput-object v4, v5, v29

    invoke-static {v7, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4f

    :sswitch_98
    move-object/from16 v4, v27

    move/from16 v9, v38

    .line 532
    const-string v1, "MESSAGE_STICKER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 682
    array-length v1, v12

    const/4 v5, 0x1

    if-le v1, v5, :cond_7b

    aget-object v1, v12, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 683
    const-string v1, "NotificationMessageStickerEmoji"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageStickerEmoji:I

    const/16 v28, 0x0

    aget-object v7, v12, v28

    aget-object v10, v12, v5

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v28

    aput-object v10, v11, v5

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v12, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    .line 686
    :cond_7b
    const-string v1, "NotificationMessageSticker"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageSticker:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v28

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 687
    sget v2, Lorg/telegram/messenger/R$string;->AttachSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_99
    move/from16 v9, v38

    .line 532
    const-string v1, "CHAT_CREATED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1059
    :goto_51
    const-string v1, "NotificationInvitedToGroup"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationInvitedToGroup:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4a

    :sswitch_9a
    move/from16 v9, v38

    .line 532
    const-string v1, "CHANNEL_MESSAGE_CONTACT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 859
    const-string v1, "ChannelMessageContact2"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelMessageContact2:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v28

    aput-object v5, v7, v29

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 860
    sget v2, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4c

    :sswitch_9b
    move/from16 v9, v38

    .line 532
    const-string v1, "MESSAGE_GAME_SCORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 738
    :goto_52
    const-string v1, "NotificationMessageGameScored"

    sget v2, Lorg/telegram/messenger/R$string;->NotificationMessageGameScored:I

    const/16 v28, 0x0

    aget-object v4, v12, v28

    const/16 v29, 0x1

    aget-object v5, v12, v29

    const/16 v24, 0x2

    aget-object v7, v12, v24

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v28

    aput-object v5, v10, v29

    aput-object v7, v10, v24

    invoke-static {v1, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v24, v28

    move/from16 v5, v31

    move-object/from16 v13, v33

    :goto_53
    const/16 v16, 0x0

    goto :goto_57

    :cond_7c
    const/16 v28, 0x0

    move-object/from16 v13, v33

    goto :goto_54

    :sswitch_9c
    move-object/from16 v13, v33

    move/from16 v9, v38

    const/16 v28, 0x0

    .line 532
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 534
    sget v1, Lorg/telegram/messenger/R$string;->StoryNotificationSingle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v24, v28

    move/from16 v5, v47

    goto :goto_53

    .line 1410
    :cond_7d
    :goto_54
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7e

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled loc_key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_7e
    :goto_55
    move/from16 v24, v28

    move/from16 v5, v31

    const/4 v1, 0x0

    goto :goto_53

    .line 530
    :goto_56
    invoke-static {v3, v12}, Lorg/telegram/messenger/PushListenerController;->getReactedText(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v24, v28

    move/from16 v5, v31

    goto :goto_53

    .line 1418
    :goto_57
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_7f

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " received message notification "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v65

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v39

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mid = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_58

    :cond_7f
    move-wide/from16 v10, v39

    :goto_58
    if-eqz v1, :cond_98

    .line 1422
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 1423
    const-string v2, "REACT_STORY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    if-lez v5, :cond_80

    neg-int v5, v5

    .line 1426
    :cond_80
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-wide/from16 v14, v45

    .line 1427
    iput-wide v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    if-eqz v16, :cond_81

    move-object/from16 v2, v16

    goto :goto_59

    :cond_81
    move-object v2, v1

    .line 1428
    :goto_59
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1429
    div-long v14, p2, v18

    long-to-int v2, v14

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-eqz v58, :cond_82

    .line 1431
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    :cond_82
    if-eqz v59, :cond_83

    .line 1434
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1436
    :cond_83
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v21, 0x0

    cmp-long v2, v43, v21

    if-eqz v2, :cond_84

    .line 1438
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v14, v43

    .line 1439
    iput-wide v14, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    move v7, v5

    move-wide/from16 v14, v41

    goto :goto_5a

    :cond_84
    const-wide/16 v21, 0x0

    cmp-long v2, v41, v21

    if-eqz v2, :cond_85

    .line 1441
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v14, v41

    .line 1442
    iput-wide v14, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    move v7, v5

    goto :goto_5a

    :cond_85
    move-wide/from16 v14, v41

    .line 1444
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move v7, v5

    move-wide/from16 v4, v34

    .line 1445
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1447
    :goto_5a
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const-wide/16 v21, 0x0

    cmp-long v2, v50, v21

    if-eqz v2, :cond_86

    .line 1449
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1450
    iput-wide v14, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_5b

    :cond_86
    const-wide/16 v21, 0x0

    cmp-long v2, v63, v21

    if-eqz v2, :cond_87

    .line 1452
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v63

    .line 1453
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_5b

    :cond_87
    if-eqz v23, :cond_88

    .line 1455
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v4, v48

    .line 1456
    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_5b

    .line 1458
    :cond_88
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_5b
    if-nez v52, :cond_8a

    if-eqz v58, :cond_89

    goto :goto_5c

    :cond_89
    move/from16 v2, v28

    goto :goto_5d

    :cond_8a
    :goto_5c
    const/4 v2, 0x1

    .line 1460
    :goto_5d
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    move/from16 v2, v62

    .line 1461
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move/from16 v4, v26

    .line 1462
    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    .line 1464
    new-instance v18, Lorg/telegram/messenger/MessageObject;
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_a

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v19, v9

    move/from16 v27, v53

    move-object/from16 v22, v54

    move-object/from16 v23, v55

    move/from16 v26, v59

    :try_start_5f
    invoke-direct/range {v18 .. v27}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_c

    move-object/from16 v1, v18

    move/from16 v9, v19

    move-object/from16 v0, v20

    if-eqz v32, :cond_8b

    .line 1466
    :try_start_60
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 1467
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    move/from16 v4, v32

    .line 1468
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    .line 1470
    :cond_8b
    const-string v2, "REACT_STORY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isStoryReactionPush:Z

    if-nez v2, :cond_8d

    move-object/from16 v2, v61

    .line 1471
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8c

    move-object/from16 v2, v60

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    :cond_8c
    const/4 v4, 0x1

    goto :goto_5e

    :cond_8d
    move/from16 v4, v28

    :goto_5e
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    .line 1472
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    goto :goto_5f

    :cond_8e
    move/from16 v2, v28

    goto :goto_60

    :cond_8f
    :goto_5f
    const/4 v2, 0x1

    :goto_60
    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isStoryPush:Z

    .line 1473
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isLiveStoryPush:Z

    .line 1474
    const-string v2, "MESSAGE_STORY_MENTION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isStoryMentionPush:Z

    .line 1475
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->isStoryPushHidden:Z

    .line 1476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushListenerController push notification to NotificationsController of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1480
    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->isStoryReactionPush:Z

    if-nez v0, :cond_90

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->isReactionPush:Z

    if-nez v0, :cond_90

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->isStoryMentionPush:Z

    if-nez v0, :cond_90

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->isStoryPush:Z

    if-nez v0, :cond_90

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->isStoryPushHidden:Z

    if-nez v0, :cond_90

    if-nez v52, :cond_90

    if-nez v58, :cond_90

    if-lez v7, :cond_90

    .line 1483
    new-instance v0, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v9, v10, v11, v7}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda4;-><init>(IJI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1485
    :cond_90
    invoke-static {v9}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5, v5, v1}, Lorg/telegram/messenger/NotificationsController;->processNewMessages(Ljava/util/ArrayList;ZZLjava/util/concurrent/CountDownLatch;)V

    goto/16 :goto_65

    :catchall_c
    move-exception v0

    move/from16 v9, v19

    goto/16 :goto_4b

    :cond_91
    move-object v1, v7

    move/from16 v9, v38

    .line 1487
    const-string v0, "CONF_CALL_MISSED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1488
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1489
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v9, v0, v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hideByCallId(Landroid/content/Context;IJ)V

    goto/16 :goto_64

    :cond_92
    move v9, v1

    goto/16 :goto_18

    .line 359
    :goto_61
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 360
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 362
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 363
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move/from16 v11, v28

    :goto_62
    if-ge v11, v4, :cond_94

    .line 366
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_62

    :cond_93
    const/4 v5, 0x0

    .line 371
    :cond_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, p2

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v10, v2

    cmp-long v2, v6, v10

    if-gez v2, :cond_96

    .line 372
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v5, :cond_95

    array-length v2, v5

    const/4 v7, 0x2

    if-le v2, v7, :cond_95

    aget-object v8, v5, v7

    move-object/from16 v22, v8

    goto :goto_63

    :cond_95
    const/16 v22, 0x0

    :goto_63
    const-string v2, "CONF_VIDEOCALL_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_a

    move-wide/from16 v23, v0

    move/from16 v19, v9

    move-wide/from16 v20, v39

    :try_start_61
    invoke-static/range {v18 .. v26}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->request(Landroid/content/Context;IJLjava/lang/String;JIZ)V
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_c

    move/from16 v9, v19

    goto :goto_64

    :cond_96
    move/from16 v0, v25

    .line 374
    :try_start_62
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v9, v0}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hide(Landroid/content/Context;II)V

    goto :goto_64

    :catchall_d
    move-exception v0

    move v9, v1

    goto/16 :goto_15

    :cond_97
    move v9, v1

    .line 1494
    :cond_98
    :goto_64
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1497
    :goto_65
    invoke-static {v9}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1498
    invoke-static {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_a

    .line 1513
    :goto_66
    invoke-virtual/range {v37 .. v37}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto/16 :goto_6b

    :catchall_e
    move-exception v0

    move v9, v1

    :goto_67
    move-object/from16 v37, v10

    goto/16 :goto_15

    :catchall_f
    move-exception v0

    move v9, v1

    move-object/from16 v36, v8

    goto :goto_67

    :catchall_10
    move-exception v0

    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object v8, v3

    move-object/from16 v2, v36

    const/4 v1, -0x1

    goto/16 :goto_9

    :catchall_11
    move-exception v0

    move-object/from16 v36, v8

    move-object/from16 v37, v10

    move-object/from16 v2, v36

    const/4 v1, -0x1

    :goto_68
    const/4 v3, -0x1

    goto/16 :goto_0

    :catchall_12
    move-exception v0

    move-object/from16 v37, v10

    const/4 v1, -0x1

    const/4 v2, 0x0

    goto :goto_68

    :catchall_13
    move-exception v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/16 v37, 0x0

    :goto_69
    if-eq v1, v3, :cond_99

    .line 1501
    :try_start_63
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1502
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    .line 1503
    sget-object v1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6a

    :catchall_14
    move-exception v0

    goto :goto_6c

    .line 1505
    :cond_99
    invoke-static {}, Lorg/telegram/messenger/PushListenerController;->onDecryptError()V

    .line 1507
    :goto_6a
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_9a

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in loc_key = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " json "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1510
    :cond_9a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_14

    if-eqz v37, :cond_9b

    goto :goto_66

    :cond_9b
    :goto_6b
    return-void

    :goto_6c
    if-eqz v37, :cond_9c

    .line 1513
    invoke-virtual/range {v37 .. v37}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1515
    :cond_9c
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x750b1f91 -> :sswitch_4
        -0x36e09b77 -> :sswitch_3
        -0x2d842b59 -> :sswitch_2
        0x25bae29f -> :sswitch_1
        0x51668772 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d742ee8 -> :sswitch_9c
        -0x7d2c2cc3 -> :sswitch_9b
        -0x7ca9bbb4 -> :sswitch_9a
        -0x7a6b9b1f -> :sswitch_99
        -0x79940f3b -> :sswitch_98
        -0x7897de74 -> :sswitch_97
        -0x75fd5c9c -> :sswitch_96
        -0x75fd5283 -> :sswitch_95
        -0x75fd5210 -> :sswitch_94
        -0x755ca0a1 -> :sswitch_93
        -0x740845f0 -> :sswitch_92
        -0x70c5168c -> :sswitch_91
        -0x6d481660 -> :sswitch_90
        -0x665baa8f -> :sswitch_8f
        -0x6225bbba -> :sswitch_8e
        -0x615a9ca8 -> :sswitch_8d
        -0x5b1425ad -> :sswitch_8c
        -0x59d54652 -> :sswitch_8b
        -0x590636a2 -> :sswitch_8a
        -0x585ce10d -> :sswitch_89
        -0x58389446 -> :sswitch_88
        -0x581920ea -> :sswitch_87
        -0x5808d983 -> :sswitch_86
        -0x57e3bdfd -> :sswitch_85
        -0x575cbebc -> :sswitch_84
        -0x551df4ff -> :sswitch_83
        -0x51f367b4 -> :sswitch_82
        -0x51d5692a -> :sswitch_81
        -0x4b5ada5a -> :sswitch_80
        -0x49ae3691 -> :sswitch_7f
        -0x49ad2fac -> :sswitch_7e
        -0x49ad0cda -> :sswitch_7d
        -0x49a8c10d -> :sswitch_7c
        -0x49a83677 -> :sswitch_7b
        -0x49a7139f -> :sswitch_7a
        -0x49a6f086 -> :sswitch_79
        -0x4768bb94 -> :sswitch_78
        -0x4302c33f -> :sswitch_77
        -0x40ade407 -> :sswitch_76
        -0x40a9983a -> :sswitch_75
        -0x40a90da4 -> :sswitch_74
        -0x40a7eacc -> :sswitch_73
        -0x40a7c7b3 -> :sswitch_72
        -0x387d9ed9 -> :sswitch_71
        -0x3528982a -> :sswitch_70
        -0x30dc144a -> :sswitch_6f
        -0x2e05f321 -> :sswitch_6e
        -0x2a19f928 -> :sswitch_6d
        -0x260bd697 -> :sswitch_6c
        -0x2330d954 -> :sswitch_6b
        -0x231e6bcf -> :sswitch_6a
        -0x231e61b6 -> :sswitch_69
        -0x231e6143 -> :sswitch_68
        -0x1b1ed076 -> :sswitch_67
        -0x1a3c736d -> :sswitch_66
        -0x189a094e -> :sswitch_65
        -0x14a0cc81 -> :sswitch_64
        -0xe733f5f -> :sswitch_63
        -0xd9ee8bb -> :sswitch_62
        -0xcbb124d -> :sswitch_61
        -0x6e3a432 -> :sswitch_60
        -0x6b67798 -> :sswitch_5f
        -0x677ea95 -> :sswitch_5e
        -0x6696b42 -> :sswitch_5d
        -0x49aa5b0 -> :sswitch_5c
        -0x26a80f9 -> :sswitch_5b
        -0x21e9b3b -> :sswitch_5a
        0x31f180d -> :sswitch_59
        0x3e3b55a -> :sswitch_58
        0x72dca06 -> :sswitch_57
        0x8681c8e -> :sswitch_56
        0xb6c9c30 -> :sswitch_55
        0xc12ab85 -> :sswitch_54
        0x127a1e59 -> :sswitch_53
        0x127a2872 -> :sswitch_52
        0x127a28e5 -> :sswitch_51
        0x131af14c -> :sswitch_50
        0x139b21de -> :sswitch_4f
        0x13bfdb02 -> :sswitch_4e
        0x1468b5bf -> :sswitch_4d
        0x148d7d5e -> :sswitch_4c
        0x14acf0ba -> :sswitch_4b
        0x14bd3821 -> :sswitch_4a
        0x14e253a7 -> :sswitch_49
        0x1e6d0875 -> :sswitch_48
        0x2443e845 -> :sswitch_47
        0x24b30ed5 -> :sswitch_46
        0x29e669f4 -> :sswitch_45
        0x2aa5cc8f -> :sswitch_44
        0x2b736eeb -> :sswitch_43
        0x2b92e247 -> :sswitch_42
        0x2bc84534 -> :sswitch_41
        0x2fce0ba8 -> :sswitch_40
        0x334d105c -> :sswitch_3f
        0x35bc5fb5 -> :sswitch_3e
        0x38e666d7 -> :sswitch_3d
        0x3a3cffda -> :sswitch_3c
        0x3b191236 -> :sswitch_3b
        0x3c0b2819 -> :sswitch_3a
        0x3cc9ad1a -> :sswitch_39
        0x3ccab3ff -> :sswitch_38
        0x3ccad6d1 -> :sswitch_37
        0x3ccf229e -> :sswitch_36
        0x3ccfad34 -> :sswitch_35
        0x3cd0d00c -> :sswitch_34
        0x3cd0f325 -> :sswitch_33
        0x3edbaa08 -> :sswitch_32
        0x3f329f93 -> :sswitch_31
        0x3f33a678 -> :sswitch_30
        0x3f33c94a -> :sswitch_2f
        0x3f381517 -> :sswitch_2e
        0x3f389fad -> :sswitch_2d
        0x3f39c285 -> :sswitch_2c
        0x3f39e59e -> :sswitch_2b
        0x3ff570b5 -> :sswitch_2a
        0x40428597 -> :sswitch_29
        0x422ad58d -> :sswitch_28
        0x4432d8d9 -> :sswitch_27
        0x44aa0fe9 -> :sswitch_26
        0x452fd3a0 -> :sswitch_25
        0x45e94fe9 -> :sswitch_24
        0x49965f84 -> :sswitch_23
        0x4c5c78c0 -> :sswitch_22
        0x4c5c82d9 -> :sswitch_21
        0x4c5c834c -> :sswitch_20
        0x4e210dc6 -> :sswitch_1f
        0x4f75c677 -> :sswitch_1e
        0x51260bd9 -> :sswitch_1d
        0x519d58de -> :sswitch_1c
        0x54a85297 -> :sswitch_1b
        0x566542b3 -> :sswitch_1a
        0x594dba2b -> :sswitch_19
        0x5b6bfeb0 -> :sswitch_18
        0x5bcc8b2a -> :sswitch_17
        0x5c446cb7 -> :sswitch_16
        0x5d120f13 -> :sswitch_15
        0x5d31826f -> :sswitch_14
        0x5d41c9d6 -> :sswitch_13
        0x5d66e55c -> :sswitch_12
        0x6bed2ab5 -> :sswitch_11
        0x6c316928 -> :sswitch_10
        0x6d821178 -> :sswitch_f
        0x74837d31 -> :sswitch_e
        0x7504afb2 -> :sswitch_d
        0x77bd9e16 -> :sswitch_c
        0x7817407d -> :sswitch_b
        0x78860699 -> :sswitch_a
        0x794b6706 -> :sswitch_9
        0x7a1d30a2 -> :sswitch_8
        0x7d222eb5 -> :sswitch_7
        0x7d5b8727 -> :sswitch_6
        0x7f90485e -> :sswitch_5
    .end sparse-switch
.end method

.method private static onDecryptError()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 1654
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1655
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived(I)V

    .line 1656
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1659
    :cond_1
    sget-object v0, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static processRemoteMessage(ILjava/lang/String;J)V
    .locals 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 98
    const-string p0, "FCM"

    goto :goto_0

    :cond_0
    const-string p0, "HCM"

    .line 99
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRE START PROCESSING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 103
    new-instance v2, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1519
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/PushListenerController;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    :catchall_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_2

    .line 1524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finished "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " service, time = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static sendRegistrationToServer(ILjava/lang/String;)V
    .locals 2

    .line 51
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lorg/telegram/messenger/PushListenerController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
