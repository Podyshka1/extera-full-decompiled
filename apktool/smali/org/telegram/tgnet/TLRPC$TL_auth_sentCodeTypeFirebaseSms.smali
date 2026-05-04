.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFirebaseSms;
.super Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_sentCodeTypeFirebaseSms"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6314
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 6318
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6320
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->nonce:[B

    .line 6322
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 6323
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->play_integrity_project_id:J

    .line 6324
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->play_integrity_nonce:[B

    .line 6326
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6327
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->receipt:Ljava/lang/String;

    .line 6329
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 6330
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->push_timeout:I

    .line 6332
    :cond_3
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x9fd736

    .line 6336
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6337
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6338
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6339
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->nonce:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 6341
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 6342
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->play_integrity_project_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6343
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->play_integrity_nonce:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 6345
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6346
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->receipt:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 6348
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 6349
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->push_timeout:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6351
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
