.class public Lorg/telegram/tgnet/TLRPC$TL_geoPoint_layer119;
.super Lorg/telegram/tgnet/TLRPC$TL_geoPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_geoPoint_layer119"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5040
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 5044
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 5045
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 5046
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->access_hash:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x296f104

    .line 5050
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5051
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 5052
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 5053
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
