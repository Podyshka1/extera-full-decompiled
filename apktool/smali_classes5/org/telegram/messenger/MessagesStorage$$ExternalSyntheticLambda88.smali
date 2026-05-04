.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda88;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda88;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda88;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda88;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda88;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda88;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$sL9SY4IA2IdTUOCh7PqbKVx8s9U(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method
