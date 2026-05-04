.class public Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updatePeerHistoryTTL"
.end annotation


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public ttl_period:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32820
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 32828
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    .line 32829
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 32830
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 32831
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->ttl_period:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x4464465b

    .line 32836
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32837
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32838
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 32839
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 32840
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->ttl_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
