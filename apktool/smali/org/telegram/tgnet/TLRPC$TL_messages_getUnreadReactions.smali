.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getUnreadReactions"
.end annotation


# instance fields
.field public add_offset:I

.field public flags:I

.field public limit:I

.field public max_id:I

.field public min_id:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59165
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59179
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x42806f54

    .line 59183
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59184
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59185
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59186
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59187
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59189
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 59190
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59192
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->offset_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59193
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->add_offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59194
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59195
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59196
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->min_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
