.class public Lorg/telegram/tgnet/TLRPC$TL_fileLocation_layer82;
.super Lorg/telegram/tgnet/TLRPC$TL_fileLocation_layer97;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_fileLocation_layer82"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47526
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocation_layer97;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 47530
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 47531
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 47532
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 47533
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x53d69076

    .line 47537
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 47538
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 47539
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 47540
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 47541
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
