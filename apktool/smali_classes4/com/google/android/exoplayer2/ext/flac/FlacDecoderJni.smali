.class final Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException;
    }
.end annotation


# static fields
.field private static final TEMP_BUFFER_SIZE:I = 0x2000


# instance fields
.field private byteBufferData:Ljava/nio/ByteBuffer;

.field private endOfExtractorInput:Z

.field private extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

.field private final nativeDecoderContext:J

.field private tempBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    const-string v1, "Failed to initialize decoder"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;

    const-string v1, "Failed to load decoder native libraries."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native flacDecodeMetadata(J)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
.end method

.method private native flacDecodeToArray(J[B)I
.end method

.method private native flacDecodeToBuffer(JLjava/nio/ByteBuffer;)I
.end method

.method private native flacFlush(J)V
.end method

.method private native flacGetDecodePosition(J)J
.end method

.method private native flacGetLastFrameFirstSampleIndex(J)J
.end method

.method private native flacGetLastFrameTimestamp(J)J
.end method

.method private native flacGetNextFrameFirstSampleIndex(J)J
.end method

.method private native flacGetSeekPoints(JJ[J)Z
.end method

.method private native flacGetStateString(J)Ljava/lang/String;
.end method

.method private native flacInit()J
.end method

.method private native flacIsDecoderAtEndOfStream(J)Z
.end method

.method private native flacRelease(J)V
.end method

.method private native flacReset(JJ)V
.end method

.method private readFromExtractorInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I
    .locals 0

    .line 268
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->endOfExtractorInput:Z

    const/4 p1, 0x0

    :cond_0
    return p1
.end method


# virtual methods
.method public clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 104
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    return-void
.end method

.method public decodeSample(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacDecodeToBuffer(JLjava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacDecodeToArray(J[B)I

    move-result v0

    :goto_0
    if-gez v0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->isDecoderAtEndOfInput()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 189
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException;

    const-string v1, "Cannot decode FLAC frame"

    invoke-direct {p1, v1, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 194
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    .locals 2

    .line 167
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeSample(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 170
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p2, p3, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    .line 175
    :cond_0
    throw p1
.end method

.method public decodeStreamMetadata()Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacDecodeMetadata(J)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 151
    :cond_0
    const-string v0, "Failed to decode stream metadata"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public flush()V
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacFlush(J)V

    return-void
.end method

.method public getDecodePosition()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacGetDecodePosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFrameFirstSampleIndex()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacGetLastFrameFirstSampleIndex(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacGetLastFrameTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextFrameFirstSampleIndex()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacGetNextFrameFirstSampleIndex(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 7

    const/4 v0, 0x4

    .line 228
    new-array v6, v0, [J

    .line 229
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacGetSeekPoints(JJ[J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 232
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    const/4 p2, 0x0

    aget-wide v0, v6, p2

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    const/4 v0, 0x2

    .line 234
    aget-wide v1, v6, v0

    aget-wide v3, v6, p2

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    move-object p2, p1

    goto :goto_0

    .line 236
    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    aget-wide v0, v6, v0

    const/4 v2, 0x3

    aget-wide v2, v6, v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 237
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0
.end method

.method public getStateString()Ljava/lang/String;
    .locals 2

    .line 241
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacGetStateString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDecoderAtEndOfInput()Z
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacIsDecoderAtEndOfStream(J)Z

    move-result v0

    return v0
.end method

.method public isEndOfData()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz v0, :cond_2

    .line 95
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->endOfExtractorInput:Z

    return v0

    :cond_2
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 119
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 124
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    if-eqz v1, :cond_2

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->tempBuffer:[B

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/16 v3, 0x2000

    .line 129
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->readFromExtractorInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    sub-int/2addr v0, v4

    .line 136
    invoke-direct {p0, v1, v2, v4, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->readFromExtractorInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)I

    move-result v0

    add-int/2addr v4, v0

    .line 140
    :cond_1
    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return v4

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacRelease(J)V

    return-void
.end method

.method public reset(J)V
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->nativeDecoderContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->flacReset(JJ)V

    return-void
.end method

.method public setData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->endOfExtractorInput:Z

    .line 83
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->tempBuffer:[B

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    .line 84
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->tempBuffer:[B

    :cond_0
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->byteBufferData:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->extractorInput:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    return-void
.end method
