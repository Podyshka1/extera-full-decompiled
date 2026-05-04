.class Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/PaintTypeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameRecord"
.end annotation


# instance fields
.field final encodingID:I

.field final languageID:I

.field final nameID:I

.field final nameLength:I

.field final platformID:I

.field final stringOffset:I


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->platformID:I

    .line 269
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->encodingID:I

    .line 270
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->languageID:I

    .line 271
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->nameID:I

    .line 272
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->nameLength:I

    .line 273
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->stringOffset:I

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 2

    .line 277
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->stringOffset:I

    add-int/2addr p2, v0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 278
    iget p2, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->nameLength:I

    new-array p2, p2, [B

    .line 279
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 281
    iget p1, p0, Lorg/telegram/ui/Components/Paint/PaintTypeface$NameRecord;->encodingID:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 282
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 284
    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 286
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
