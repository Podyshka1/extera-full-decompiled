.class public Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_readReactions"
.end annotation


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59200
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59209
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x613bb06d

    .line 59213
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59214
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59215
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59216
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59217
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59219
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 59220
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
