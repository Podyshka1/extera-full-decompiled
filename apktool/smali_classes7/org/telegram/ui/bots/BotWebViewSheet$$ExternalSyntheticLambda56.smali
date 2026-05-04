.class public final synthetic Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda56;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda56;->f$0:Ljava/lang/String;

    check-cast p1, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-static {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->$r8$lambda$5BrJMhKYBHcszFWfcD0qwzjvU_k(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method
