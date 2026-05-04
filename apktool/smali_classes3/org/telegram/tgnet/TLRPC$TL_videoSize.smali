.class public Lorg/telegram/tgnet/TLRPC$TL_videoSize;
.super Lorg/telegram/tgnet/TLRPC$VideoSize;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_videoSize"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19470
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$VideoSize;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 19474
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    .line 19475
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    .line 19476
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    .line 19477
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    .line 19478
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    .line 19479
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19480
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->video_start_ts:D

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x21cc4f6c

    .line 19485
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19486
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19487
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 19488
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19489
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19490
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19491
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19492
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->video_start_ts:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    :cond_0
    return-void
.end method
