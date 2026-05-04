.class public Lorg/telegram/messenger/voip/VoIPService$CallConnection;
.super Landroid/telecom/Connection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 5749
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    const/16 p1, 0x80

    .line 5750
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    const/4 p1, 0x1

    .line 5751
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setAudioModeIsVoip(Z)V

    return-void
.end method


# virtual methods
.method public onAnswer()V
    .locals 1

    .line 5777
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$macceptIncomingCallFromNotification(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 3

    .line 5756
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 5757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionService call audio state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5759
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$fgetstateListeners(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 5760
    invoke-interface {v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 5805
    invoke-super {p0, p1, p2}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5806
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    .line 5807
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConnectionService onCallEvent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 5766
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 5767
    const-string v0, "ConnectionService onDisconnect"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5769
    :cond_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 5770
    invoke-virtual {p0}, Landroid/telecom/Connection;->destroy()V

    .line 5771
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$fputsystemCallConnection(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/VoIPService$CallConnection;)V

    .line 5772
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    return-void
.end method

.method public onReject()V
    .locals 3

    .line 5782
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$fputneedPlayEndSound(Lorg/telegram/messenger/voip/VoIPService;Z)V

    .line 5783
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onShowIncomingCallUi()V
    .locals 1

    .line 5788
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$mstartRinging(Lorg/telegram/messenger/voip/VoIPService;)V

    return-void
.end method

.method public onSilence()V
    .locals 1

    .line 5812
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 5813
    const-string v0, "onSlience"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5815
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 5793
    invoke-super {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 5794
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 5795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionService onStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 5798
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/voip/VoIPService;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->deleteConnectionServiceContact()V

    .line 5799
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->-$$Nest$fputdidDeleteConnectionServiceContact(Lorg/telegram/messenger/voip/VoIPService;Z)V

    :cond_1
    return-void
.end method
