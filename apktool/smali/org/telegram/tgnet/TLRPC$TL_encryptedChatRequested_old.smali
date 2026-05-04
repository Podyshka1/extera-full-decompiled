.class public Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested_old;
.super Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_encryptedChatRequested_old"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36727
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 36731
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    .line 36732
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    .line 36733
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->date:I

    .line 36734
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    .line 36735
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    .line 36736
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    .line 36737
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->nonce:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2565849

    .line 36741
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36742
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36743
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 36744
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36745
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36746
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36747
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 36748
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->nonce:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
