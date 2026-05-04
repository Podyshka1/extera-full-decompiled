.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda174;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda174;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda174;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda174;->f$2:Lorg/telegram/tgnet/TLRPC$Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda174;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda174;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda174;->f$2:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$qNoshD-4G31yW_aasYYAtzm1kn0(Lorg/telegram/messenger/MessagesStorage;ILorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method
