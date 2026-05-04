.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$2:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$2:I

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda56;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$7-kbrLSoTKAJFSrp4hEkFO-x9v8(Lorg/telegram/messenger/MessagesStorage;III)V

    return-void
.end method
