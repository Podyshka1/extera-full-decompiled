.class Lorg/telegram/ui/bots/BotShareSheet$5;
.super Lorg/telegram/ui/DialogsActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotShareSheet;-><init>(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_preparedInlineMessage;Ljava/io/File;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotShareSheet;

.field final synthetic val$whenDone:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotShareSheet;Landroid/os/Bundle;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/telegram/ui/bots/BotShareSheet$5;->this$0:Lorg/telegram/ui/bots/BotShareSheet;

    iput-object p3, p0, Lorg/telegram/ui/bots/BotShareSheet$5;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-direct {p0, p2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public clickSelectsDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 221
    invoke-super {p0}, Lorg/telegram/ui/DialogsActivity;->onFragmentDestroy()V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/bots/BotShareSheet$5;->this$0:Lorg/telegram/ui/bots/BotShareSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotShareSheet;->-$$Nest$fgetsent(Lorg/telegram/ui/bots/BotShareSheet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/bots/BotShareSheet$5;->this$0:Lorg/telegram/ui/bots/BotShareSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotShareSheet;->-$$Nest$fputsent(Lorg/telegram/ui/bots/BotShareSheet;Z)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/bots/BotShareSheet$5;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    .line 225
    const-string v1, "USER_DECLINED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
