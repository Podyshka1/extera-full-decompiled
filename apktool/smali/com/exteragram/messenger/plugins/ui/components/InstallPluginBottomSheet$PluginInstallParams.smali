.class public Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginInstallParams"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public trusted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    .line 529
    iput-boolean p2, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->trusted:Z

    return-void
.end method

.method public static of(Lorg/telegram/messenger/MessageObject;)Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;
    .locals 6

    .line 533
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getForwardedFromId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 539
    sget-object v1, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/exteragram/messenger/badges/BadgesController;->isTrusted(J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 540
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/exteragram/messenger/badges/BadgesController;->isExtera(J)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isFromChat()Z

    move-result v1

    if-nez v1, :cond_3

    .line 543
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    neg-long v4, v4

    .line 544
    sget-object p0, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {p0, v4, v5}, Lcom/exteragram/messenger/badges/BadgesController;->isTrusted(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 545
    invoke-virtual {p0, v4, v5}, Lcom/exteragram/messenger/badges/BadgesController;->isExtera(J)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    move v3, v2

    .line 548
    :cond_3
    new-instance p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;

    invoke-direct {p0, v0, v3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method
