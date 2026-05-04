.class public final Lokio/RealBufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/BufferedSource;


# instance fields
.field public final bufferField:Lokio/Buffer;

.field public closed:Z

.field public final source:Lokio/Source;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 57
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 463
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 465
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 466
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    :cond_0
    return-void
.end method

.method public exhausted()Z
    .locals 4

    .line 53
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 54
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    .line 54
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 1

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public indexOf(BJJ)J
    .locals 9

    .line 318
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_3

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    move-wide v3, p2

    :goto_0
    cmp-long p2, v3, p4

    const-wide/16 v7, -0x1

    if-gez p2, :cond_2

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move v2, p1

    move-wide v5, p4

    .line 322
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide p1

    cmp-long p3, p1, v7

    if-eqz p3, :cond_0

    return-wide p1

    .line 63
    :cond_0
    iget-object p1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 327
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-gez p3, :cond_2

    .line 328
    iget-object p3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object p4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v0, 0x2000

    .line 328
    invoke-interface {p3, p4, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p3

    cmp-long p3, p3, v7

    if-nez p3, :cond_1

    goto :goto_1

    .line 331
    :cond_1
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move p1, v2

    move-wide p4, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    move-wide v5, p4

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fromIndex="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 318
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lokio/ByteString;JJ)J
    .locals 11

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 131
    invoke-static/range {v1 .. v10}, Lokio/internal/-RealBufferedSource;->commonIndexOf$default(Lokio/RealBufferedSource;Lokio/ByteString;IIJJILjava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 154
    new-instance v0, Lokio/RealBufferedSource$inputStream$1;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 1

    .line 459
    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 141
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    .line 137
    invoke-virtual/range {v1 .. v6}, Lokio/RealBufferedSource;->rangeEquals(JLokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 10

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-gez p5, :cond_0

    return v0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_1

    return v0

    :cond_1
    if-ltz p4, :cond_4

    add-int v3, p4, p5

    .line 446
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    if-nez p5, :cond_3

    return v9

    :cond_3
    const-wide/16 v3, 0x1

    add-long v7, p1, v3

    move-object v1, p0

    move-wide v5, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    .line 449
    invoke-static/range {v1 .. v8}, Lokio/internal/-RealBufferedSource;->commonIndexOf(Lokio/RealBufferedSource;Lokio/ByteString;IIJJ)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    return v9

    :cond_4
    :goto_0
    return v0

    .line 442
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 84
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    .line 85
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 63
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 89
    invoke-virtual {v0, p1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 5

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 40
    iget-boolean v3, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v3, :cond_2

    .line 63
    iget-object v3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 42
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    return-wide v0

    .line 44
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    .line 44
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    .line 63
    :cond_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 48
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 49
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    return-wide p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readAll(Lokio/Sink;)J
    .locals 8

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 162
    :cond_0
    :goto_0
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    .line 162
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 63
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 163
    invoke-virtual {v4}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    .line 63
    iget-object v6, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 166
    invoke-interface {p1, v6, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 169
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 170
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 171
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_2
    return-wide v2
.end method

.method public readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 71
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 72
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 2

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 109
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 110
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 76
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 77
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 1

    .line 81
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 82
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public readDecimalLong()J
    .locals 10

    const-wide/16 v0, 0x1

    .line 263
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    .line 266
    invoke-virtual {p0, v6, v7}, Lokio/RealBufferedSource;->request(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 63
    iget-object v8, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 267
    invoke-virtual {v8, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    if-le v8, v9, :cond_1

    :cond_0
    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    const/16 v5, 0x2d

    if-eq v8, v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    .line 271
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_4
    :goto_2
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 278
    invoke-virtual {v0}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 1

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 157
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    return-void

    :catch_0
    move-exception p2

    .line 63
    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 153
    invoke-virtual {p1, p3}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 154
    throw p2
.end method

.method public readFully([B)V
    .locals 6

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 132
    invoke-virtual {v0, p1}, Lokio/Buffer;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 124
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 63
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 125
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lokio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 129
    :cond_1
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 5

    const-wide/16 v0, 0x1

    .line 282
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    .line 285
    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    int-to-long v3, v0

    .line 286
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    .line 293
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_5
    :goto_2
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 300
    invoke-virtual {v0}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 243
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 244
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 248
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 249
    invoke-virtual {v0}, Lokio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    const-wide/16 v0, 0x8

    .line 253
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 254
    invoke-virtual {v0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .locals 2

    const-wide/16 v0, 0x8

    .line 258
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 259
    invoke-virtual {v0}, Lokio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 233
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 234
    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 238
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 239
    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 99
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 100
    invoke-virtual {v0, p1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1

    .line 182
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 183
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .locals 3

    const-wide/16 v0, 0x1

    .line 220
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x0

    .line 222
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    const-wide/16 v0, 0x2

    .line 224
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    const-wide/16 v0, 0x3

    .line 225
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x4

    .line 226
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 63
    :cond_2
    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 229
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v0

    return v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 109
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    move-wide v11, v0

    goto :goto_0

    :cond_0
    add-long v5, p1, v3

    move-wide v11, v5

    :goto_0
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object v7, p0

    .line 203
    invoke-virtual/range {v7 .. v12}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v2, v5, v8

    if-eqz v2, :cond_1

    .line 63
    iget-object p1, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 204
    invoke-static {p1, v5, v6}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, v11, v0

    if-gez v0, :cond_2

    .line 206
    invoke-virtual {p0, v11, v12}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    sub-long v1, v11, v3

    .line 206
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-long v0, v11, v3

    .line 207
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 207
    invoke-virtual {v0, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 63
    iget-object p1, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 209
    invoke-static {p1, v11, v12}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 211
    :cond_2
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 63
    iget-object v0, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 212
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const/16 v4, 0x20

    int-to-long v4, v4

    .line 88
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    .line 212
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 213
    new-instance v0, Ljava/io/EOFException;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v3, v7, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 214
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    const-string p1, " content="

    .line 214
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v7, p0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "limit < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public request(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 63
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 63
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 64
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 65
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    .line 65
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public require(J)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public select(Lokio/Options;)I
    .locals 5

    const-string/jumbo v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3

    .line 63
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/4 v1, 0x1

    .line 89
    invoke-static {v0, p1, v1}, Lokio/internal/-Buffer;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    .line 100
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    int-to-long v2, p1

    .line 101
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    return v0

    :cond_1
    return v2

    .line 96
    :cond_2
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v3, 0x2000

    .line 96
    invoke-interface {v0, v1, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    return v2

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)V
    .locals 4

    .line 305
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 63
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 307
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 63
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    .line 307
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 308
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 63
    :cond_1
    :goto_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 310
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 63
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 311
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 305
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 469
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
