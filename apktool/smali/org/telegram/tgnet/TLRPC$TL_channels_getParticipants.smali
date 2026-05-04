.class public Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_getParticipants"
.end annotation


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

.field public hash:J

.field public limit:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60388
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60388
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    .locals 0

    .line 60399
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x77ced9d0

    .line 60403
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60404
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60405
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60406
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60407
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60408
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
