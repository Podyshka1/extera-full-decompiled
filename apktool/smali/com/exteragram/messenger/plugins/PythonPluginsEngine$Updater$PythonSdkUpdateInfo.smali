.class public Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;
.super Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PythonSdkUpdateInfo"
.end annotation


# instance fields
.field public appVersion:Ljava/lang/String;

.field public appVersionCode:Ljava/lang/String;

.field public appVersionCodeOperator:Ljava/lang/String;

.field public appVersionOperator:Ljava/lang/String;

.field public available:Z

.field public channel:Ljava/lang/String;

.field public message:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1424
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;-><init>()V

    .line 1425
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->clear()V

    return-void
.end method


# virtual methods
.method public canInstall()Z
    .locals 4

    .line 1442
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionOperator:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isAppVersionCompatible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionCodeOperator:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1443
    invoke-static {v1, v0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isAppVersionCodeCompatible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->channel:Ljava/lang/String;

    const-wide v2, -0x53130dc81c0974dbL    # -2.7753795121684016E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 1444
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isSdkVersionNewer(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1429
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->message:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x0

    .line 1430
    iput-boolean v1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->available:Z

    .line 1431
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->can_not_skip:Z

    .line 1432
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->channel:Ljava/lang/String;

    .line 1433
    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    .line 1434
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersion:Ljava/lang/String;

    .line 1435
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionOperator:Ljava/lang/String;

    .line 1436
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionCode:Ljava/lang/String;

    .line 1437
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->appVersionCodeOperator:Ljava/lang/String;

    .line 1438
    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method
