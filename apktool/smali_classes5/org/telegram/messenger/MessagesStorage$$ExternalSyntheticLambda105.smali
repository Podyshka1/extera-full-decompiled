.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda105;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda105;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda105;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda105;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda105;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda105;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda105;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$YCjfrZ2pXdzJ2tALFJYHeNWXpDM(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
