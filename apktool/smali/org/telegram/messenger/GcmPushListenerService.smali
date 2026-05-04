.class public Lorg/telegram/messenger/GcmPushListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$yff5x9Kir9GwH0krOiFRPGGXb_U(Ljava/lang/String;)V
    .locals 2

    .line 36
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refreshed FCM token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    const/4 v0, 0x2

    .line 40
    invoke-static {v0, p0}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5

    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getSentTime()J

    move-result-wide v2

    .line 26
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FCM received data: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 30
    :cond_0
    const-string/jumbo p1, "p"

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, p1, v2, v3}, Lorg/telegram/messenger/PushListenerController;->processRemoteMessage(ILjava/lang/String;J)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    .line 35
    new-instance v0, Lorg/telegram/messenger/GcmPushListenerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/GcmPushListenerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
