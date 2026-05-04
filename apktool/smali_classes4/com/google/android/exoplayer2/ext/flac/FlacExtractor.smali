.class public final Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$FlacSeekMap;,
        Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x1


# instance fields
.field private binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

.field private decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private final id3MetadataDisabled:Z

.field private final outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

.field private streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

.field private streamMetadataDecoded:Z

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public static synthetic $r8$lambda$8SXk2HIz6sW8ir5VMo2Y3Qc0DQ4()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3MetadataDisabled:Z

    return-void
.end method

.method private decodeStreamMetadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "streamMetadata",
            "outputFrameHolder"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "decoderJni",
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadataDecoded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    .line 201
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeStreamMetadata()Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadataDecoded:Z

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    if-nez v0, :cond_1

    .line 210
    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 212
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    .line 217
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    .line 214
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputSeekMap(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;JLcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    .line 221
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v2, p1, v0}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFormat(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    .line 203
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    .line 204
    invoke-interface {p1, v2, v3, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    .line 205
    throw v0
.end method

.method private handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;Lcom/google/android/exoplayer2/extractor/TrackOutput;)I
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "binarySearchSeeker"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    .line 235
    iget-object p2, p4, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    iget-wide v0, p4, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->timeUs:J

    invoke-static {p3, p2, v0, v1, p5}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;IJLcom/google/android/exoplayer2/extractor/TrackOutput;)V

    :cond_0
    return p1
.end method

.method private initDecoderJni(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "decoderJni",
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    .line 186
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->setData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return-object v0
.end method

.method private static outputFormat(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 2

    .line 273
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "audio/raw"

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDecodedBitrate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDecodedBitrate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getMaxDecodedFrameSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    .line 279
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    .line 280
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 281
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    .line 284
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private static outputSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;IJLcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 8

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 290
    invoke-interface {p4, p0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move v5, p1

    move-wide v2, p2

    move-object v1, p4

    .line 291
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method private static outputSeekMap(Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;JLcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;
    .locals 8

    const-wide/16 v0, 0x0

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 257
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$FlacSeekMap;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor$FlacSeekMap;-><init>(JLcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;)V

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, p2, v4

    if-eqz v2, :cond_2

    .line 258
    iget-wide v4, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getDecodePosition()J

    move-result-wide v2

    .line 260
    new-instance v0, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    move-object v6, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;JJLcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;)V

    .line 263
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_1

    .line 265
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 267
    :goto_1
    invoke-interface {p4, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-object v3
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 113
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 115
    :try_start_0
    new-instance p1, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ext/flac/FlacDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 8

    .line 129
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3MetadataDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->initDecoderJni(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    move-result-object v1

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decodeStreamMetadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;Lcom/google/android/exoplayer2/extractor/TrackOutput;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    return p1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 141
    :try_start_2
    iget-object p1, v2, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputFrameHolder:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getDecodePosition()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :try_start_3
    invoke-virtual {v1, p1, v3, v4}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->decodeSampleWithBacktrackPosition(Ljava/nio/ByteBuffer;J)V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni$FlacFrameDecodeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p2, -0x1

    if-nez p1, :cond_2

    .line 156
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    return p2

    .line 153
    :cond_2
    :try_start_5
    iget-object v0, v2, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->getLastFrameTimestamp()J

    move-result-wide v3

    iget-object v5, v2, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0, p1, v3, v4, v5}, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->outputSample(Lcom/google/android/exoplayer2/util/ParsableByteArray;IJLcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 154
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->isEndOfData()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 156
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    return p2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 146
    :try_start_6
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read frame at position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->clearData()V

    .line 157
    throw p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->release()V

    .line 178
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->streamMetadataDecoded:Z

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->decoderJni:Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ext/flac/FlacDecoderJni;->reset(J)V

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/ext/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_2
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3MetadataDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 124
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
