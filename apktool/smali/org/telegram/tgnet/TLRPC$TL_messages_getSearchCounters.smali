.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getSearchCounters"
.end annotation


# instance fields
.field public filters:Ljava/util/ArrayList;

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58829
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 58836
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->filters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 58839
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/tgnet/Vector;->TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x1bbcf300

    .line 58843
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58844
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58845
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 58846
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 58847
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 58849
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 58850
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58852
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchCounters;->filters:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
