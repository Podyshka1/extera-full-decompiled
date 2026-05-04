.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$2:Lorg/telegram/tgnet/TLObject;

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$3:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$2:Lorg/telegram/tgnet/TLObject;

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$3:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda74;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$gT0m239a4DH7zsWn5O9ug12jMbE(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ILjava/lang/String;)V

    return-void
.end method
