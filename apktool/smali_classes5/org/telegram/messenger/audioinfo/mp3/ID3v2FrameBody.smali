.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;
    }
.end annotation


# static fields
.field static final textBuffer:Ljava/lang/ThreadLocal;


# instance fields
.field private final data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

.field private final frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

.field private final input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

.field private final tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;

    invoke-direct {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)V
    .locals 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    int-to-long v4, p4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    .line 58
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-direct {p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    .line 59
    iput-object p5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    .line 60
    iput-object p6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    return-void
.end method

.method private extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_3

    move p5, v1

    move v2, p5

    :goto_0
    if-ge p5, p3, :cond_3

    add-int v3, p2, p5

    .line 88
    aget-byte v4, p1, v3

    if-nez v4, :cond_1

    sget-object v4, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    if-ne p4, v4, :cond_0

    if-nez v2, :cond_0

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 89
    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v3

    if-ne v2, v3, :cond_2

    add-int/2addr p5, v0

    .line 90
    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result p3

    sub-int p3, p5, p3

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 99
    :cond_3
    :goto_1
    :try_start_0
    new-instance p5, Ljava/lang/String;

    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-virtual {p4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p5, p1, p2, p3, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 100
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p2, 0xfeff

    if-ne p1, p2, :cond_4

    .line 101
    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_4
    return-object p5

    .line 105
    :catch_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    return-object v0
.end method

.method public getFrameHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingLength()J
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getRemainingLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    return-object v0
.end method

.method public readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .locals 4

    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 145
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_8:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    return-object v0

    .line 149
    :cond_0
    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16BE:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    return-object v0

    .line 141
    :cond_2
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    return-object v0

    .line 139
    :cond_3
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    return-object v0
.end method

.method public readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;
    .locals 7

    int-to-long v0, p1

    .line 127
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 130
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes(I)[B

    move-result-object v2

    .line 131
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully([BII)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    .line 132
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    move v4, p1

    .line 128
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not read fixed-length string of length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;
    .locals 7

    .line 111
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 112
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes(I)[B

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_3

    .line 115
    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v4

    aput-byte v4, v2, v1

    if-nez v4, :cond_0

    sget-object v4, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    if-ne p2, v4, :cond_1

    if-nez v3, :cond_1

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, p2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 116
    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v4

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 117
    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result p1

    sub-int v4, v1, p1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v5, p2

    goto :goto_3

    :goto_2
    move v3, v0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move-object p2, v5

    goto :goto_0

    .line 123
    :cond_3
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string p2, "Could not read zero-termiated string"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id3v2frame[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " left]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
