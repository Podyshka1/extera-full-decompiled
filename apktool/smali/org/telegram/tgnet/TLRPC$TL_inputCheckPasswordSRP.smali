.class public Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;
.super Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputCheckPasswordSRP"
.end annotation


# instance fields
.field public A:[B

.field public M1:[B

.field public srp_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35328
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 35336
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->srp_id:J

    .line 35337
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->A:[B

    .line 35338
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->M1:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2d800f7e

    .line 35342
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35343
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->srp_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 35344
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->A:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 35345
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->M1:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
