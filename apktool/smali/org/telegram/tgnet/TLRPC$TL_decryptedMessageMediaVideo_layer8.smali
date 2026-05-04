.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;
.super Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageMediaVideo_layer8"
.end annotation


# instance fields
.field public thumb:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40686
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 40692
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    .line 40693
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 40694
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 40695
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 40696
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 40697
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 40698
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    .line 40699
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 40700
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4cee6ef3    # 1.2500777E8f

    .line 40704
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40705
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 40706
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40707
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40708
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40709
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40710
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40711
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40712
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 40713
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
