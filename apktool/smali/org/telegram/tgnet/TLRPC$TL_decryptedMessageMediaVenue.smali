.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaVenue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40717
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 40721
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 40722
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 40723
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 40724
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 40725
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 40726
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x75f20a91

    .line 40730
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40731
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 40732
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 40733
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 40734
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 40735
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 40736
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
