.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    .line 25
    iput-object p2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private final deflate(Z)V
    .locals 7

    .line 62
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 72
    :try_start_0
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    rsub-int v5, v4, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 74
    :cond_1
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->limit:I

    rsub-int v5, v4, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-lez v2, :cond_2

    .line 81
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->limit:I

    .line 82
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 83
    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    goto :goto_0

    .line 84
    :cond_2
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget p1, v1, Lokio/Segment;->pos:I

    iget v2, v1, Lokio/Segment;->limit:I

    if-ne p1, v2, :cond_3

    .line 87
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 88
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_3
    return-void

    .line 77
    :goto_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Deflater already closed"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lokio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokio/DeflaterSink;->finishDeflate$okio()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 120
    :goto_0
    :try_start_1
    iget-object v1, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 126
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lokio/DeflaterSink;->closed:Z

    if-nez v0, :cond_3

    :goto_3
    return-void

    .line 133
    :cond_3
    throw v0
.end method

.method public final finishDeflate$okio()V
    .locals 1

    .line 102
    iget-object v0, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lokio/DeflaterSink;->deflate(Z)V

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, v0}, Lokio/DeflaterSink;->deflate(Z)V

    .line 98
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 136
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 38
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 85
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 40
    iget-object v3, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v0, Lokio/Segment;->data:[B

    iget v5, v0, Lokio/Segment;->pos:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 43
    invoke-direct {p0, v1}, Lokio/DeflaterSink;->deflate(Z)V

    .line 46
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->setSize$okio(J)V

    .line 47
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/Segment;->pos:I

    .line 48
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 49
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 50
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_0
    sub-long/2addr p2, v5

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-static {}, Lokio/internal/_ZlibJvmKt;->getEMPTY_BYTE_ARRAY()[B

    move-result-object p2

    invoke-virtual {p1, p2, v1, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    return-void
.end method
