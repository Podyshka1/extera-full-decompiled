.class public Lorg/telegram/tgnet/TLRPC$TL_inputReplyToStory_layer173;
.super Lorg/telegram/tgnet/TLRPC$TL_inputReplyToStory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputReplyToStory_layer173"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToStory;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->story_id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 4

    const v0, 0x15b0f283

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->story_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
