.class public Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer127;
.super Lorg/telegram/tgnet/TLRPC$TL_videoSize;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_videoSize_layer127"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19441
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 19445
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    .line 19446
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    .line 19447
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$FileLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 19448
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    .line 19449
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    .line 19450
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    .line 19451
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19452
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->video_start_ts:D

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x17ce3aaa

    .line 19457
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19458
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19459
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 19460
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 19461
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19462
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19463
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19464
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19465
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->video_start_ts:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    :cond_0
    return-void
.end method
