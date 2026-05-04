.class public Lorg/telegram/messenger/ShortcutResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$DPBmsSp-XosyXtfGN7A9HAe_acI(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 11
    const-string p1, "account"

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 12
    const-string v0, "req_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController;->shortcutCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_0

    .line 16
    new-instance p2, Lorg/telegram/messenger/ShortcutResultReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ShortcutResultReceiver$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
