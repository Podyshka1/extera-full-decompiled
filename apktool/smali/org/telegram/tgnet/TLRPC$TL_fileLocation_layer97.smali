.class public Lorg/telegram/tgnet/TLRPC$TL_fileLocation_layer97;
.super Lorg/telegram/tgnet/TLRPC$FileLocation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_fileLocation_layer97"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47545
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$FileLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 47549
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 47550
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 47551
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 47552
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 47553
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x91d11eb

    .line 47557
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 47558
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 47559
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 47560
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 47561
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 47562
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
