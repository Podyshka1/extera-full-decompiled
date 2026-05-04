.class public Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateMessageReactions"
.end annotation


# instance fields
.field public flags:I

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public top_msg_id:I

.field public updateUnreadState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34101
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    const/4 v0, 0x1

    .line 34110
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->updateUnreadState:Z

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 34113
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->flags:I

    .line 34114
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 34115
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->msg_id:I

    .line 34116
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34117
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->top_msg_id:I

    .line 34119
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 34120
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 34122
    :cond_1
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageReactions;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x1e297bfa

    .line 34126
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34127
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34128
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34129
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34130
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34131
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34133
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 34134
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34136
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageReactions;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_messageReactions;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
