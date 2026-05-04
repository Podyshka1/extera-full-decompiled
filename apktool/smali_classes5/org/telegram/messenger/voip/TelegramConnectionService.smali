.class public Lorg/telegram/messenger/voip/TelegramConnectionService;
.super Landroid/telecom/ConnectionService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 23
    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    .line 24
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "ConnectionService created"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 3

    .line 39
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 40
    const-string p1, "onCreateIncomingConnection "

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 43
    const-string p2, "call_type"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 44
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 48
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v2

    .line 51
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getConnectionAndStartCall()Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    move-result-object p1

    return-object p1

    .line 52
    :cond_3
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    return-object v2
.end method

.method public onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    .line 63
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 64
    const-string p1, "onCreateIncomingConnectionFailed "

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailedFromConnectionService()V

    :cond_1
    return-void
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 3

    .line 83
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 84
    const-string p1, "onCreateOutgoingConnection "

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 86
    const-string p2, "call_type"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 87
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 91
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getConnectionAndStartCall()Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    move-result-object p1

    return-object p1

    .line 92
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    return-object v2
.end method

.method public onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    .line 73
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 74
    const-string p1, "onCreateOutgoingConnectionFailed "

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailedFromConnectionService()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/telecom/ConnectionService;->onDestroy()V

    .line 32
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "ConnectionService destroyed"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
