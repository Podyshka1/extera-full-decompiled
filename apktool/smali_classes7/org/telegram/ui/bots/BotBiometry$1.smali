.class Lorg/telegram/ui/bots/BotBiometry$1;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotBiometry;->initPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotBiometry;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotBiometry;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry$1;->this$0:Lorg/telegram/ui/bots/BotBiometry;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BotBiometry onAuthenticationError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/bots/BotBiometry$1;->this$0:Lorg/telegram/ui/bots/BotBiometry;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotBiometry;->-$$Nest$fgetcallback(Lorg/telegram/ui/bots/BotBiometry;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/bots/BotBiometry$1;->this$0:Lorg/telegram/ui/bots/BotBiometry;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotBiometry;->-$$Nest$fgetcallback(Lorg/telegram/ui/bots/BotBiometry;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object p1

    .line 213
    iget-object p2, p0, Lorg/telegram/ui/bots/BotBiometry$1;->this$0:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/bots/BotBiometry;->-$$Nest$fputcallback(Lorg/telegram/ui/bots/BotBiometry;Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 214
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    .line 230
    const-string v0, "BotBiometry onAuthenticationFailed"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 3

    .line 220
    const-string v0, "BotBiometry onAuthenticationSucceeded"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry$1;->this$0:Lorg/telegram/ui/bots/BotBiometry;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotBiometry;->-$$Nest$fgetcallback(Lorg/telegram/ui/bots/BotBiometry;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry$1;->this$0:Lorg/telegram/ui/bots/BotBiometry;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotBiometry;->-$$Nest$fgetcallback(Lorg/telegram/ui/bots/BotBiometry;)Lorg/telegram/messenger/Utilities$Callback2;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry$1;->this$0:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/bots/BotBiometry;->-$$Nest$fputcallback(Lorg/telegram/ui/bots/BotBiometry;Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 224
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
