.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelParticipantSelf"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39310
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 39314
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39315
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->via_invite:Z

    .line 39316
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    .line 39317
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    .line 39318
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 39319
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 39320
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->subscription_until_date:I

    .line 39322
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39323
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x56b875e6

    .line 39328
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 39329
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->via_invite:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    .line 39330
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    .line 39331
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 39332
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 39333
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 39334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 39335
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 39336
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->subscription_until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 39338
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39339
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
