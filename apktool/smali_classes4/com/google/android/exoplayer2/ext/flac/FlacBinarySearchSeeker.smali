.class final Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
.super Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;,
        Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;
    }
.end annotation


# static fields
.field private static final MIN_FRAME_HEADER_SIZE:I = 0x6


# instance fields
.field private final decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;JJLcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)V
    .locals 16

    move-object/from16 v0, p1

    .line 72
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V

    new-instance v2, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v3, 0x0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker-IA;)V

    .line 74
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 79
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v13

    const/4 v5, 0x6

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 80
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 71
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    .line 81
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    return-void
.end method


# virtual methods
.method protected onSeekOperationFinished(ZJ)V
    .locals 0

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    :cond_0
    return-void
.end method
