.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda179;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda179;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda179;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda179;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda179;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$ib43x0Z1qyceNyKJptK1d3slSEo(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void
.end method
