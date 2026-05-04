.class public Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteMultiple;
.super Lorg/telegram/tgnet/TLRPC$MessagePeerVote;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messagePeerVoteMultiple"
.end annotation


# instance fields
.field public options:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32033
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;-><init>()V

    .line 32036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteMultiple;->options:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 32039
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 32040
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    const v1, 0x1cb5c415

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 32043
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string/jumbo p2, "wrong Vector magic, got %x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32047
    :cond_1
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 32049
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteMultiple;->options:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32051
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x4628f6e6

    .line 32055
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32056
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    const v0, 0x1cb5c415

    .line 32057
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32058
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteMultiple;->options:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 32059
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 32061
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messagePeerVoteMultiple;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {p1, v2}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32063
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerVote;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
