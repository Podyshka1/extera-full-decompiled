.class public Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;
.super Lorg/telegram/tgnet/TLRPC$InputGeoPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputGeoPoint"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9661
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 9665
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    .line 9666
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 9667
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 9668
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9669
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x48222faf

    .line 9674
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9675
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9676
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 9677
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 9678
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9679
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
