.class public Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateChannelReadMessagesContents"
.end annotation


# instance fields
.field public channel_id:J

.field public flags:I

.field public messages:Ljava/util/ArrayList;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33919
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 33926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->messages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 33929
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->flags:I

    .line 33930
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->channel_id:J

    .line 33931
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 33932
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->top_msg_id:I

    .line 33934
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 33935
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 33937
    :cond_1
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->messages:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x25f324f7

    .line 33941
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33942
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33943
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 33944
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 33945
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33947
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 33948
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 33950
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelReadMessagesContents;->messages:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
