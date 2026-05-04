.class public Lorg/telegram/messenger/PopupReplyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 23
    const-string p1, "currentAccount"

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 24
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/NotificationsController;->forceShowPopupForReply()V

    return-void
.end method
