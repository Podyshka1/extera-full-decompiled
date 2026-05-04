.class public Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateReadChannelDiscussionInbox"
.end annotation


# instance fields
.field public broadcast_id:J

.field public broadcast_post:I

.field public channel_id:J

.field public flags:I

.field public read_max_id:I

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32955
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 32966
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->flags:I

    .line 32967
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->channel_id:J

    .line 32968
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->top_msg_id:I

    .line 32969
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->read_max_id:I

    .line 32970
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 32971
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->broadcast_id:J

    .line 32973
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 32974
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->broadcast_post:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x294e6aba

    .line 32979
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32980
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32981
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 32982
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32983
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->read_max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32984
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 32985
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->broadcast_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 32987
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 32988
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelDiscussionInbox;->broadcast_post:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
