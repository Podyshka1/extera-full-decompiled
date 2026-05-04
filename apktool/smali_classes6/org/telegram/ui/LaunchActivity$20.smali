.class Lorg/telegram/ui/LaunchActivity$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    .line 8197
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$20;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 8200
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$20;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fgetlockRunnable(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_3

    const/4 v0, 0x1

    .line 8201
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8202
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 8203
    const-string v0, "lock app"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 8205
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$20;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 8207
    :try_start_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->showNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8209
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8212
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 8213
    const-string v0, "didn\'t pass lock check"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 8216
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$20;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->-$$Nest$fputlockRunnable(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
