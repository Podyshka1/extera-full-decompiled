.class public Lorg/telegram/tgnet/TLRPC$TL_textImage;
.super Lorg/telegram/tgnet/TLRPC$RichText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_textImage"
.end annotation


# instance fields
.field public document_id:J

.field public h:I

.field public photo_id:J

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1876
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RichText;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 1885
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->document_id:J

    .line 1886
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    .line 1887
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x81ccf4f

    .line 1891
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1892
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->document_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 1893
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1894
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
