.class public Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;
.super Lorg/telegram/tgnet/TLRPC$messages_DhConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_dhConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9243
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 9247
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    .line 9248
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    .line 9249
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    .line 9250
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x2c221edd

    .line 9254
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9255
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9256
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 9257
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9258
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
