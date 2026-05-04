.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatParticipantsForbidden_layer131"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40215
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantsForbidden;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 40219
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    .line 40220
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:J

    .line 40221
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 40222
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x36ff3d5

    .line 40227
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40228
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40229
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->chat_id:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40230
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 40231
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->self_participant:Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_0
    return-void
.end method
