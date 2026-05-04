.class public Lorg/telegram/tgnet/TLRPC$TL_videoSize_layer115;
.super Lorg/telegram/tgnet/TLRPC$TL_videoSize;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_videoSize_layer115"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19420
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_videoSize;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 19424
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    .line 19425
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$FileLocation;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 19426
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    .line 19427
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    .line 19428
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x435bb987

    .line 19432
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19433
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 19434
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 19435
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19436
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 19437
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
