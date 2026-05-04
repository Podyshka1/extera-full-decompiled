.class public Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
.super Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_documentAttributeAudio"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1787
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1791
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1792
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 1793
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 1794
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1795
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 1797
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1798
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 1800
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1801
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x67ad063a

    .line 1806
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1807
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit16 v0, v0, -0x401

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 1808
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1809
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    double-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1810
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1811
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1813
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1814
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1816
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1817
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    :cond_3
    return-void
.end method
