.class public Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateReadChannelDiscussionOutbox"
.end annotation


# instance fields
.field public channel_id:J

.field public read_max_id:I

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33478
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 33486
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;->channel_id:J

    .line 33487
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;->top_msg_id:I

    .line 33488
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;->read_max_id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x695c9e7c

    .line 33492
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33493
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;->channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 33494
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33495
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionOutbox;->read_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
