.class public Lorg/telegram/ui/LoginActivity$LoginActivityQrView;
.super Lcom/exteragram/messenger/components/QrCodeLoginView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityQrView"
.end annotation


# instance fields
.field private applyTokenRunnable:Ljava/lang/Runnable;

.field private exportRequestId:I

.field private exportRequestedAfterCurrent:Z

.field private firstQrToken:Z

.field private importRequestId:I

.field private passwordRequestId:I

.field private qrShowStartTimeMs:J

.field private refreshRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private waitingForEvent:Z


# direct methods
.method public static synthetic $r8$lambda$-chrJrlmsX8RNgA9xknnX2YDLEg(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$handleError$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DD8dYcIp7LdUlltqnCypeO6QXt8(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NmICTkLORctAvgohrxNuJpZF6iY(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UcPDkjabKSoXcHDusH7AiRzc4M4(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VlZr05CLYHzPmbz_mcOByiOn5Po(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wgw8WCSeiSx3tRSKLGCAKtVf0iE(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dWUracvDOGpWfTar08GCjjXvWOQ(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$handleError$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTp8z5K0AirIlRl7fSwbnchZBDI(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$3(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gY1mk8dCrfJDEzU9hLtIjq1upCQ(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDkRW92ZJlU7thV7oh6dudPzENU(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->lambda$exportLoginToken$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 0

    .line 8777
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 8778
    invoke-direct {p0, p2}, Lcom/exteragram/messenger/components/QrCodeLoginView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private cancelPendingRequests()V
    .locals 4

    .line 8828
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 8829
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 8830
    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestId:I

    .line 8832
    :cond_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->importRequestId:I

    if-eqz v0, :cond_1

    .line 8833
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->importRequestId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 8834
    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->importRequestId:I

    .line 8836
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->passwordRequestId:I

    if-eqz v0, :cond_2

    .line 8837
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->passwordRequestId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 8838
    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->passwordRequestId:I

    :cond_2
    return-void
.end method

.method private exportLoginToken(Z)V
    .locals 5

    .line 8847
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->waitingForEvent:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 8851
    :cond_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestId:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 8852
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestedAfterCurrent:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 8855
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestedAfterCurrent:Z

    if-eqz p1, :cond_3

    .line 8858
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onUpdateLoginToken:I

    invoke-virtual {p1, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 8859
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result p1

    .line 8860
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgettestBackend(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 8861
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->switchBackend(Z)V

    .line 8863
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup(Z)V

    .line 8866
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;-><init>()V

    .line 8867
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getExteraAppHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_hash:Ljava/lang/String;

    .line 8868
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->getExteraAppId()I

    move-result v1

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_id:I

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    .line 8870
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    .line 8871
    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8872
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8876
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;)V

    const/16 v2, 0x1b

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestId:I

    :cond_6
    :goto_1
    return-void
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 3

    .line 8961
    const-string v0, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8962
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 8963
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;)V

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->passwordRequestId:I

    return-void

    .line 8984
    :cond_0
    const-string v0, "FLOOD_WAIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8985
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->FloodWait:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8987
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isQrViewActive()Z
    .locals 2

    .line 8843
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->waitingForEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$exportLoginToken$0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8893
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->applyTokenRunnable:Ljava/lang/Runnable;

    .line 8894
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->isQrViewActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8897
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/components/QrCodeLoginView;->setData(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8898
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->firstQrToken:Z

    return-void
.end method

.method private synthetic lambda$exportLoginToken$1()V
    .locals 1

    const/4 v0, 0x0

    .line 8913
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportLoginToken(Z)V

    return-void
.end method

.method private synthetic lambda$exportLoginToken$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 8917
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method private synthetic lambda$exportLoginToken$3(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 8934
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 8935
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monAuthSuccess(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method private synthetic lambda$exportLoginToken$4(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/4 v0, 0x0

    .line 8927
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->importRequestId:I

    .line 8928
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 8932
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    if-eqz p1, :cond_1

    .line 8933
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    .line 8939
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 8940
    invoke-virtual {p0, v1}, Lcom/exteragram/messenger/components/QrCodeLoginView;->clear(Z)V

    .line 8941
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->removeObserver()V

    .line 8942
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8943
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->handleError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$exportLoginToken$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 8926
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$exportLoginToken$6(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 8

    const/4 v0, 0x0

    .line 8877
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestId:I

    .line 8878
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestedAfterCurrent:Z

    .line 8879
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestedAfterCurrent:Z

    .line 8880
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->isQrViewActive()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_7

    .line 8884
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;

    if-eqz p1, :cond_5

    .line 8885
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;

    .line 8886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tg://login?token="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;->token:[B

    const/16 v4, 0xb

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8887
    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->firstQrToken:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    .line 8888
    invoke-virtual {p0, v2}, Lcom/exteragram/messenger/components/QrCodeLoginView;->clear(Z)V

    .line 8889
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->applyTokenRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 8890
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8892
    :cond_1
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->applyTokenRunnable:Ljava/lang/Runnable;

    .line 8900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->qrShowStartTimeMs:J

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v6, 0x17c

    sub-long/2addr v6, v2

    .line 8901
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 8902
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->applyTokenRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 8904
    :cond_2
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/components/QrCodeLoginView;->setData(Ljava/lang/String;)V

    .line 8906
    :goto_0
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;->expires:I

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    cmp-long v2, p1, v4

    if-gez v2, :cond_3

    const-wide/16 p1, 0x14

    .line 8910
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->refreshRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 8911
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8913
    :cond_4
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;)V

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->refreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    mul-long/2addr p1, v3

    .line 8914
    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 8915
    :cond_5
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    if-eqz p1, :cond_6

    .line 8916
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->removeObserver()V

    .line 8917
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 8918
    :cond_6
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;

    if-eqz p1, :cond_9

    .line 8919
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->removeObserver()V

    .line 8920
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v2, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 8921
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;

    .line 8923
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->dc_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setDefaultDatacenterId(I)V

    .line 8924
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;-><init>()V

    .line 8925
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->token:[B

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;->token:[B

    .line 8926
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;)V

    const/16 v3, 0x1b

    invoke-virtual {p2, p1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->importRequestId:I

    goto :goto_2

    .line 8948
    :cond_7
    invoke-virtual {p0, v2}, Lcom/exteragram/messenger/components/QrCodeLoginView;->clear(Z)V

    .line 8949
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->removeObserver()V

    .line 8950
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    goto :goto_1

    :cond_8
    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 8951
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->handleError(Ljava/lang/String;)V

    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    .line 8954
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->isQrViewActive()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestId:I

    if-nez p1, :cond_a

    .line 8955
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportLoginToken(Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method private synthetic lambda$exportLoginToken$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 8876
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleError$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    const/4 v0, 0x0

    .line 8964
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->passwordRequestId:I

    .line 8965
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$fgetcurrentViewNum(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    if-eq v1, v3, :cond_0

    return-void

    .line 8968
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mshowDoneButton(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_2

    .line 8970
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 8971
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8972
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 8975
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8976
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v4

    invoke-direct {v1, v4}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 8977
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 8978
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "password"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8979
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2, v3, v2, p1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void

    .line 8981
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$mneedShowAlert(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleError$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 8963
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityQrView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeObserver()V
    .locals 2

    const/4 v0, 0x0

    .line 8814
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->waitingForEvent:Z

    .line 8815
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportRequestedAfterCurrent:Z

    .line 8816
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onUpdateLoginToken:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 8817
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->refreshRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8818
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8819
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->refreshRunnable:Ljava/lang/Runnable;

    .line 8821
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->applyTokenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 8822
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8823
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->applyTokenRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 8993
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onUpdateLoginToken:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 8994
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportLoginToken(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 3

    .line 8783
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return v2
.end method

.method public onDestroyActivity()V
    .locals 0

    .line 8789
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->removeObserver()V

    .line 8790
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->cancelPendingRequests()V

    .line 8791
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    return-void
.end method

.method public onHide()V
    .locals 1

    .line 8806
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->removeObserver()V

    .line 8807
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->cancelPendingRequests()V

    .line 8808
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    const/4 v0, 0x1

    .line 8809
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->firstQrToken:Z

    const/4 v0, 0x0

    .line 8810
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/components/QrCodeLoginView;->clear(Z)V

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 8796
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    const/4 v0, 0x1

    .line 8797
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->waitingForEvent:Z

    .line 8798
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->firstQrToken:Z

    .line 8799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->qrShowStartTimeMs:J

    .line 8800
    invoke-virtual {p0}, Lcom/exteragram/messenger/components/QrCodeLoginView;->clear()V

    .line 8801
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityQrView;->exportLoginToken(Z)V

    return-void
.end method
