.class public abstract Lcom/exteragram/messenger/utils/network/RemoteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static lastInitTime:J

.field public static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$1KIDgrfkvDk217GUe3k-y74ajpk(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/AccountInstance;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 261
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    .line 262
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 263
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 264
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    int-to-long p1, p5

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$46mUGun92abcfiukauq4x97j_ek(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 256
    invoke-interface {p1, p2, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 252
    :cond_1
    :goto_0
    invoke-interface {p1, p0, p3}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AIZtPRC5Vxz46P873cr5PQfu3is(Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;ILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    if-eqz p4, :cond_0

    .line 273
    iget-wide v0, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide v2, -0x84c3e8bbL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 275
    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 276
    iget-wide v1, p4, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 277
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 278
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    int-to-long p1, p3

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LmfFRuJdEdEVAug9vbi59pl5km0(Lorg/telegram/tgnet/TLRPC$messages_Messages;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    .line 92
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 94
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 95
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string/jumbo v5, "remote_config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 99
    array-length v4, v3

    move v6, v1

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 100
    const-string v8, "="

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 101
    array-length v8, v7

    if-ne v8, v9, :cond_1

    .line 102
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 103
    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 104
    const-string/jumbo v9, "null"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 105
    invoke-static {v8, v7}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->updateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->removeOldPreferences(Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$eNTNmIzDWEebkWIkwoFUzANQvM8()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$eYTZWsbH-a8E4keikReZBgMSoF4(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    new-instance v0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$fPDFOdPnDYda3xZkxkhL3nt1vrQ(Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 209
    invoke-interface {p0, p1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_1
    :goto_0
    invoke-interface {p0, v0, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPzb_MHSBv9HREWrpq1TwQ9zVxA(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    .line 249
    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3, p4}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wpFmLdCTd4P2-BQcJG8DkR6gPJ8(Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 216
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-wide v2, -0x84c3e8bbL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 218
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 219
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 220
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getBooleanConfigValue(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 3

    .line 342
    :try_start_0
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 348
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 349
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 350
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 353
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting value for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/AppUtils;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatConfigValue(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 3

    .line 320
    :try_start_0
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 324
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 326
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 327
    :cond_1
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 328
    check-cast v0, Ljava/lang/Float;

    return-object v0

    .line 329
    :cond_2
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 330
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 331
    :cond_3
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 332
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 335
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting value for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/AppUtils;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static getIntConfigValue(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 3

    .line 286
    :try_start_0
    sget-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 289
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 290
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 291
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 292
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting int config value for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/AppUtils;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getMessages(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 7

    .line 197
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    .line 198
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    .line 199
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const-wide v3, -0x84c3e8bbL

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v2, 0x0

    .line 200
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_id:I

    const/16 v2, 0x4b

    .line 201
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    .line 203
    new-instance v2, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1, p0}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 212
    iget-object p0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v3, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    .line 213
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p0

    new-instance v0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;Ljava/lang/Runnable;)V

    const-string v1, "XS6GEcz5ZXMu82UvXQc"

    invoke-virtual {p0, v1, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->resolveChannel(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private static getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 67
    sget-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->initCached()V

    .line 70
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getStringConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 380
    :try_start_0
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-object p1

    .line 389
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting value for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/AppUtils;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static getStringSetConfigValue(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 360
    :try_start_0
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 365
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 367
    check-cast v0, Ljava/util/Set;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 368
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 369
    check-cast v0, Ljava/lang/String;

    const-string v1, ",\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_2
    :goto_0
    return-object p1

    .line 373
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting value for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/exteragram/messenger/utils/AppUtils;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static init()V
    .locals 6

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    sget-wide v2, Lcom/exteragram/messenger/utils/network/RemoteUtils;->lastInitTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 84
    :cond_0
    sput-wide v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->lastInitTime:J

    .line 85
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->initCached()V

    .line 86
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->loadConfig()V

    return-void
.end method

.method public static initCached()V
    .locals 3

    .line 74
    sget-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "exteraremoteconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method private static loadConfig()V
    .locals 1

    .line 90
    new-instance v0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getMessages(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private static parseConfigValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 154
    const-string v0, "-?\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 158
    :catch_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    const-string v0, "-?\\d+(\\.\\d+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 164
    :cond_1
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 167
    :cond_2
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 170
    :cond_3
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 175
    :cond_4
    const-string v0, ",\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_5
    return-object p0
.end method

.method private static removeOldPreferences(Ljava/util/Set;)V
    .locals 4

    .line 121
    sget-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 128
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static saveConfigValueToPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 182
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 183
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 184
    :cond_0
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 185
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 186
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 188
    :cond_2
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 190
    check-cast p2, Ljava/util/Set;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 191
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 192
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    return-void
.end method

.method private static saveToPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    sget-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    invoke-static {p1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->parseConfigValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 149
    invoke-static {v0, p0, p1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->saveConfigValueToPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static searchMessages(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$MessagesFilter;Lorg/telegram/messenger/Utilities$Callback2;I)V
    .locals 8

    .line 235
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    .line 237
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 238
    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const-wide v1, -0x84c3e8bbL

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 239
    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    const/4 p1, 0x0

    .line 240
    iput p1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 241
    iput p0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 242
    iput-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 244
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v5, v2

    .line 245
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 246
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 248
    new-instance v1, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda1;

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/Utilities$Callback2;)V

    move-object p1, v4

    .line 260
    new-instance p2, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda2;

    move-object v6, p0

    move v7, p4

    move-object v4, v2

    move-object v2, v5

    move-object v5, v1

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/AccountInstance;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;I)V

    move-object p0, v1

    move-object v1, v5

    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 268
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide p2, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    const-wide/16 v2, 0x0

    cmp-long p0, p2, v2

    if-eqz p0, :cond_0

    .line 269
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    int-to-long p1, v7

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p0

    new-instance p2, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, v1, v6, v7}, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;I)V

    const-string p1, "XS6GEcz5ZXMu82UvXQc"

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->resolveChannel(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static searchMessages(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessagesFilter;Lorg/telegram/messenger/Utilities$Callback2;I)V
    .locals 1

    const/16 v0, 0x32

    .line 227
    invoke-static {v0, p0, p1, p2, p3}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->searchMessages(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$MessagesFilter;Lorg/telegram/messenger/Utilities$Callback2;I)V

    return-void
.end method

.method private static updateValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 132
    sget-object v0, Lcom/exteragram/messenger/utils/network/RemoteUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-static {p1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->parseConfigValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->areValuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {p0, p1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->saveToPreferences(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
