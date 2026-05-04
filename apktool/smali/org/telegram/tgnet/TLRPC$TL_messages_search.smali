.class public Lorg/telegram/tgnet/TLRPC$TL_messages_search;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_search"
.end annotation


# instance fields
.field public add_offset:I

.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public flags:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public hash:J

.field public limit:I

.field public max_date:I

.field public max_id:I

.field public min_date:I

.field public min_id:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public q:Ljava/lang/String;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public saved_reaction:Ljava/util/ArrayList;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55772
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 55780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->saved_reaction:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55793
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x29ee847a

    .line 55797
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55798
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55799
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 55800
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 55801
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 55802
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 55804
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 55805
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 55807
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 55808
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->saved_reaction:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 55810
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 55811
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55813
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 55814
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55815
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55816
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55817
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55818
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55819
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55820
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55821
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
