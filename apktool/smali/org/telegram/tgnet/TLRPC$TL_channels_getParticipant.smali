.class public Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_getParticipant"
.end annotation


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public participant:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60412
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60412
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;
    .locals 0

    .line 60420
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5f54933a

    .line 60424
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60425
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60426
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
