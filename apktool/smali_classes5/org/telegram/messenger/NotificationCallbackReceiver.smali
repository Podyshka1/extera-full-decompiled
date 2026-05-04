.class public Lorg/telegram/messenger/NotificationCallbackReceiver;
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
    .locals 5

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

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v0, "did"

    const-wide/32 v1, 0xbdb28

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 28
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 29
    const-string v3, "mid"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 30
    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendNotificationCallback(JI[B)V

    return-void
.end method
