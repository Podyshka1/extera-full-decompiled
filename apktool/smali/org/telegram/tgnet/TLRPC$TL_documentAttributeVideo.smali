.class public Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
.super Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_documentAttributeVideo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1572
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1576
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1577
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1578
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    move v2, v3

    .line 1579
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->nosound:Z

    .line 1580
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 1581
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 1582
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 1583
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1584
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->preload_prefix_size:I

    .line 1586
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1587
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_start_ts:D

    .line 1589
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1590
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_codec:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x43c57c48

    .line 1595
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1596
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->round_message:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 1597
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 1598
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->nosound:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 1599
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1600
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 1601
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1602
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1603
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1604
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->preload_prefix_size:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1606
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1607
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_start_ts:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 1609
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1610
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->video_codec:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
