.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelParticipantsMentions"
.end annotation


# instance fields
.field public flags:I

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25345
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 25352
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 25354
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 25356
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 25357
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;->top_msg_id:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x1fb4a315

    .line 25362
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 25363
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 25364
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 25365
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 25367
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 25368
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsMentions;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
