.class public final synthetic Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/bots/BotBiometry;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/bots/BotBiometry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/bots/BotBiometry;

    iput-object p2, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/bots/BotBiometry;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/bots/BotBiometry;->$r8$lambda$x2CojiN8JPhNZTvoxcZMeuh7u8U(Lorg/telegram/ui/bots/BotBiometry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
