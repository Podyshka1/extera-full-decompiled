.class final Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacTimestampSeeker"
.end annotation


# instance fields
.field private final decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

.field private final outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    .line 100
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSeekFinished()V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker$-CC;->$default$onSeekFinished(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;)V

    return-void
.end method

.method public searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 9

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 107
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 108
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object p1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getLastFrameFirstSampleIndex()J

    move-result-wide v3

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getNextFrameFirstSampleIndex()J

    move-result-wide v5

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getDecodePosition()J

    move-result-wide v7

    cmp-long v0, v3, p2

    if-gtz v0, :cond_1

    cmp-long v0, v5, p2

    if-lez v0, :cond_1

    .line 130
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getLastFrameTimestamp()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->timeUs:J

    .line 133
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long p1, v5, p2

    if-gtz p1, :cond_2

    .line 135
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    .line 138
    :cond_2
    invoke-static {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p1

    return-object p1

    .line 115
    :catch_0
    sget-object p1, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object p1
.end method
