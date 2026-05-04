.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getReplies"
.end annotation


# instance fields
.field public add_offset:I

.field public hash:J

.field public limit:I

.field public max_id:I

.field public min_id:I

.field public msg_id:I

.field public offset_date:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59522
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59536
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x22ddd30c

    .line 59540
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59541
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59542
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59543
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->offset_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59544
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->offset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59545
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->add_offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59546
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59547
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59548
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->min_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59549
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
