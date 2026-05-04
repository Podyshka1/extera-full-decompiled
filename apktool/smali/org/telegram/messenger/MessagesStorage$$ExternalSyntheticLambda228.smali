.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:[Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$Chat;JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$1:[Lorg/telegram/tgnet/TLRPC$Chat;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$2:J

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$1:[Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$2:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda228;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$iwl3SP-KnmdBlm2Rf4y0v05041w(Lorg/telegram/messenger/MessagesStorage;[Lorg/telegram/tgnet/TLRPC$Chat;JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
