.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$SendMessageAction;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JILorg/telegram/tgnet/TLRPC$SendMessageAction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$2:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$3:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$2:I

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda295;->f$3:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$9hL1emJxxVVEyiIEzjsl_X5oFKk(Lorg/telegram/messenger/MessagesController;JILorg/telegram/tgnet/TLRPC$SendMessageAction;)V

    return-void
.end method
